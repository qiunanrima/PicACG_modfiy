package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.LeaderboardComicListObject
import com.picacomic.fregata.objects.LeaderboardKnightObject
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.LeaderboardKnightResponse
import com.picacomic.fregata.objects.responses.LeaderboardResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class LeaderboardViewModel(application: Application) : AndroidViewModel(application) {
    val popularComics = mutableStateListOf<LeaderboardComicListObject>()
    val knights = mutableStateListOf<LeaderboardKnightObject>()

    var popularTime by mutableStateOf("H24")
    var isLoadingPopular by mutableStateOf(false)
    var isLoadingKnight by mutableStateOf(false)

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private var popularCall: Call<GeneralResponse<LeaderboardResponse>>? = null
    private var knightCall: Call<GeneralResponse<LeaderboardKnightResponse>>? = null

    fun loadPopular(time: String = popularTime, force: Boolean = false) {
        if (!force && time == popularTime && popularComics.isNotEmpty()) return
        if (isLoadingPopular) return

        popularTime = time
        isLoadingPopular = true

        val context = getApplication<Application>()
        popularCall?.cancel()
        popularCall = d(context).dO().a(e.z(context), time, "VC")
        popularCall?.enqueue(object : Callback<GeneralResponse<LeaderboardResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<LeaderboardResponse>>,
                response: Response<GeneralResponse<LeaderboardResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    popularComics.clear()
                    response.body()?.data?.comics?.let { popularComics.addAll(it) }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoadingPopular = false
            }

            override fun onFailure(call: Call<GeneralResponse<LeaderboardResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoadingPopular = false
            }
        })
    }

    fun loadKnights(force: Boolean = false) {
        if (!force && knights.isNotEmpty()) return
        if (isLoadingKnight) return

        isLoadingKnight = true

        val context = getApplication<Application>()
        knightCall?.cancel()
        knightCall = d(context).dO().ap(e.z(context))
        knightCall?.enqueue(object : Callback<GeneralResponse<LeaderboardKnightResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<LeaderboardKnightResponse>>,
                response: Response<GeneralResponse<LeaderboardKnightResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    knights.clear()
                    response.body()?.data?.users?.let { knights.addAll(it) }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoadingKnight = false
            }

            override fun onFailure(
                call: Call<GeneralResponse<LeaderboardKnightResponse>>,
                t: Throwable
            ) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoadingKnight = false
            }
        })
    }

    fun refreshAll() {
        popularComics.clear()
        knights.clear()
        loadPopular(popularTime, force = true)
        loadKnights(force = true)
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
        popularCall?.cancel()
        knightCall?.cancel()
        super.onCleared()
    }
}
