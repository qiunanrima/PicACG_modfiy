package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.requests.ForgotPasswordBody
import com.picacomic.fregata.objects.requests.ResetPasswordBody
import com.picacomic.fregata.objects.requests.SignInBody
import com.picacomic.fregata.objects.responses.ForgotPasswordResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.PasswordResponse
import com.picacomic.fregata.objects.responses.SignInResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import java.util.Random

data class SecurityQuestionPrompt(
    val picaId: String,
    val questionNumber: Int,
    val questionText: String,
)

class LoginViewModel(application: Application) : AndroidViewModel(application) {
    private val appContext = getApplication<Application>()

    var email by mutableStateOf("")
        private set

    var password by mutableStateOf("")
        private set

    var showResendActivation by mutableStateOf(false)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var navigateToMainEvent by mutableIntStateOf(0)
        private set

    var securityQuestionPrompt by mutableStateOf<SecurityQuestionPrompt?>(null)
        private set

    var securityQuestionEvent by mutableIntStateOf(0)
        private set

    var recoveredPassword by mutableStateOf<String?>(null)
        private set

    var recoveredPasswordEvent by mutableIntStateOf(0)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    var preferDetailedErrorDialog by mutableStateOf(false)
        private set

    private var initialized = false
    private var signInCall: Call<GeneralResponse<SignInResponse>>? = null
    private var forgotPasswordCall: Call<GeneralResponse<ForgotPasswordResponse>>? = null
    private var resetPasswordCall: Call<GeneralResponse<PasswordResponse>>? = null

    fun initialize() {
        if (initialized) return
        initialized = true
        email = e.u(appContext).orEmpty()
        password = e.v(appContext).orEmpty()
        if (!e.z(appContext).isNullOrEmpty()) {
            navigateToMainEvent++
        }
    }

    fun updateEmail(value: String) {
        email = value
    }

    fun updatePassword(value: String) {
        password = value
    }

    fun canSubmitLogin(): Boolean = password.length >= 8

    fun validatePicaId(input: String): Int? {
        return when {
            input.length < 2 -> com.picacomic.fregata.R.string.pica_id_error_message_1
            input.matches(Regex("^[0-9a-z_](\\.?[0-9a-z_]){1,29}$")) -> null
            else -> com.picacomic.fregata.R.string.pica_id_error_message_2
        }
    }

    fun validateEmail(input: String, eager: Boolean = true): Int? {
        return if (input.isNotBlank()) {
            null
        } else if (eager) {
            com.picacomic.fregata.R.string.alert_empty_email
        } else {
            null
        }
    }

    fun submitLogin() {
        if (isLoading) return
        isLoading = true
        signInCall?.cancel()
        signInCall = d(appContext).dO().a(SignInBody(email, password))
        signInCall?.enqueue(object : Callback<GeneralResponse<SignInResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<SignInResponse>>,
                response: Response<GeneralResponse<SignInResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    e.e(appContext, email)
                    e.f(appContext, password)
                    response.body()?.data?.getToken()?.let { token ->
                        e.h(appContext, token)
                    }
                    navigateToMainEvent++
                } else {
                    emitHttpError(
                        code = response.code(),
                        body = safeErrorBody(response),
                        detailed = true,
                    )
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<SignInResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun requestForgotPassword(picaId: String) {
        if (isLoading) return
        isLoading = true
        forgotPasswordCall?.cancel()
        forgotPasswordCall = d(appContext).dO().a(ForgotPasswordBody(picaId))
        forgotPasswordCall?.enqueue(object : Callback<GeneralResponse<ForgotPasswordResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ForgotPasswordResponse>>,
                response: Response<GeneralResponse<ForgotPasswordResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val data = response.body()?.data
                    val pick = Random(System.currentTimeMillis()).nextInt(3)
                    val prompt = when (pick) {
                        1 -> SecurityQuestionPrompt(
                            picaId = picaId,
                            questionNumber = 2,
                            questionText = data?.getQuestion2().orEmpty(),
                        )
                        2 -> SecurityQuestionPrompt(
                            picaId = picaId,
                            questionNumber = 3,
                            questionText = data?.getQuestion3().orEmpty(),
                        )
                        else -> SecurityQuestionPrompt(
                            picaId = picaId,
                            questionNumber = 1,
                            questionText = data?.getQuestion1().orEmpty(),
                        )
                    }
                    securityQuestionPrompt = prompt
                    securityQuestionEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ForgotPasswordResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun submitSecurityAnswer(answer: String) {
        val prompt = securityQuestionPrompt ?: return
        if (answer.isBlank() || isLoading) return

        isLoading = true
        resetPasswordCall?.cancel()
        resetPasswordCall = d(appContext).dO().a(
            ResetPasswordBody(prompt.picaId, prompt.questionNumber, answer),
        )
        resetPasswordCall?.enqueue(object : Callback<GeneralResponse<PasswordResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PasswordResponse>>,
                response: Response<GeneralResponse<PasswordResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val newPassword = response.body()?.data?.getPassword().orEmpty()
                    password = newPassword
                    recoveredPassword = newPassword
                    recoveredPasswordEvent++
                    securityQuestionPrompt = null
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<PasswordResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun dismissSecurityQuestionPrompt() {
        securityQuestionPrompt = null
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    private fun emitHttpError(code: Int, body: String?, detailed: Boolean = false) {
        errorCode = code
        errorBody = body
        preferDetailedErrorDialog = detailed
        errorEvent++
    }

    private fun emitNetworkError() {
        errorCode = null
        errorBody = null
        preferDetailedErrorDialog = false
        errorEvent++
    }

    override fun onCleared() {
        signInCall?.cancel()
        forgotPasswordCall?.cancel()
        resetPasswordCall?.cancel()
        super.onCleared()
    }
}
