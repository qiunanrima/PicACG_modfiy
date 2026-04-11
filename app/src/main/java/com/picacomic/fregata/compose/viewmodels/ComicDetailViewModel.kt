package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.ComicDetailObject
import com.picacomic.fregata.objects.ComicEpisodeObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.responses.ComicDetailResponse
import com.picacomic.fregata.objects.responses.ComicRandomListResponse
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ComicDetailViewModel(application: Application) : AndroidViewModel(application) {
    var comicDetail by mutableStateOf<ComicDetailObject?>(null)
    var episodes by mutableStateOf<List<ComicEpisodeObject>>(emptyList())
    var recommendations by mutableStateOf<List<ComicListObject>>(emptyList())
    var isLoading by mutableStateOf(false)
    
    private var detailCall: Call<GeneralResponse<ComicDetailResponse>>? = null
    private var epsCall: Call<GeneralResponse<ComicEpisodeResponse>>? = null
    private var recCall: Call<GeneralResponse<ComicRandomListResponse>>? = null

    fun loadComic(comicId: String) {
        if (comicDetail != null) return
        isLoading = true
        
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        // Fetch Details
        detailCall = api.r(auth, comicId)
        detailCall?.enqueue(object : Callback<GeneralResponse<ComicDetailResponse>> {
            override fun onResponse(call: Call<GeneralResponse<ComicDetailResponse>>, response: Response<GeneralResponse<ComicDetailResponse>>) {
                if (response.code() == 200) {
                    comicDetail = response.body()?.data?.comic
                    // After detail, fetch episodes and recommendations
                    fetchEpisodes(comicId)
                    fetchRecommendations(comicId)
                }
                isLoading = false
            }
            override fun onFailure(call: Call<GeneralResponse<ComicDetailResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    private fun fetchEpisodes(comicId: String) {
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)
        
        epsCall = api.b(auth, comicId, 1)
        epsCall?.enqueue(object : Callback<GeneralResponse<ComicEpisodeResponse>> {
            override fun onResponse(call: Call<GeneralResponse<ComicEpisodeResponse>>, response: Response<GeneralResponse<ComicEpisodeResponse>>) {
                if (response.code() == 200) {
                    episodes = response.body()?.data?.eps?.docs ?: emptyList()
                }
            }
            override fun onFailure(call: Call<GeneralResponse<ComicEpisodeResponse>>, t: Throwable) {}
        })
    }

    private fun fetchRecommendations(comicId: String) {
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)
        
        recCall = api.u(auth, comicId)
        recCall?.enqueue(object : Callback<GeneralResponse<ComicRandomListResponse>> {
            override fun onResponse(call: Call<GeneralResponse<ComicRandomListResponse>>, response: Response<GeneralResponse<ComicRandomListResponse>>) {
                if (response.code() == 200) {
                    recommendations = response.body()?.data?.comics ?: emptyList()
                }
            }
            override fun onFailure(call: Call<GeneralResponse<ComicRandomListResponse>>, t: Throwable) {}
        })
    }

    override fun onCleared() {
        detailCall?.cancel()
        epsCall?.cancel()
        recCall?.cancel()
        super.onCleared()
    }
}
