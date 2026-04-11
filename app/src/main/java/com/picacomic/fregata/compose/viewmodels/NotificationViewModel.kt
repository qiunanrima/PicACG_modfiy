package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
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
    var isLoading by mutableStateOf(false)
    
    var page = 1
    var totalPage = 1
    private var isEnd = false

    private var currentCall: Call<GeneralResponse<NotificationsResponse>>? = null

    fun loadData() {
        if (isLoading || isEnd) return
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
                if (response.code() == 200) {
                    val data = response.body()?.data?.notifications
                    data?.let {
                        val newNotifications = it.docs ?: emptyList()
                        notifications = notifications + newNotifications
                        totalPage = it.pages
                        page++
                        if (page > totalPage) isEnd = true
                    }
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<NotificationsResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    override fun onCleared() {
        currentCall?.cancel()
        super.onCleared()
    }
}
