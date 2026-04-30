package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.requests.UpdateUserTitleBody
import com.picacomic.fregata.objects.requests.UserIdBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.objects.responses.UserProfileDirtyResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ProfilePopupViewModel(application: Application) : AndroidViewModel(application) {
    var userId by mutableStateOf<String?>(null)
        private set
    var jW by mutableStateOf<UserProfileObject?>(null)
        private set
    var adminExpanded by mutableStateOf(false)
        private set
    var confirmDialog by mutableStateOf<ConfirmDialog?>(null)
        private set
    var isLoading by mutableStateOf(false)
        private set

    var titleUserId by mutableStateOf<String?>(null)
        private set
    var rY by mutableStateOf<String?>(null)
        private set
    var newTitle by mutableStateOf("")
        private set

    var messageEvent by mutableIntStateOf(0)
        private set
    var messageRes by mutableStateOf<Int?>(null)
        private set
    var messageText by mutableStateOf<String?>(null)
        private set
    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set
    var dismissEvent by mutableIntStateOf(0)
        private set

    private val appContext = getApplication<Application>()
    private val api = d(appContext).dO()

    var jX: Call<GeneralResponse<UserProfileResponse>>? = null
        private set
    var oo: Call<GeneralResponse<UserProfileDirtyResponse>>? = null
        private set
    var qZ: Call<GeneralResponse<*>>? = null
        private set
    var ra: Call<GeneralResponse<*>>? = null
        private set
    var lg: Call<RegisterResponse>? = null
        private set

    enum class ConfirmDialog {
        Block,
        RemoveComment,
    }

    fun initializeProfile(userId: String?, profile: UserProfileObject?) {
        cancelProfileCalls()
        this.userId = userId
        this.jW = profile
        this.adminExpanded = false
        this.confirmDialog = null
        this.isLoading = false
        if (profile == null && !userId.isNullOrBlank()) {
            cd()
        } else {
            bI()
        }
    }

    fun initializeTitle(userId: String?, title: String?) {
        lg?.cancel()
        titleUserId = userId
        rY = title
        newTitle = ""
        isLoading = false
        bI()
    }

    fun toggleAdminFunction() {
        adminExpanded = !adminExpanded
    }

    fun updateNewTitle(value: String) {
        newTitle = value.take(20)
    }

    fun dismissConfirmDialog() {
        confirmDialog = null
    }

    fun bI() {
        if (jW == null && userId.isNullOrBlank() && titleUserId.isNullOrBlank()) {
            emitMessage(R.string.alert_general_error)
            dismissEvent += 1
        }
    }

    fun dC() {
        confirmDialog = ConfirmDialog.Block
    }

    fun dD() {
        val targetUserId = activeUserId() ?: return
        confirmDialog = null
        ra?.cancel()
        isLoading = true
        ra = api.b(e.z(appContext), UserIdBody(targetUserId)) as Call<GeneralResponse<*>>
        ra?.enqueue(object : Callback<GeneralResponse<*>> {
            override fun onResponse(call: Call<GeneralResponse<*>>, response: Response<GeneralResponse<*>>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    emitMessage(R.string.toast_block_user_success)
                } else {
                    emitMessage(R.string.toast_block_user_failed)
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
                bI()
            }

            override fun onFailure(call: Call<GeneralResponse<*>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                emitMessage(R.string.toast_block_user_failed)
                isLoading = false
                bI()
            }
        })
    }

    fun dE() {
        confirmDialog = ConfirmDialog.RemoveComment
    }

    fun dF() {
        val targetUserId = activeUserId() ?: return
        confirmDialog = null
        qZ?.cancel()
        isLoading = true
        qZ = api.a(e.z(appContext), UserIdBody(targetUserId)) as Call<GeneralResponse<*>>
        qZ?.enqueue(object : Callback<GeneralResponse<*>> {
            override fun onResponse(call: Call<GeneralResponse<*>>, response: Response<GeneralResponse<*>>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    emitMessage(R.string.toast_remove_all_comment_success)
                } else {
                    emitMessage(R.string.toast_remove_all_comment_failed)
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
                bI()
            }

            override fun onFailure(call: Call<GeneralResponse<*>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                emitMessage(R.string.toast_remove_all_comment_failed)
                isLoading = false
                bI()
            }
        })
    }

    fun dG() {
        val targetUserId = activeUserId() ?: return
        oo?.cancel()
        isLoading = true
        oo = api.p(e.z(appContext), targetUserId)
        oo?.enqueue(object : Callback<GeneralResponse<UserProfileDirtyResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileDirtyResponse>>,
                response: Response<GeneralResponse<UserProfileDirtyResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    emitMessage("修改污頭像成功！")
                } else {
                    val body = safeErrorBody(response)
                    f.D("ProfilePopupFragment", "${response.code()}: $body")
                    emitHttpError(response.code(), body)
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileDirtyResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun cd() {
        val targetUserId = userId ?: return
        jX?.cancel()
        isLoading = true
        jX = api.q(e.z(appContext), targetUserId)
        jX?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    jW = response.body()?.data?.user
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
                bI()
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
                bI()
            }
        })
    }

    fun bF() {
        // Compose buttons call aj() or dismiss directly; kept as a migration marker for the old setup method.
    }

    fun aj(title: String) {
        val targetUserId = titleUserId ?: return
        lg?.cancel()
        isLoading = true
        lg = api.a(e.z(appContext), targetUserId, UpdateUserTitleBody(title))
        lg?.enqueue(object : Callback<RegisterResponse> {
            override fun onResponse(call: Call<RegisterResponse>, response: Response<RegisterResponse>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    emitMessage("Update Title Success")
                    dismissEvent += 1
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                    emitMessage("Update Title Failed")
                    dismissEvent += 1
                }
                isLoading = false
            }

            override fun onFailure(call: Call<RegisterResponse>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                emitMessage("Update Title Failed")
                dismissEvent += 1
                isLoading = false
            }
        })
    }

    private fun activeUserId(): String? = userId ?: jW?.userId

    private fun emitMessage(resId: Int) {
        messageRes = resId
        messageText = null
        messageEvent += 1
    }

    private fun emitMessage(text: String) {
        messageText = text
        messageRes = null
        messageEvent += 1
    }

    private fun emitHttpError(code: Int, body: String?) {
        errorCode = code
        errorBody = body
        errorEvent += 1
    }

    private fun emitNetworkError() {
        errorCode = null
        errorBody = null
        errorEvent += 1
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    private fun cancelProfileCalls() {
        jX?.cancel()
        oo?.cancel()
        qZ?.cancel()
        ra?.cancel()
    }

    override fun onCleared() {
        cancelProfileCalls()
        lg?.cancel()
        super.onCleared()
    }
}
