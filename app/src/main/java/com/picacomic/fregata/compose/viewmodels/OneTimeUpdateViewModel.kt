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
import com.picacomic.fregata.objects.requests.UpdatePicaIdBody
import com.picacomic.fregata.objects.requests.UpdateQandABody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class OneTimeUpdateViewModel(application: Application) : AndroidViewModel(application) {
    var question1 by mutableStateOf("")
        private set
    var question2 by mutableStateOf("")
        private set
    var question3 by mutableStateOf("")
        private set
    var answer1 by mutableStateOf("")
        private set
    var answer2 by mutableStateOf("")
        private set
    var answer3 by mutableStateOf("")
        private set

    var picaId by mutableStateOf("")
        private set
    var username by mutableStateOf("")
        private set
    var jW by mutableStateOf<UserProfileObject?>(null)
        private set
    var qo by mutableStateOf(false)
        private set

    var isLoading by mutableStateOf(false)
        private set
    var successQaEvent by mutableIntStateOf(0)
        private set
    var successIdEvent by mutableIntStateOf(0)
        private set
    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set
    var validationEvent by mutableIntStateOf(0)
        private set

    private val appContext = getApplication<Application>()
    private var jX: Call<GeneralResponse<UserProfileResponse>>? = null
    private var qn: Call<GeneralResponse<*>>? = null
    private var qr: Call<GeneralResponse<*>>? = null

    fun updateQuestion1(value: String) {
        question1 = value
    }

    fun updateQuestion2(value: String) {
        question2 = value
    }

    fun updateQuestion3(value: String) {
        question3 = value
    }

    fun updateAnswer1(value: String) {
        answer1 = value
    }

    fun updateAnswer2(value: String) {
        answer2 = value
    }

    fun updateAnswer3(value: String) {
        answer3 = value
    }

    fun updatePicaId(value: String) {
        picaId = value.filter { it in '0'..'9' || it in 'a'..'z' || it == '.' || it == '_' }
            .take(30)
        qo = validatePicaId(picaId)
    }

    fun updateUsername(value: String) {
        username = value.take(500)
    }

    fun picaIdErrorRes(): Int? {
        if (picaId.isEmpty()) return null
        return when {
            picaId.length < 2 -> R.string.pica_id_error_message_1
            validatePicaId(picaId) -> null
            else -> R.string.pica_id_error_message_2
        }
    }

    fun canSubmitQa(): Boolean {
        return question1.isNotBlank() &&
            question2.isNotBlank() &&
            question3.isNotBlank() &&
            answer1.isNotBlank() &&
            answer2.isNotBlank() &&
            answer3.isNotBlank()
    }

    fun canSubmitId(): Boolean {
        return qo && picaId.isNotBlank()
    }

    fun onClickQaUpdate() {
        if (!canSubmitQa()) {
            bI()
            return
        }
        a(question1, question2, question3, answer1, answer2, answer3)
    }

    fun dt() {
        if (!canSubmitId()) return
        m(picaId, username)
    }

    fun cd() {
        if (jX != null || jW != null) return
        isLoading = true
        f.aA("Show Progress")
        jX = d(appContext).dO().am(e.z(appContext))
        jX?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val user = response.body()?.data?.user
                    jW = user
                    if (username.isEmpty()) {
                        username = user?.name.orEmpty()
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                f.aA("dismiss progress")
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                if (call.isCanceled) return
                f.aA("dismiss progress")
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun a(
        str: String,
        str2: String,
        str3: String,
        str4: String,
        str5: String,
        str6: String
    ) {
        isLoading = true
        qr?.cancel()
        qr = d(appContext).dO().a(e.z(appContext), UpdateQandABody(str, str2, str3, str4, str5, str6))
        qr?.enqueue(object : Callback<GeneralResponse<*>> {
            override fun onResponse(call: Call<GeneralResponse<*>>, response: Response<GeneralResponse<*>>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    successQaEvent += 1
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
                bI()
            }

            override fun onFailure(call: Call<GeneralResponse<*>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
                bI()
            }
        })
    }

    fun m(str: String, str2: String) {
        isLoading = true
        f.aA("Show Progress")
        qn?.cancel()
        qn = d(appContext).dO().a(e.z(appContext), UpdatePicaIdBody(str, str2))
        qn?.enqueue(object : Callback<GeneralResponse<*>> {
            override fun onResponse(call: Call<GeneralResponse<*>>, response: Response<GeneralResponse<*>>) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    successIdEvent += 1
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                f.aA("dismiss progress")
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<*>>, t: Throwable) {
                if (call.isCanceled) return
                f.aA("dismiss progress")
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun bI() {
        if (!canSubmitQa()) {
            validationEvent += 1
        }
    }

    private fun validatePicaId(value: String): Boolean {
        return value.matches(Regex("^[0-9a-z_](\\.?[0-9a-z_]){1,29}$"))
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

    override fun onCleared() {
        jX?.cancel()
        qn?.cancel()
        qr?.cancel()
        super.onCleared()
    }
}
