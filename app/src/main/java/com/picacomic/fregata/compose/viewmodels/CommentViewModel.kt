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
    var topComments by mutableStateOf<List<CommentObject>>(emptyList())
    var isLoading by mutableStateOf(false)
    var currentPage by mutableStateOf(0)
    var totalPages by mutableStateOf(1)
    var hasMore by mutableStateOf(true)

    private var requestKey: String? = null
    private var commentsCall: Call<GeneralResponse<CommentsResponse>>? = null

    fun loadComments(
        comicId: String? = null,
        gameId: String? = null,
        commentId: String? = null,
        page: Int = 1,
        force: Boolean = false
    ) {
        val newRequestKey = listOf(comicId, gameId, commentId).joinToString("|") { it.orEmpty() }
        if (requestKey != newRequestKey) {
            resetState()
            requestKey = newRequestKey
        }

        if (!force && isLoading) return
        if (!force && page > 1 && !hasMore) return

        commentsCall?.cancel()
        if (page <= 1) {
            comments = emptyList()
            topComments = emptyList()
            currentPage = 0
            totalPages = 1
            hasMore = true
        }

        isLoading = true

        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        commentsCall = when {
            !comicId.isNullOrEmpty() -> api.c(auth, comicId, page)
            !gameId.isNullOrEmpty() -> api.f(auth, gameId, page)
            !commentId.isNullOrEmpty() -> api.d(auth, commentId, page)
            else -> {
                isLoading = false
                null
            }
        }

        commentsCall?.enqueue(object : Callback<GeneralResponse<CommentsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CommentsResponse>>,
                response: Response<GeneralResponse<CommentsResponse>>
            ) {
                if (response.code() == 200) {
                    val data = response.body()?.data
                    val pageData = data?.comments
                    val docs = pageData?.docs ?: emptyList()
                    if (page <= 1) {
                        comments = docs
                        topComments = data?.topComments ?: emptyList()
                    } else {
                        comments = comments + docs
                    }
                    currentPage = pageData?.page ?: page
                    totalPages = pageData?.pages ?: 1
                    hasMore = currentPage < totalPages
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<CommentsResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    private fun resetState() {
        commentsCall?.cancel()
        comments = emptyList()
        topComments = emptyList()
        currentPage = 0
        totalPages = 1
        hasMore = true
        isLoading = false
    }

    override fun onCleared() {
        commentsCall?.cancel()
        super.onCleared()
    }
}
