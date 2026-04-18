package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.GameDetailObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.objects.responses.ActionResponse
import com.picacomic.fregata.objects.responses.DataClass.GameDetailResponse.GameDetailResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class GameDetailViewModel(application: Application) : AndroidViewModel(application) {
    var gameDetail by mutableStateOf<GameDetailObject?>(null)
        private set

    var bannerScreenshot by mutableStateOf<ThumbnailObject?>(null)
        private set

    var screenshots by mutableStateOf<List<ThumbnailObject>>(emptyList())
        private set

    var popupVisible by mutableStateOf(false)
        private set

    var showVideoInPopup by mutableStateOf(false)
        private set

    var selectedScreenshotIndex by mutableIntStateOf(0)
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

    private var loadedGameId: String? = null
    private var pendingRequestCount = 0

    private var detailCall: Call<GeneralResponse<GameDetailResponse>>? = null
    private var likeCall: Call<GeneralResponse<ActionResponse>>? = null

    fun loadGame(gameId: String, force: Boolean = false) {
        if (!force && loadedGameId == gameId && gameDetail != null) return
        loadedGameId = gameId
        detailCall?.cancel()
        likeCall?.cancel()
        gameDetail = null
        bannerScreenshot = null
        screenshots = emptyList()
        popupVisible = false
        showVideoInPopup = false
        selectedScreenshotIndex = 0
        pendingRequestCount = 0

        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        pushLoading()
        detailCall = api.z(auth, gameId)
        detailCall?.enqueue(object : Callback<GeneralResponse<GameDetailResponse>> {
            override fun onResponse(call: Call<GeneralResponse<GameDetailResponse>>, response: Response<GeneralResponse<GameDetailResponse>>) {
                if (loadedGameId != gameId) {
                    popLoading()
                    return
                }
                if (response.code() == 200) {
                    val detail = response.body()?.data?.game
                    gameDetail = detail
                    val allShots = detail?.screenshots ?: emptyList()
                    bannerScreenshot = allShots.firstOrNull()
                    screenshots = if (allShots.size > 1) {
                        allShots.drop(1)
                    } else {
                        emptyList()
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
            }
            override fun onFailure(call: Call<GeneralResponse<GameDetailResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedGameId == gameId) {
                    emitNetworkError()
                }
                popLoading()
            }
        })
    }

    fun toggleLike() {
        val gameId = loadedGameId ?: return
        val detail = gameDetail ?: return
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        likeCall?.cancel()
        isActionLoading = true
        pushLoading()
        likeCall = api.A(auth, gameId)
        likeCall?.enqueue(object : Callback<GeneralResponse<ActionResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ActionResponse>>,
                response: Response<GeneralResponse<ActionResponse>>
            ) {
                if (loadedGameId != gameId) {
                    popLoading()
                    isActionLoading = false
                    return
                }

                if (response.code() == 200) {
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
                    gameDetail = detail
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                popLoading()
                isActionLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ActionResponse>>, t: Throwable) {
                if (!call.isCanceled && loadedGameId == gameId) {
                    emitNetworkError()
                }
                popLoading()
                isActionLoading = false
            }
        })
    }

    fun openScreenshot(index: Int) {
        if (screenshots.isEmpty()) return
        selectedScreenshotIndex = index.coerceIn(0, screenshots.lastIndex)
        showVideoInPopup = false
        popupVisible = true
    }

    fun openVideoPopup() {
        if (gameDetail?.videoLink.isNullOrBlank()) return
        showVideoInPopup = true
        popupVisible = true
    }

    fun closePopup() {
        popupVisible = false
        showVideoInPopup = false
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

    override fun onCleared() {
        detailCall?.cancel()
        likeCall?.cancel()
        super.onCleared()
    }
}
