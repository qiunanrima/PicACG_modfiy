package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.GameDetailObject
import com.picacomic.fregata.objects.responses.DataClass.GameDetailResponse.GameDetailResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class GameDetailViewModel(application: Application) : AndroidViewModel(application) {
    var gameDetail by mutableStateOf<GameDetailObject?>(null)
    var isLoading by mutableStateOf(false)
    
    private var detailCall: Call<GeneralResponse<GameDetailResponse>>? = null

    fun loadGame(gameId: String) {
        if (gameDetail != null) return
        isLoading = true
        
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        // Fetch Game Details
        detailCall = api.z(auth, gameId)
        detailCall?.enqueue(object : Callback<GeneralResponse<GameDetailResponse>> {
            override fun onResponse(call: Call<GeneralResponse<GameDetailResponse>>, response: Response<GeneralResponse<GameDetailResponse>>) {
                if (response.code() == 200) {
                    gameDetail = response.body()?.data?.game
                }
                isLoading = false
            }
            override fun onFailure(call: Call<GeneralResponse<GameDetailResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    override fun onCleared() {
        detailCall?.cancel()
        super.onCleared()
    }
}
