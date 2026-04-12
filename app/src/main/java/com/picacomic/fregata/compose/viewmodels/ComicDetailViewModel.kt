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
import com.picacomic.fregata.objects.responses.ActionResponse
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
    var episodeTotal by mutableStateOf(0)
    var recommendations by mutableStateOf<List<ComicListObject>>(emptyList())
    var isLoading by mutableStateOf(false)
    var isActionLoading by mutableStateOf(false)
    private var loadedComicId: String? = null
    
    private var detailCall: Call<GeneralResponse<ComicDetailResponse>>? = null
    private var epsCall: Call<GeneralResponse<ComicEpisodeResponse>>? = null
    private var recCall: Call<GeneralResponse<ComicRandomListResponse>>? = null
    private var likeCall: Call<GeneralResponse<ActionResponse>>? = null
    private var favouriteCall: Call<GeneralResponse<ActionResponse>>? = null

    fun loadComic(comicId: String, force: Boolean = false) {
        if (!force && loadedComicId == comicId && comicDetail != null) return

        loadedComicId = comicId
        comicDetail = null
        episodes = emptyList()
        episodeTotal = 0
        recommendations = emptyList()
        detailCall?.cancel()
        epsCall?.cancel()
        recCall?.cancel()
        likeCall?.cancel()
        favouriteCall?.cancel()
        isLoading = true
        
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        // Fetch Details
        detailCall = api.r(auth, comicId)
        detailCall?.enqueue(object : Callback<GeneralResponse<ComicDetailResponse>> {
            override fun onResponse(call: Call<GeneralResponse<ComicDetailResponse>>, response: Response<GeneralResponse<ComicDetailResponse>>) {
                if (loadedComicId != comicId) return
                if (response.code() == 200) {
                    comicDetail = response.body()?.data?.comic
                    // After detail, fetch episodes and recommendations
                    fetchEpisodes(comicId)
                    fetchRecommendations(comicId)
                }
                isLoading = false
            }
            override fun onFailure(call: Call<GeneralResponse<ComicDetailResponse>>, t: Throwable) {
                if (loadedComicId != comicId) return
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
                if (loadedComicId != comicId) return
                if (response.code() == 200) {
                    episodeTotal = response.body()?.data?.eps?.total ?: 0
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
                if (loadedComicId != comicId) return
                if (response.code() == 200) {
                    recommendations = response.body()?.data?.comics ?: emptyList()
                }
            }
            override fun onFailure(call: Call<GeneralResponse<ComicRandomListResponse>>, t: Throwable) {}
        })
    }

    fun toggleFavourite() {
        val comicId = loadedComicId ?: return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        isActionLoading = true
        favouriteCall?.cancel()
        favouriteCall = api.t(auth, comicId)
        favouriteCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                if (loadedComicId != comicId) return
                val action = response.body()?.data?.action?.lowercase()
                val detail = comicDetail
                if (response.code() == 200 && detail != null) {
                    when (action) {
                        "favourite" -> detail.setFavourite(true)
                        "un_favourite" -> detail.setFavourite(false)
                    }
                    comicDetail = detail
                }
                isActionLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (loadedComicId != comicId) return
                isActionLoading = false
            }
        })
    }

    fun toggleLike() {
        val comicId = loadedComicId ?: return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        isActionLoading = true
        likeCall?.cancel()
        likeCall = api.s(auth, comicId)
        likeCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                if (loadedComicId != comicId) return
                val action = response.body()?.data?.action?.lowercase()
                val detail = comicDetail
                if (response.code() == 200 && detail != null) {
                    val previouslyLiked = detail.isLiked
                    when (action) {
                        "like" -> {
                            detail.setLiked(true)
                            if (!previouslyLiked) {
                                detail.setLikesCount(detail.likesCount + 1)
                            }
                        }

                        "unlike" -> {
                            detail.setLiked(false)
                            if (previouslyLiked) {
                                detail.setLikesCount((detail.likesCount - 1).coerceAtLeast(0))
                            }
                        }
                    }
                    comicDetail = detail
                }
                isActionLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (loadedComicId != comicId) return
                isActionLoading = false
            }
        })
    }

    override fun onCleared() {
        detailCall?.cancel()
        epsCall?.cancel()
        recCall?.cancel()
        likeCall?.cancel()
        favouriteCall?.cancel()
        super.onCleared()
    }
}
