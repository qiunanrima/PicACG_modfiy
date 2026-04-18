package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.NotificationObject
import com.picacomic.fregata.objects.responses.DataClass.NotificationsResponse.NotificationsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class NotificationViewModel(application: Application) : AndroidViewModel(application) {
    var notifications by mutableStateOf<List<NotificationObject>>(emptyList())
        private set

    var isLoading by mutableStateOf(false)
        private set

    var page by mutableIntStateOf(1)
        private set

    var totalPage by mutableIntStateOf(1)
        private set

    var hasMore by mutableStateOf(true)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private var currentCall: Call<GeneralResponse<NotificationsResponse>>? = null

    fun loadData(force: Boolean = false) {
        if (isLoading) return
        if (!force && !hasMore) return

        if (force) {
            currentCall?.cancel()
            notifications = emptyList()
            page = 1
            totalPage = 1
            hasMore = true
        }

        isLoading = true

        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        currentCall = api.d(auth, page)
        currentCall?.enqueue(object : Callback<GeneralResponse<NotificationsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<NotificationsResponse>>,
                response: Response<GeneralResponse<NotificationsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val data = response.body()?.data?.notifications
                    data?.let {
                        val newNotifications = it.docs ?: emptyList()
                        notifications = notifications + newNotifications
                        totalPage = it.pages
                        page++
                        hasMore = page <= totalPage
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<NotificationsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
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

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    override fun onCleared() {
        currentCall?.cancel()
        super.onCleared()
    }
}
