package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.AnnouncementObject
import com.picacomic.fregata.objects.CollectionObject
import com.picacomic.fregata.objects.responses.DataClass.AnnouncementsResponse.AnnouncementsResponse
import com.picacomic.fregata.objects.responses.DataClass.CollectionsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class HomeViewModel(application: Application) : AndroidViewModel(application) {
    var announcements by mutableStateOf<List<AnnouncementObject>>(emptyList())
    var collections by mutableStateOf<List<CollectionObject>>(emptyList())
    var hasNotification by mutableStateOf(false)
    var isLoading by mutableStateOf(false)

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private var announcementsCall: Call<GeneralResponse<AnnouncementsResponse>>? = null
    private var collectionsCall: Call<GeneralResponse<CollectionsResponse>>? = null
    private var pendingCount = 0

    init {
        hasNotification = e.ak(application)
        loadData()
    }

    fun loadData() {
        announcementsCall?.cancel()
        collectionsCall?.cancel()
        isLoading = true
        pendingCount = 0
        fetchAnnouncements()
        fetchCollections()
    }

    private fun fetchAnnouncements() {
        val context = getApplication<Application>()
        pendingCount += 1
        announcementsCall = d(context).dO().f(e.z(context), 1)
        announcementsCall?.enqueue(object : Callback<GeneralResponse<AnnouncementsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<AnnouncementsResponse>>,
                response: Response<GeneralResponse<AnnouncementsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    announcements = response.body()?.data?.announcements?.docs ?: emptyList()
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                checkLoadingFinished()
            }

            override fun onFailure(call: Call<GeneralResponse<AnnouncementsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                checkLoadingFinished()
            }
        })
    }

    private fun fetchCollections() {
        val context = getApplication<Application>()
        pendingCount += 1
        collectionsCall = d(context).dO().aq(e.z(context))
        collectionsCall?.enqueue(object : Callback<GeneralResponse<CollectionsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CollectionsResponse>>,
                response: Response<GeneralResponse<CollectionsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    collections = response.body()?.data?.collections ?: emptyList()
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                checkLoadingFinished()
            }

            override fun onFailure(call: Call<GeneralResponse<CollectionsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                checkLoadingFinished()
            }
        })
    }

    private fun checkLoadingFinished() {
        pendingCount = (pendingCount - 1).coerceAtLeast(0)
        isLoading = pendingCount > 0
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
        announcementsCall?.cancel()
        collectionsCall?.cancel()
        super.onCleared()
    }
}
