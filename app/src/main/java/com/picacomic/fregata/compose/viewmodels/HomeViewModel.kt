package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
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

    private var announcementsCall: Call<GeneralResponse<AnnouncementsResponse>>? = null
    private var collectionsCall: Call<GeneralResponse<CollectionsResponse>>? = null

    init {
        hasNotification = e.ak(application)
        loadData()
    }

    fun loadData() {
        isLoading = true
        fetchAnnouncements()
        fetchCollections()
    }

    private fun fetchAnnouncements() {
        val context = getApplication<Application>()
        announcementsCall = d(context).dO().f(e.z(context), 1)
        announcementsCall?.enqueue(object : Callback<GeneralResponse<AnnouncementsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<AnnouncementsResponse>>,
                response: Response<GeneralResponse<AnnouncementsResponse>>
            ) {
                if (response.code() == 200) {
                    announcements = response.body()?.data?.announcements?.docs ?: emptyList()
                }
                checkLoadingFinished()
            }

            override fun onFailure(call: Call<GeneralResponse<AnnouncementsResponse>>, t: Throwable) {
                checkLoadingFinished()
            }
        })
    }

    private fun fetchCollections() {
        val context = getApplication<Application>()
        collectionsCall = d(context).dO().aq(e.z(context))
        collectionsCall?.enqueue(object : Callback<GeneralResponse<CollectionsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CollectionsResponse>>,
                response: Response<GeneralResponse<CollectionsResponse>>
            ) {
                if (response.code() == 200) {
                    collections = response.body()?.data?.collections ?: emptyList()
                }
                checkLoadingFinished()
            }

            override fun onFailure(call: Call<GeneralResponse<CollectionsResponse>>, t: Throwable) {
                checkLoadingFinished()
            }
        })
    }

    private fun checkLoadingFinished() {
        // Simple logic to set isLoading to false when both main calls return
        // (In a real app we might use StateFlow/Combine)
        isLoading = false 
    }

    override fun onCleared() {
        announcementsCall?.cancel()
        collectionsCall?.cancel()
        super.onCleared()
    }
}
