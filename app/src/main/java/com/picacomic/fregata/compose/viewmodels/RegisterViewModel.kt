package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.requests.RegisterBody
import com.picacomic.fregata.objects.requests.SignInBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.objects.responses.SignInResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import java.util.Calendar

enum class RegisterValidationError {
    UsernameLength,
    CannotStartWithPica,
    PasswordLength,
    PasswordNotMatch,
    Birthday,
    AgeNotEnough,
}

class RegisterViewModel(application: Application) : AndroidViewModel(application) {
    private val appContext = getApplication<Application>()
    private val today = Calendar.getInstance()

    var username by mutableStateOf("")
        private set
    var email by mutableStateOf("")
        private set
    var password by mutableStateOf("")
        private set
    var passwordConfirm by mutableStateOf("")
        private set
    var question1 by mutableStateOf("")
        private set
    var answer1 by mutableStateOf("")
        private set
    var question2 by mutableStateOf("")
        private set
    var answer2 by mutableStateOf("")
        private set
    var question3 by mutableStateOf("")
        private set
    var answer3 by mutableStateOf("")
        private set

    var birthday by mutableStateOf<String?>(null)
        private set
    var age by mutableIntStateOf(0)
        private set
    var selectedGenderIndex by mutableIntStateOf(0)
        private set
    var genderApiValue by mutableStateOf(com.picacomic.fregata.c.a.uN[0])
        private set

    var selectedYear by mutableIntStateOf(today.get(Calendar.YEAR))
        private set
    var selectedMonth by mutableIntStateOf(today.get(Calendar.MONTH))
        private set
    var selectedDay by mutableIntStateOf(today.get(Calendar.DAY_OF_MONTH))
        private set

    var isLoading by mutableStateOf(false)
        private set
    var loadingTextRes by mutableIntStateOf(R.string.loading_register)
        private set

    var validationError by mutableStateOf<RegisterValidationError?>(null)
        private set
    var validationErrorEvent by mutableIntStateOf(0)
        private set
    var registerSuccessEvent by mutableIntStateOf(0)
        private set
    var navigateToMainEvent by mutableIntStateOf(0)
        private set
    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set
    var signInErrorShouldCloseRegister by mutableStateOf(false)
        private set

    private var registerCall: Call<RegisterResponse>? = null
    private var signInCall: Call<GeneralResponse<SignInResponse>>? = null

    fun setUsername(value: String) {
        username = value
    }

    fun setEmail(value: String) {
        email = value
    }

    fun setPassword(value: String) {
        password = value
    }

    fun setPasswordConfirm(value: String) {
        passwordConfirm = value
    }

    fun setQuestion1(value: String) {
        question1 = value
    }

    fun setAnswer1(value: String) {
        answer1 = value
    }

    fun setQuestion2(value: String) {
        question2 = value
    }

    fun setAnswer2(value: String) {
        answer2 = value
    }

    fun setQuestion3(value: String) {
        question3 = value
    }

    fun setAnswer3(value: String) {
        answer3 = value
    }

    fun aa(index: Int) {
        val safeIndex = index.coerceIn(com.picacomic.fregata.c.a.uN.indices)
        selectedGenderIndex = safeIndex
        genderApiValue = com.picacomic.fregata.c.a.uN[safeIndex]
    }

    fun setBirthday(year: Int, month: Int, day: Int) {
        selectedYear = year
        selectedMonth = month
        selectedDay = day
        val monthText = (month + 1).toString().padStart(2, '0')
        val dayText = day.toString().padStart(2, '0')
        birthday = "$year-$monthText-$dayText"
        age = today.get(Calendar.YEAR) - year
        if (month > today.get(Calendar.MONTH) ||
            (month == today.get(Calendar.MONTH) && day > today.get(Calendar.DAY_OF_MONTH))
        ) {
            age--
        }
    }

    fun birthdayDisplay(prefix: String, suffix: String): String? {
        val value = birthday ?: return null
        return "$prefix$value（$age$suffix）"
    }

    fun dI() {
        if (isLoading) return
        aa(selectedGenderIndex)
        if (username.length < 2 || username.length > 50) {
            emitValidation(RegisterValidationError.UsernameLength)
            return
        }
        if (Regex("^嗶\\s*咔(.*)").matches(username)) {
            emitValidation(RegisterValidationError.CannotStartWithPica)
            return
        }
        if (password.length < 8) {
            emitValidation(RegisterValidationError.PasswordLength)
            return
        }
        if (passwordConfirm != password) {
            emitValidation(RegisterValidationError.PasswordNotMatch)
            return
        }
        if (question1.isEmpty() || question2.isEmpty() || question3.isEmpty() ||
            answer1.isEmpty() || answer2.isEmpty() || answer3.isEmpty()
        ) {
            return
        }
        if (birthday.isNullOrEmpty()) {
            emitValidation(RegisterValidationError.Birthday)
            return
        }
        if (age < 18) {
            emitValidation(RegisterValidationError.AgeNotEnough)
            return
        }
        dJ()
    }

    fun dJ() {
        isLoading = true
        loadingTextRes = R.string.loading_register
        registerCall?.cancel()
        registerCall = d(appContext).dO().a(
            RegisterBody(
                username,
                email,
                password,
                birthday,
                genderApiValue,
                question1,
                question2,
                question3,
                answer1,
                answer2,
                answer3,
            ),
        )
        registerCall?.enqueue(object : Callback<RegisterResponse> {
            override fun onResponse(call: Call<RegisterResponse>, response: Response<RegisterResponse>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    registerSuccessEvent++
                } else {
                    emitHttpError(response.code(), safeErrorBody(response), false)
                }
                isLoading = false
            }

            override fun onFailure(call: Call<RegisterResponse>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError(false)
                isLoading = false
            }
        })
    }

    fun dr() {
        if (isLoading) return
        isLoading = true
        loadingTextRes = R.string.loading_sign_in
        e.e(appContext, email)
        e.f(appContext, password)
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
                    dq()
                } else {
                    emitHttpError(response.code(), safeErrorBody(response), true)
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<SignInResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError(true)
                isLoading = false
            }
        })
    }

    fun dq() {
        navigateToMainEvent++
    }

    private fun emitValidation(error: RegisterValidationError) {
        validationError = error
        validationErrorEvent++
    }

    private fun emitHttpError(code: Int, body: String?, closeRegister: Boolean) {
        errorCode = code
        errorBody = body
        signInErrorShouldCloseRegister = closeRegister
        errorEvent++
    }

    private fun emitNetworkError(closeRegister: Boolean) {
        errorCode = null
        errorBody = null
        signInErrorShouldCloseRegister = closeRegister
        errorEvent++
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    override fun onCleared() {
        registerCall?.cancel()
        signInCall?.cancel()
        super.onCleared()
    }
}
