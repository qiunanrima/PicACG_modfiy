package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.requests.SortingBody
import com.picacomic.fregata.objects.responses.ComicRandomListResponse
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ComicListViewModel(application: Application) : AndroidViewModel(application) {
    var comics by mutableStateOf<List<ComicListObject>>(emptyList())
    var isLoading by mutableStateOf(false)
    var title by mutableStateOf<String?>(null)
    
    var page = 1
    var totalPage = 1
    private var isEnd = false

    private var currentCall: Call<*>? = null
    private var requestKey: String? = null

    fun init(
        category: String? = null,
        keywords: String? = null,
        tags: String? = null,
        author: String? = null,
        finished: String? = null,
        sorting: String? = null,
        translate: String? = null,
        creatorId: String? = null,
        creatorName: String? = null
    ) {
        val appContext = getApplication<Application>()
        val newRequestKey = buildRequestKey(
            category = category,
            keywords = keywords,
            tags = tags,
            author = author,
            finished = finished,
            sorting = sorting,
            translate = translate,
            creatorId = creatorId,
            creatorName = creatorName
        )

        if (requestKey != newRequestKey) {
            resetState()
            requestKey = newRequestKey
        }

        title = when {
            !keywords.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + keywords
            !tags.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + tags
            !author.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + author
            !translate.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + translate
            !creatorName.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + creatorName
            category == "CATEGORY_USER_FAVOURITE" -> appContext.getString(com.picacomic.fregata.R.string.bookmarked)
            category == "CATEGORY_RECENT_VIEW" -> appContext.getString(com.picacomic.fregata.R.string.recent_view)
            category == "CATEGORY_DOWNLOADED" -> appContext.getString(com.picacomic.fregata.R.string.downloaded)
            category == "CATEGORY_RANDOM" -> appContext.getString(com.picacomic.fregata.R.string.category_title_random)
            !category.isNullOrBlank() -> category
            sorting.equals("dd", ignoreCase = true) -> appContext.getString(com.picacomic.fregata.R.string.category_title_latest)
            else -> appContext.getString(com.picacomic.fregata.R.string.title_search)
        }
        if (comics.isEmpty()) {
            loadData(category, keywords, tags, author, finished, sorting, translate, creatorId)
        }
    }

    fun loadData(
        category: String? = null,
        keywords: String? = null,
        tags: String? = null,
        author: String? = null,
        finished: String? = null,
        sorting: String? = null,
        translate: String? = null,
        creatorId: String? = null
    ) {
        if (isLoading || isEnd) return
        isLoading = true
        
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        val call: Call<GeneralResponse<ComicListResponse>> = if (keywords != null) {
            // Advanced search
            api.a(auth, page, SortingBody(keywords, sorting, null))
        } else if (category == "CATEGORY_USER_FAVOURITE") {
            api.a(auth, sorting ?: "dd", page)
        } else if (category == "CATEGORY_RANDOM") {
            // Random needs a different response type, special handling
            fetchRandom()
            return
        } else {
            api.a(auth, page, category, tags, author, finished, sorting, translate, creatorId)
        }

        currentCall = call
        call.enqueue(object : Callback<GeneralResponse<ComicListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicListResponse>>,
                response: Response<GeneralResponse<ComicListResponse>>
            ) {
                if (response.code() == 200) {
                    val data = response.body()?.data?.comics
                    data?.let {
                        val newComics = it.docs ?: emptyList()
                        comics = comics + newComics
                        totalPage = it.pages
                        page++
                        if (page > totalPage) isEnd = true
                    }
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ComicListResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    private fun fetchRandom() {
        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)
        
        val call = api.ao(auth)
        currentCall = call
        call.enqueue(object : Callback<GeneralResponse<ComicRandomListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicRandomListResponse>>,
                response: Response<GeneralResponse<ComicRandomListResponse>>
            ) {
                if (response.code() == 200) {
                    comics = response.body()?.data?.comics ?: emptyList()
                    isEnd = true // Random is usually single page
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ComicRandomListResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    private fun resetState() {
        currentCall?.cancel()
        comics = emptyList()
        page = 1
        totalPage = 1
        isEnd = false
        isLoading = false
    }

    private fun buildRequestKey(
        category: String? = null,
        keywords: String? = null,
        tags: String? = null,
        author: String? = null,
        finished: String? = null,
        sorting: String? = null,
        translate: String? = null,
        creatorId: String? = null,
        creatorName: String? = null
    ): String {
        return listOf(
            category,
            keywords,
            tags,
            author,
            finished,
            sorting,
            translate,
            creatorId,
            creatorName
        ).joinToString("|") { it.orEmpty() }
    }

    override fun onCleared() {
        currentCall?.cancel()
        super.onCleared()
    }
}
