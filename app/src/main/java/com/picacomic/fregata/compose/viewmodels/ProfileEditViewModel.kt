package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.UserProfileResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ProfileEditViewModel(application: Application) : AndroidViewModel(application) {
    var userProfile by mutableStateOf<UserProfileObject?>(null)
    var isLoading by mutableStateOf(false)
    
    private var profileCall: Call<GeneralResponse<UserProfileResponse>>? = null

    fun loadProfile(userId: String) {
        if (userProfile != null) return
        isLoading = true
        
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        // Fetch User Profile
        profileCall = api.q(auth, userId)
        profileCall?.enqueue(object : Callback<GeneralResponse<UserProfileResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<UserProfileResponse>>,
                response: Response<GeneralResponse<UserProfileResponse>>
            ) {
                if (response.code() == 200) {
                    userProfile = response.body()?.data?.user
                }
                isLoading = false
            }
            override fun onFailure(call: Call<GeneralResponse<UserProfileResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    override fun onCleared() {
        profileCall?.cancel()
        super.onCleared()
    }
}
