package com.picacomic.fregata.viewmodels

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
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

data class ComicDetailFragmentState(
    val comicDetail: ComicDetailObject? = null,
    val episodes: List<ComicEpisodeObject> = emptyList(),
    val recommendations: List<ComicListObject> = emptyList(),
    val episodeTotal: Int = 0,
    val nextEpisodePage: Int = 1,
    val hasMoreEpisodes: Boolean = true
)

data class ComicDetailFragmentMessageEvent(
    val eventId: Long,
    val messageRes: Int
)

data class ComicDetailFragmentErrorEvent(
    val eventId: Long,
    val code: Int?,
    val body: String?
)

class ComicDetailFragmentViewModel(application: Application) : AndroidViewModel(application) {
    private val _state = MutableLiveData(ComicDetailFragmentState())
    val state: LiveData<ComicDetailFragmentState> = _state

    private val _loading = MutableLiveData(false)
    val loading: LiveData<Boolean> = _loading

    private val _messageEvent = MutableLiveData<ComicDetailFragmentMessageEvent?>()
    val messageEvent: LiveData<ComicDetailFragmentMessageEvent?> = _messageEvent

    private val _errorEvent = MutableLiveData<ComicDetailFragmentErrorEvent?>()
    val errorEvent: LiveData<ComicDetailFragmentErrorEvent?> = _errorEvent

    private var comicId: String? = null
    private var pendingRequestCount = 0

    private var detailCall: Call<GeneralResponse<ComicDetailResponse>>? = null
    private var episodeCall: Call<GeneralResponse<ComicEpisodeResponse>>? = null
    private var recommendationCall: Call<GeneralResponse<ComicRandomListResponse>>? = null
    private var likeCall: Call<GeneralResponse<ActionResponse>>? = null
    private var favouriteCall: Call<GeneralResponse<ActionResponse>>? = null

    fun loadComic(targetComicId: String, force: Boolean = false) {
        if (!force && comicId == targetComicId && _state.value?.comicDetail != null) {
            return
        }

        comicId = targetComicId
        detailCall?.cancel()
        episodeCall?.cancel()
        recommendationCall?.cancel()
        likeCall?.cancel()
        favouriteCall?.cancel()

        _state.value = ComicDetailFragmentState()

        fetchDetail(targetComicId)
        fetchEpisodes(targetComicId, reset = true)
        fetchRecommendations(targetComicId)
    }

    fun loadMoreEpisodes() {
        val targetComicId = comicId ?: return
        val currentState = _state.value ?: ComicDetailFragmentState()
        if (!currentState.hasMoreEpisodes) {
            return
        }
        fetchEpisodes(targetComicId, reset = false)
    }

    fun toggleFavourite() {
        val targetComicId = comicId ?: return
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        favouriteCall?.cancel()
        pushLoading()
        favouriteCall = api.t(auth, targetComicId)
        favouriteCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                val stateValue = _state.value ?: ComicDetailFragmentState()
                val detail = stateValue.comicDetail
                if (response.code() == 200 && detail != null) {
                    when (response.body()?.data?.action?.lowercase()) {
                        "favourite" -> {
                            detail.setFavourite(true)
                            _messageEvent.value = ComicDetailFragmentMessageEvent(
                                System.nanoTime(),
                                com.picacomic.fregata.R.string.alert_bookmarked
                            )
                        }

                        "un_favourite" -> {
                            detail.setFavourite(false)
                            _messageEvent.value = ComicDetailFragmentMessageEvent(
                                System.nanoTime(),
                                com.picacomic.fregata.R.string.alert_bookmark_canceled
                            )
                        }
                    }
                    _state.value = stateValue.copy(comicDetail = detail)
                } else {
                    publishError(response.code(), readErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (!call.isCanceled) {
                    publishError(null, null)
                }
                popLoading()
            }
        })
    }

    fun toggleLike() {
        val targetComicId = comicId ?: return
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        likeCall?.cancel()
        pushLoading()
        likeCall = api.s(auth, targetComicId)
        likeCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                val stateValue = _state.value ?: ComicDetailFragmentState()
                val detail = stateValue.comicDetail
                if (response.code() == 200 && detail != null) {
                    when (response.body()?.data?.action?.lowercase()) {
                        "like" -> {
                            val wasLiked = detail.isLiked
                            detail.setLiked(true)
                            if (!wasLiked) {
                                detail.setLikesCount(detail.likesCount + 1)
                            }
                            _messageEvent.value = ComicDetailFragmentMessageEvent(
                                System.nanoTime(),
                                com.picacomic.fregata.R.string.alert_liked
                            )
                        }

                        "unlike" -> {
                            val wasLiked = detail.isLiked
                            detail.setLiked(false)
                            if (wasLiked) {
                                detail.setLikesCount((detail.likesCount - 1).coerceAtLeast(0))
                            }
                            _messageEvent.value = ComicDetailFragmentMessageEvent(
                                System.nanoTime(),
                                com.picacomic.fregata.R.string.alert_like_canceled
                            )
                        }
                    }
                    _state.value = stateValue.copy(comicDetail = detail)
                } else {
                    publishError(response.code(), readErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (!call.isCanceled) {
                    publishError(null, null)
                }
                popLoading()
            }
        })
    }

    private fun fetchDetail(targetComicId: String) {
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        detailCall?.cancel()
        pushLoading()
        detailCall = api.r(auth, targetComicId)
        detailCall?.enqueue(object : Callback<GeneralResponse<ComicDetailResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicDetailResponse>>,
                response: Response<GeneralResponse<ComicDetailResponse>>
            ) {
                if (comicId != targetComicId) {
                    popLoading()
                    return
                }
                if (response.code() == 200) {
                    val detail = response.body()?.data?.comic
                    if (detail != null) {
                        val currentState = _state.value ?: ComicDetailFragmentState()
                        _state.value = currentState.copy(comicDetail = detail)
                    }
                } else {
                    publishError(response.code(), readErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicDetailResponse>>, t: Throwable) {
                if (!call.isCanceled) {
                    publishError(null, null)
                }
                popLoading()
            }
        })
    }

    private fun fetchEpisodes(targetComicId: String, reset: Boolean) {
        val currentState = _state.value ?: ComicDetailFragmentState()
        val page = if (reset) 1 else currentState.nextEpisodePage
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        episodeCall?.cancel()
        pushLoading()
        episodeCall = api.b(auth, targetComicId, page)
        episodeCall?.enqueue(object : Callback<GeneralResponse<ComicEpisodeResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicEpisodeResponse>>,
                response: Response<GeneralResponse<ComicEpisodeResponse>>
            ) {
                if (comicId != targetComicId) {
                    popLoading()
                    return
                }
                if (response.code() == 200) {
                    val eps = response.body()?.data?.eps
                    val docs = eps?.docs ?: emptyList()
                    val existing = if (reset) emptyList() else (_state.value?.episodes ?: emptyList())
                    val merged = ArrayList<ComicEpisodeObject>(existing.size + docs.size)
                    merged.addAll(existing)
                    merged.addAll(docs)
                    val total = eps?.total ?: merged.size
                    _state.value = (_state.value ?: ComicDetailFragmentState()).copy(
                        episodes = merged,
                        episodeTotal = total,
                        nextEpisodePage = page + 1,
                        hasMoreEpisodes = merged.size < total
                    )
                } else {
                    publishError(response.code(), readErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicEpisodeResponse>>, t: Throwable) {
                if (!call.isCanceled) {
                    publishError(null, null)
                }
                popLoading()
            }
        })
    }

    private fun fetchRecommendations(targetComicId: String) {
        val api = d(getApplication<Application>()).dO()
        val auth = e.z(getApplication<Application>())

        recommendationCall?.cancel()
        pushLoading()
        recommendationCall = api.u(auth, targetComicId)
        recommendationCall?.enqueue(object : Callback<GeneralResponse<ComicRandomListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicRandomListResponse>>,
                response: Response<GeneralResponse<ComicRandomListResponse>>
            ) {
                if (comicId != targetComicId) {
                    popLoading()
                    return
                }
                if (response.code() == 200) {
                    _state.value = (_state.value ?: ComicDetailFragmentState()).copy(
                        recommendations = response.body()?.data?.comics ?: emptyList()
                    )
                } else {
                    publishError(response.code(), readErrorBody(response))
                }
                popLoading()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicRandomListResponse>>, t: Throwable) {
                if (!call.isCanceled) {
                    publishError(null, null)
                }
                popLoading()
            }
        })
    }

    private fun pushLoading() {
        pendingRequestCount += 1
        _loading.value = pendingRequestCount > 0
    }

    private fun popLoading() {
        pendingRequestCount = (pendingRequestCount - 1).coerceAtLeast(0)
        _loading.value = pendingRequestCount > 0
    }

    private fun publishError(code: Int?, body: String?) {
        _errorEvent.value = ComicDetailFragmentErrorEvent(
            eventId = System.nanoTime(),
            code = code,
            body = body
        )
    }

    private fun <T> readErrorBody(response: Response<T>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    override fun onCleared() {
        detailCall?.cancel()
        episodeCall?.cancel()
        recommendationCall?.cancel()
        likeCall?.cancel()
        favouriteCall?.cancel()
        super.onCleared()
    }
}
