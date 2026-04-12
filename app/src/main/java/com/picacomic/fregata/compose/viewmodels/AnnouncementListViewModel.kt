package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.AnnouncementObject
import com.picacomic.fregata.objects.responses.DataClass.AnnouncementsResponse.AnnouncementsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class AnnouncementListViewModel(application: Application) : AndroidViewModel(application) {
    var announcements by mutableStateOf<List<AnnouncementObject>>(emptyList())
        private set

    var page by mutableIntStateOf(0)
        private set

    var totalPage by mutableIntStateOf(1)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private val appContext = getApplication<Application>()
    private var announcementsCall: Call<GeneralResponse<AnnouncementsResponse>>? = null

    fun loadMore() {
        if (isLoading || page >= totalPage) return

        isLoading = true
        announcementsCall?.cancel()
        val api = d(appContext).dO()
        val auth = e.z(appContext)
        announcementsCall = api.f(auth, page + 1)
        announcementsCall?.enqueue(object : Callback<GeneralResponse<AnnouncementsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<AnnouncementsResponse>>,
                response: Response<GeneralResponse<AnnouncementsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val paging = response.body()?.data?.announcements
                    if (paging != null) {
                        page = paging.page
                        totalPage = paging.pages
                        val docs = paging.docs ?: emptyList()
                        announcements = announcements + docs
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<AnnouncementsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun refresh() {
        announcementsCall?.cancel()
        announcements = emptyList()
        page = 0
        totalPage = 1
        isLoading = false
        loadMore()
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
        announcementsCall?.cancel()
        super.onCleared()
    }
}

