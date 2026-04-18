package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.ComicDetailObject
import com.picacomic.fregata.objects.ComicEpisodeObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject
import com.picacomic.fregata.objects.responses.ActionResponse
import com.picacomic.fregata.objects.responses.ComicDetailResponse
import com.picacomic.fregata.objects.responses.ComicRandomListResponse
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ComicDetailViewModel(application: Application) : AndroidViewModel(application) {
    var comicDetail by mutableStateOf<ComicDetailObject?>(null)
        private set

    var episodes by mutableStateOf<List<ComicEpisodeObject>>(emptyList())
        private set

    var episodeTotal by mutableIntStateOf(0)
        private set

    var recommendations by mutableStateOf<List<ComicListObject>>(emptyList())
        private set

    var nextEpisodePage by mutableIntStateOf(1)
        private set

    var hasMoreEpisodes by mutableStateOf(true)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var isActionLoading by mutableStateOf(false)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    var messageEvent by mutableIntStateOf(0)
        private set

    var messageRes by mutableStateOf<Int?>(null)
        private set

    private var loadedComicId: String? = null
    private var pendingRequestCount = 0

    private var detailCall: Call<GeneralResponse<ComicDetailResponse>>? = null
    private var episodeCall: Call<GeneralResponse<ComicEpisodeResponse>>? = null
    private var recommendationCall: Call<GeneralResponse<ComicRandomListResponse>>? = null
    private var likeCall: Call<GeneralResponse<ActionResponse>>? = null
    private var favouriteCall: Call<GeneralResponse<ActionResponse>>? = null

    fun loadComic(comicId: String, force: Boolean = false) {
        if (!force && loadedComicId == comicId && comicDetail != null) {
            return
        }

        loadedComicId = comicId
        cancelAll()
        resetState()

        fetchDetail(comicId)
        fetchEpisodes(comicId, reset = true)
        fetchRecommendations(comicId)
    }

    fun loadMoreEpisodes() {
        val comicId = loadedComicId ?: return
        if (!hasMoreEpisodes || isLoading) return
        fetchEpisodes(comicId, reset = false)
    }

    fun toggleFavourite() {
        val comicId = loadedComicId ?: return
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        favouriteCall?.cancel()
        isActionLoading = true
        pushLoading()
        favouriteCall = api.t(auth, comicId)
        favouriteCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                if (loadedComicId != comicId) {
                    popLoading()
                    isActionLoading = false
                    return
                }

                val detail = comicDetail
                if (response.code() == 200 && detail != null) {
                    when (response.body()?.data?.action?.lowercase()) {
                        "favourite" -> {
                            detail.setFavourite(true)
                            emitMessage(R.string.alert_bookmarked)
                        }

                        "un_favourite" -> {
                            detail.setFavourite(false)
                            emitMessage(R.string.alert_bookmark_canceled)
                        }
                    }
                    comicDetail = detail
                    persistComicDetail(detail)
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
                isActionLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedComicId == comicId) {
                    emitNetworkError()
                }
                popLoading()
                isActionLoading = false
            }
        })
    }

    fun toggleLike() {
        val comicId = loadedComicId ?: return
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        likeCall?.cancel()
        isActionLoading = true
        pushLoading()
        likeCall = api.s(auth, comicId)
        likeCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                if (loadedComicId != comicId) {
                    popLoading()
                    isActionLoading = false
                    return
                }

                val detail = comicDetail
                if (response.code() == 200 && detail != null) {
                    when (response.body()?.data?.action?.lowercase()) {
                        "like" -> {
                            val wasLiked = detail.isLiked
                            detail.setLiked(true)
                            if (!wasLiked) {
                                detail.setLikesCount(detail.likesCount + 1)
                            }
                            emitMessage(R.string.alert_liked)
                        }

                        "unlike" -> {
                            val wasLiked = detail.isLiked
                            detail.setLiked(false)
                            if (wasLiked) {
                                detail.setLikesCount((detail.likesCount - 1).coerceAtLeast(0))
                            }
                            emitMessage(R.string.alert_like_canceled)
                        }
                    }
                    comicDetail = detail
                    persistComicDetail(detail)
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
                isActionLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedComicId == comicId) {
                    emitNetworkError()
                }
                popLoading()
                isActionLoading = false
            }
        })
    }

    private fun fetchDetail(comicId: String) {
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        detailCall?.cancel()
        pushLoading()
        detailCall = api.r(auth, comicId)
        detailCall?.enqueue(object : Callback<GeneralResponse<ComicDetailResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicDetailResponse>>,
                response: Response<GeneralResponse<ComicDetailResponse>>
            ) {
                if (loadedComicId != comicId) {
                    popLoading()
                    return
                }

                if (response.code() == 200) {
                    val detail = response.body()?.data?.comic
                    comicDetail = detail
                    if (detail != null) {
                        persistComicDetail(detail)
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicDetailResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedComicId == comicId) {
                    emitNetworkError()
                }
                popLoading()
            }
        })
    }

    private fun fetchEpisodes(comicId: String, reset: Boolean) {
        val targetPage = if (reset) 1 else nextEpisodePage
        if (!reset && !hasMoreEpisodes) return

        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        episodeCall?.cancel()
        pushLoading()
        episodeCall = api.b(auth, comicId, targetPage)
        episodeCall?.enqueue(object : Callback<GeneralResponse<ComicEpisodeResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicEpisodeResponse>>,
                response: Response<GeneralResponse<ComicEpisodeResponse>>
            ) {
                if (loadedComicId != comicId) {
                    popLoading()
                    return
                }

                if (response.code() == 200) {
                    val paging = response.body()?.data?.eps
                    val docs = paging?.docs ?: emptyList()
                    val merged = if (reset) {
                        docs
                    } else {
                        episodes + docs
                    }
                    episodeTotal = paging?.total ?: merged.size
                    episodes = merged
                    nextEpisodePage = targetPage + 1
                    hasMoreEpisodes = merged.size < episodeTotal
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicEpisodeResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedComicId == comicId) {
                    emitNetworkError()
                }
                popLoading()
            }
        })
    }

    private fun fetchRecommendations(comicId: String) {
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        recommendationCall?.cancel()
        pushLoading()
        recommendationCall = api.u(auth, comicId)
        recommendationCall?.enqueue(object : Callback<GeneralResponse<ComicRandomListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicRandomListResponse>>,
                response: Response<GeneralResponse<ComicRandomListResponse>>
            ) {
                if (loadedComicId != comicId) {
                    popLoading()
                    return
                }

                if (response.code() == 200) {
                    recommendations = response.body()?.data?.comics ?: emptyList()
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicRandomListResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedComicId == comicId) {
                    emitNetworkError()
                }
                popLoading()
            }
        })
    }

    private fun resetState() {
        comicDetail = null
        episodes = emptyList()
        recommendations = emptyList()
        episodeTotal = 0
        nextEpisodePage = 1
        hasMoreEpisodes = true
        isLoading = false
        isActionLoading = false
        pendingRequestCount = 0
    }

    private fun persistComicDetail(detail: ComicDetailObject) {
        try {
            val existing = b.aw(detail.comicId)
            val dbObject = DbComicDetailObject(detail)
            dbObject.downloadStatus = existing?.downloadStatus ?: 0
            b.a(dbObject)
        } catch (_: Exception) {
        }
    }

    private fun pushLoading() {
        pendingRequestCount += 1
        isLoading = pendingRequestCount > 0
    }

    private fun popLoading() {
        pendingRequestCount = (pendingRequestCount - 1).coerceAtLeast(0)
        isLoading = pendingRequestCount > 0
    }

    private fun emitMessage(message: Int) {
        messageRes = message
        messageEvent++
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

    private fun cancelAll() {
        detailCall?.cancel()
        episodeCall?.cancel()
        recommendationCall?.cancel()
        likeCall?.cancel()
        favouriteCall?.cancel()
    }

    override fun onCleared() {
        cancelAll()
        super.onCleared()
    }
}
