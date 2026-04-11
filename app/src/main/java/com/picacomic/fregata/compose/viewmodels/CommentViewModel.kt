package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.CommentObject
import com.picacomic.fregata.objects.responses.DataClass.CommentsResponse.CommentsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class CommentViewModel(application: Application) : AndroidViewModel(application) {
    var comments by mutableStateOf<List<CommentObject>>(emptyList())
    var isLoading by mutableStateOf(false)
    
    private var commentsCall: Call<GeneralResponse<CommentsResponse>>? = null

    fun loadComments(comicId: String? = null, gameId: String? = null, commentId: String? = null, page: Int = 1) {
        if (comments.isNotEmpty()) return
        isLoading = true
        
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        // Fetch Comments based on provided ID
        when {
            !comicId.isNullOrEmpty() -> {
                commentsCall = api.c(auth, comicId, page)
            }
            !gameId.isNullOrEmpty() -> {
                commentsCall = api.f(auth, gameId, page)
            }
            !commentId.isNullOrEmpty() -> {
                commentsCall = api.d(auth, commentId, page)
            }
            else -> {
                isLoading = false
                return
            }
        }

        commentsCall?.enqueue(object : Callback<GeneralResponse<CommentsResponse>> {
            override fun onResponse(call: Call<GeneralResponse<CommentsResponse>>, response: Response<GeneralResponse<CommentsResponse>>) {
                if (response.code() == 200) {
                    val commentsData = response.body()?.data?.comments?.docs ?: emptyList()
                    comments = commentsData
                }
                isLoading = false
            }
            override fun onFailure(call: Call<GeneralResponse<CommentsResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    override fun onCleared() {
        commentsCall?.cancel()
        super.onCleared()
    }
}
