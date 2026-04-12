package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.requests.ChangePasswordBody
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ChangePasswordViewModel(application: Application) : AndroidViewModel(application) {
    var password by mutableStateOf("")
        private set

    var passwordConfirm by mutableStateOf("")
        private set

    var showPassword by mutableStateOf(false)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var successEvent by mutableIntStateOf(0)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private val appContext = getApplication<Application>()
    private var changeCall: Call<RegisterResponse>? = null

    fun updatePassword(value: String) {
        password = value
    }

    fun updatePasswordConfirm(value: String) {
        passwordConfirm = value
    }

    fun updateShowPassword(enabled: Boolean) {
        showPassword = enabled
    }

    fun passwordErrorRes(): Int? {
        return if (password.isNotEmpty() && password.length < 8) R.string.alert_empty_password else null
    }

    fun passwordConfirmErrorRes(): Int? {
        return if (passwordConfirm.isNotEmpty() && password != passwordConfirm) R.string.alert_not_same_password else null
    }

    fun canSubmit(): Boolean {
        return password.length >= 8 && password == passwordConfirm
    }

    fun submit() {
        if (isLoading || !canSubmit()) return

        isLoading = true
        changeCall?.cancel()
        changeCall = d(appContext).dO().a(
            e.z(appContext),
            ChangePasswordBody(e.v(appContext), password)
        )
        changeCall?.enqueue(object : Callback<RegisterResponse> {
            override fun onResponse(call: Call<RegisterResponse>, response: Response<RegisterResponse>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    e.f(appContext, password)
                    successEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<RegisterResponse>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
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
        changeCall?.cancel()
        super.onCleared()
    }
}
