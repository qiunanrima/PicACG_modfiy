package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import android.net.Uri
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.requests.AvatarBody
import com.picacomic.fregata.objects.requests.UpdateProfileBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.PutAvatarResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.g
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ProfileEditViewModel(application: Application) : AndroidViewModel(application) {
    var userProfile by mutableStateOf<UserProfileObject?>(null)
    var isLoading by mutableStateOf(false)
    var isSubmitting by mutableStateOf(false)
    var isUploadingAvatar by mutableStateOf(false)
        private set
    var avatarPreviewUri by mutableStateOf<String?>(null)
        private set

    var avatarUploadSuccessEvent by mutableIntStateOf(0)
        private set

    var updateSuccessEvent by mutableIntStateOf(0)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private var loadedUserId: String? = null
    private val appContext = getApplication<Application>()
    
    private var profileCall: Call<GeneralResponse<UserProfileResponse>>? = null
    private var updateCall: Call<RegisterResponse>? = null
    private var avatarCall: Call<GeneralResponse<PutAvatarResponse>>? = null

    fun loadSelfProfile(force: Boolean = false) {
        loadProfile("__self__", force) {
            profileCall = d(appContext).dO().am(e.z(appContext))
        }
    }

    fun loadProfile(userId: String, force: Boolean = false) {
        loadProfile(userId, force) {
            val api = d(appContext).dO()
            val auth = e.z(appContext)
            profileCall = api.q(auth, userId)
        }
    }

    private fun loadProfile(userId: String, force: Boolean, requestBuilder: () -> Unit) {
        if (!force && loadedUserId == userId && userProfile != null) return

        loadedUserId = userId
        profileCall?.cancel()
        isLoading = true
        requestBuilder.invoke()
        profileCall?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>
            ) {
                if (call.isCanceled) return
                if (loadedUserId != userId) return
                if (response.code() == 200) {
                    userProfile = response.body()?.data?.user
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                if (call.isCanceled) return
                if (loadedUserId != userId) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun onAvatarCropped(localUri: String) {
        avatarPreviewUri = localUri
        uploadAvatar(localUri)
    }

    private fun uploadAvatar(localUri: String) {
        if (isUploadingAvatar) return
        isUploadingAvatar = true
        avatarCall?.cancel()

        val avatarBody = try {
            AvatarBody(
                g.f(
                    g.c(
                        appContext,
                        Uri.parse(localUri),
                        200
                    )
                )
            )
        } catch (_: Exception) {
            isUploadingAvatar = false
            emitNetworkError()
            return
        }

        avatarCall = d(appContext).dO().a(e.z(appContext), avatarBody)
        avatarCall?.enqueue(object : Callback<GeneralResponse<PutAvatarResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PutAvatarResponse>>,
                response: Response<GeneralResponse<PutAvatarResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val avatar = response.body()?.data?.avatar
                    if (avatar != null) {
                        userProfile?.setAvatar(avatar)
                    }
                    avatarUploadSuccessEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isUploadingAvatar = false
            }

            override fun onFailure(call: Call<GeneralResponse<PutAvatarResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isUploadingAvatar = false
            }
        })
    }

    fun updateSlogan(slogan: String) {
        if (isSubmitting) return

        isSubmitting = true
        updateCall?.cancel()
        updateCall = d(appContext).dO().a(e.z(appContext), UpdateProfileBody(slogan))
        updateCall?.enqueue(object : Callback<RegisterResponse> {
            override fun onResponse(call: Call<RegisterResponse>, response: Response<RegisterResponse>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    updateSuccessEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isSubmitting = false
            }

            override fun onFailure(call: Call<RegisterResponse>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isSubmitting = false
            }
        })
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    private fun emitHttpError(code: Int, body: String?) {
        errorCode = code
        errorBody = body
        errorEvent++
    }

    private fun emitNetworkError() {
        errorCode = null
        errorBody = null
        errorEvent++
    }

    override fun onCleared() {
        profileCall?.cancel()
        updateCall?.cancel()
        avatarCall?.cancel()
        super.onCleared()
    }
}
