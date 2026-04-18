package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.GameListObject
import com.picacomic.fregata.objects.responses.DataClass.GameListResponse.GameListResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class GameViewModel(application: Application) : AndroidViewModel(application) {
    val games = mutableStateListOf<GameListObject>()
    var page by mutableStateOf(1)
    var hasMore by mutableStateOf(true)
    var isLoading by mutableStateOf(false)

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private var gameCall: Call<GeneralResponse<GameListResponse>>? = null

    init {
        loadData()
    }

    fun loadData() {
        if (!hasMore || isLoading) return
        isLoading = true
        
        val context = getApplication<Application>()
        gameCall = d(context).dO().e(e.z(context), page)
        gameCall?.enqueue(object : Callback<GeneralResponse<GameListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<GameListResponse>>,
                response: Response<GeneralResponse<GameListResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val data = response.body()?.data?.games
                    if (data != null) {
                        games.addAll(data.docs)
                        page++
                        if (page > data.pages) {
                            hasMore = false
                        }
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<GameListResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    fun refresh() {
        gameCall?.cancel()
        games.clear()
        page = 1
        hasMore = true
        isLoading = false
        loadData()
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
        gameCall?.cancel()
        super.onCleared()
    }
}
