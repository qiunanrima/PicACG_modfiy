package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.google.gson.Gson
import com.google.gson.JsonSyntaxException
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.PunchInResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ProfileViewModel(application: Application) : AndroidViewModel(application) {
    var userProfile by mutableStateOf<UserProfileObject?>(null)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var isPunchingIn by mutableStateOf(false)
        private set

    var avatarPreviewUri by mutableStateOf<String?>(null)
        private set

    var levelUpEvent by mutableIntStateOf(0)
        private set

    var punchInSuccessEvent by mutableIntStateOf(0)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private val context = getApplication<Application>()
    private val api = d(context).dO()
    private var profileCall: Call<GeneralResponse<UserProfileResponse>>? = null
    private var punchInCall: Call<GeneralResponse<PunchInResponse>>? = null

    fun loadProfile(force: Boolean = false) {
        if (isLoading) return
        if (!force && userProfile != null) return
        if (userProfile == null) {
            loadCachedProfile()
        }

        profileCall?.cancel()
        isLoading = true
        profileCall = api.am(e.z(context))
        profileCall?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>
            ) {
                if (call.isCanceled) return

                if (response.code() == 200) {
                    val fetchedProfile = response.body()?.data?.user
                    if (fetchedProfile != null) {
                        val previousLevel = e.A(context)
                        userProfile = fetchedProfile
                        e.i(context, Gson().toJson(fetchedProfile))
                        if (previousLevel != -1 && previousLevel != fetchedProfile.level) {
                            levelUpEvent++
                        }
                        e.a(context, fetchedProfile.level)
                        avatarPreviewUri = null
                    } else if (userProfile == null) {
                        loadCachedProfile()
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                    if (userProfile == null) {
                        loadCachedProfile()
                    }
                }

                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                if (userProfile == null) {
                    loadCachedProfile()
                }
                isLoading = false
            }
        })
    }

    fun punchIn() {
        if (isPunchingIn) return
        if (userProfile?.isPunched == true) return

        punchInCall?.cancel()
        isPunchingIn = true
        punchInCall = api.an(e.z(context))
        punchInCall?.enqueue(object : Callback<GeneralResponse<PunchInResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PunchInResponse>>,
                response: Response<GeneralResponse<PunchInResponse>>
            ) {
                if (call.isCanceled) return

                if (response.code() == 200 && response.body()?.data != null) {
                    setPunchedInLocally()
                    punchInSuccessEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }

                isPunchingIn = false
            }

            override fun onFailure(call: Call<GeneralResponse<PunchInResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isPunchingIn = false
            }
        })
    }

    fun onAvatarCropped(localUri: String) {
        avatarPreviewUri = localUri
        loadProfile(force = true)
    }

    private fun setPunchedInLocally() {
        val current = userProfile ?: return
        val updated = Gson().fromJson(Gson().toJson(current), UserProfileObject::class.java)
        updated.setPunched(true)
        userProfile = updated
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (e: Exception) {
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

    private fun loadCachedProfile() {
        val cached = e.B(context)
        if (cached.isNullOrBlank()) return
        try {
            val parsed = Gson().fromJson(cached, UserProfileObject::class.java)
            if (parsed != null) {
                userProfile = parsed
            }
        } catch (_: JsonSyntaxException) {
        } catch (_: Exception) {
        }
    }

    override fun onCleared() {
        profileCall?.cancel()
        punchInCall?.cancel()
        super.onCleared()
    }
}
