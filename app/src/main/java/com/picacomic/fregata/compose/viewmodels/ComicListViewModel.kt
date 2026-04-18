package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.picacomic.fregata.b.d
import com.picacomic.fregata.c.c
import com.picacomic.fregata.objects.CategoryObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject
import com.picacomic.fregata.objects.requests.SortingBody
import com.picacomic.fregata.objects.responses.ComicRandomListResponse
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

private data class ComicListRequest(
    val category: String? = null,
    val keywords: String? = null,
    val tags: String? = null,
    val author: String? = null,
    val finished: String? = null,
    val sorting: String? = null,
    val translate: String? = null,
    val creatorId: String? = null,
    val creatorName: String? = null
) {
    fun requestKey(): String {
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
}

class ComicListViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val DEFAULT_PAGE_LIMIT = 40
        private const val FILTER_COUNT = 8
    }

    var comics by mutableStateOf<List<ComicListObject>>(emptyList())
        private set

    var isLoading by mutableStateOf(false)
        private set

    var title by mutableStateOf<String?>(null)
        private set

    var page by mutableIntStateOf(1)
        private set

    var totalPage by mutableIntStateOf(1)
        private set

    var pageLimit by mutableIntStateOf(DEFAULT_PAGE_LIMIT)
        private set

    var pageJumpBase by mutableIntStateOf(1)
        private set

    var hasMore by mutableStateOf(true)
        private set

    var favouriteSortingIndex by mutableIntStateOf(0)
        private set

    var advancedSortingIndex by mutableIntStateOf(0)
        private set

    var filterStates by mutableStateOf(List(FILTER_COUNT) { false })
        private set

    var advancedCategoryTitles by mutableStateOf<List<String>>(emptyList())
        private set

    var advancedCategorySelections by mutableStateOf<List<Boolean>>(emptyList())
        private set

    var selectedAdvancedCategories by mutableStateOf<List<String>>(emptyList())
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

    private var currentCall: Call<*>? = null
    private var requestKey: String? = null
    private var currentRequest: ComicListRequest? = null
    private var recentOffset = 0
    private var downloadedOffset = 0
    private var shouldResetOnNextLoad = false

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
        val newRequest = ComicListRequest(
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
        val newRequestKey = newRequest.requestKey()

        if (requestKey != newRequestKey) {
            currentRequest = newRequest
            favouriteSortingIndex = c.uQ.indexOfFirst { it.equals(newRequest.sorting, true) }
                .takeIf { it >= 0 } ?: 0
            advancedSortingIndex = c.uR.indexOfFirst { it.equals(newRequest.sorting, true) }
                .takeIf { it >= 0 } ?: 0
            resetState()
            requestKey = newRequestKey
        } else if (currentRequest == null) {
            currentRequest = newRequest
        }

        refreshPreferenceState()
        title = buildTitle(currentRequest ?: newRequest)
        if (comics.isEmpty()) {
            loadData()
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
        val request = if (
            category != null || keywords != null || tags != null || author != null ||
            finished != null || sorting != null || translate != null || creatorId != null
        ) {
            ComicListRequest(
                category = category ?: currentRequest?.category,
                keywords = keywords ?: currentRequest?.keywords,
                tags = tags ?: currentRequest?.tags,
                author = author ?: currentRequest?.author,
                finished = finished ?: currentRequest?.finished,
                sorting = sorting ?: currentRequest?.sorting,
                translate = translate ?: currentRequest?.translate,
                creatorId = creatorId ?: currentRequest?.creatorId,
                creatorName = currentRequest?.creatorName
            )
        } else {
            currentRequest
        } ?: return

        if (request.requestKey() != requestKey) {
            currentRequest = request
            requestKey = request.requestKey()
            resetState()
        }

        if (isLoading || !hasMore) return
        when (request.category) {
            "CATEGORY_RANDOM" -> fetchRandom()
            "CATEGORY_RECENT_VIEW" -> loadRecentView()
            "CATEGORY_DOWNLOADED" -> loadDownloaded()
            "CATEGORY_USER_FAVOURITE" -> fetchRemote(request, favourite = true)
            else -> fetchRemote(request, favourite = false)
        }
    }

    fun refresh() {
        resetState()
        loadData()
    }

    fun jumpToPage(targetPage: Int) {
        val safePage = targetPage.coerceAtLeast(1)
        pageJumpBase = safePage
        page = safePage
        shouldResetOnNextLoad = true
        if (currentRequest?.category == "CATEGORY_RECENT_VIEW") {
            recentOffset = (safePage - 1) * pageLimit
        } else if (currentRequest?.category == "CATEGORY_DOWNLOADED") {
            downloadedOffset = (safePage - 1) * pageLimit
        }
        loadData()
    }

    fun clearRecentView() {
        DbComicViewRecordObject.deleteAll(DbComicViewRecordObject::class.java)
        emitMessage(com.picacomic.fregata.R.string.alert_clear_all_recent_success)
        if (currentRequest?.category == "CATEGORY_RECENT_VIEW") {
            resetState()
            loadData()
        }
    }

    fun setFavouriteSorting(index: Int) {
        favouriteSortingIndex = index.coerceIn(c.uQ.indices)
        currentRequest = currentRequest?.copy(sorting = c.uQ[favouriteSortingIndex])
        requestKey = currentRequest?.requestKey()
        resetState()
        loadData()
    }

    fun setAdvancedSorting(index: Int) {
        advancedSortingIndex = index.coerceIn(c.uR.indices)
        currentRequest = currentRequest?.copy(sorting = c.uR[advancedSortingIndex])
        requestKey = currentRequest?.requestKey()
        resetState()
        loadData()
    }

    fun setAdvancedCategorySelected(index: Int, selected: Boolean) {
        if (index !in advancedCategorySelections.indices) return
        val updatedSelections = advancedCategorySelections.toMutableList()
        updatedSelections[index] = selected
        advancedCategorySelections = updatedSelections
        selectedAdvancedCategories = updatedSelections.mapIndexedNotNull { itemIndex, isSelected ->
            if (isSelected) advancedCategoryTitles.getOrNull(itemIndex) else null
        }
    }

    fun applyAdvancedCategorySelection() {
        resetState()
        loadData()
    }

    fun toggleFilter(index: Int): Boolean {
        if (index !in filterStates.indices) return false
        val updated = filterStates.toMutableList()
        updated[index] = !updated[index]
        filterStates = updated
        e.a(getApplication<Application>(), index, updated[index])
        return updated[index]
    }

    private fun fetchRemote(request: ComicListRequest, favourite: Boolean) {
        isLoading = true

        val context = getApplication<Application>()
        val api = d(context).dO()
        val auth = e.z(context)

        @Suppress("UNCHECKED_CAST")
        val call = when {
            !request.keywords.isNullOrBlank() -> {
                api.a(
                    auth,
                    page,
                    SortingBody(
                        request.keywords,
                        request.sorting ?: c.uR[advancedSortingIndex],
                        ArrayList(selectedAdvancedCategories)
                    )
                ) as Call<*>
            }

            favourite -> {
                api.a(auth, c.uQ[favouriteSortingIndex], page) as Call<*>
            }

            else -> {
                api.a(
                    auth,
                    page,
                    request.category,
                    request.tags,
                    request.author,
                    request.finished,
                    request.sorting ?: c.uR[advancedSortingIndex],
                    request.translate,
                    request.creatorId
                ) as Call<*>
            }
        }

        currentCall = call
        (call as Call<GeneralResponse<ComicListResponse>>).enqueue(object : Callback<GeneralResponse<ComicListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicListResponse>>,
                response: Response<GeneralResponse<ComicListResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val paging = response.body()?.data?.comics
                    val docs = paging?.docs ?: emptyList()
                    pageLimit = paging?.limit ?: pageLimit
                    val base = if (shouldResetOnNextLoad) emptyList() else comics
                    comics = base + docs
                    totalPage = paging?.pages ?: 1
                    page = (paging?.page ?: page) + 1
                    hasMore = page <= totalPage
                    shouldResetOnNextLoad = false
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ComicListResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    private fun fetchRandom() {
        isLoading = true

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
                if (call.isCanceled) return
                if (response.code() == 200) {
                    comics = response.body()?.data?.comics ?: emptyList()
                    hasMore = false
                    totalPage = 1
                    page = 2
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<ComicRandomListResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    private fun loadRecentView() {
        isLoading = true
        try {
            val records = DbComicViewRecordObject.findWithQuery(
                DbComicViewRecordObject::class.java,
                "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT ? OFFSET ?",
                pageLimit.toString(),
                recentOffset.toString()
            ) ?: emptyList()
            val loaded = ArrayList<ComicListObject>()
            records.forEach { raw ->
                val record = raw as? DbComicViewRecordObject ?: return@forEach
                val detailRecords = DbComicDetailObject.find(
                    DbComicDetailObject::class.java,
                    "comic_id = ?",
                    record.comicId
                ) ?: emptyList<Any>()
                val detail = detailRecords.firstOrNull() as? DbComicDetailObject
                if (detail != null) {
                    loaded.add(ComicListObject(detail))
                }
            }

            val totalCount = DbComicViewRecordObject.count<DbComicViewRecordObject>(
                DbComicViewRecordObject::class.java
            )
            totalPage = totalPagesFromCount(totalCount)
            comics = if (shouldResetOnNextLoad) loaded else comics + loaded
            recentOffset = comics.size
            hasMore = recentOffset < totalCount
            if (loaded.isNotEmpty()) {
                page += 1
            } else if (comics.isEmpty()) {
                hasMore = false
            }
            shouldResetOnNextLoad = false
        } catch (_: Exception) {
            emitNetworkError()
        }
        isLoading = false
    }

    private fun loadDownloaded() {
        isLoading = true
        try {
            val records = DbComicDetailObject.findWithQuery(
                DbComicDetailObject::class.java,
                "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT ? OFFSET ?",
                pageLimit.toString(),
                downloadedOffset.toString()
            ) ?: emptyList<Any>()
            val loaded = records.mapNotNull { raw ->
                (raw as? DbComicDetailObject)?.let { ComicListObject(it) }
            }
            val totalCount = DbComicDetailObject.count<DbComicDetailObject>(
                DbComicDetailObject::class.java,
                "download_status > 0",
                null
            )
            totalPage = totalPagesFromCount(totalCount)
            comics = if (shouldResetOnNextLoad) loaded else comics + loaded
            downloadedOffset = comics.size
            hasMore = downloadedOffset < totalCount
            if (loaded.isNotEmpty()) {
                page += 1
            } else if (comics.isEmpty()) {
                hasMore = false
            }
            shouldResetOnNextLoad = false
        } catch (_: Exception) {
            emitNetworkError()
        }
        isLoading = false
    }

    private fun resetState() {
        currentCall?.cancel()
        comics = emptyList()
        page = 1
        totalPage = 1
        pageLimit = DEFAULT_PAGE_LIMIT
        pageJumpBase = 1
        hasMore = true
        isLoading = false
        recentOffset = 0
        downloadedOffset = 0
        shouldResetOnNextLoad = false
    }

    private fun refreshPreferenceState() {
        val appContext = getApplication<Application>()
        filterStates = List(FILTER_COUNT) { index -> e.d(appContext, index) }

        val categoriesJson = e.D(appContext)
        if (!categoriesJson.isNullOrBlank()) {
            try {
                val type = object : TypeToken<List<CategoryObject>>() {}.type
                val parsed: List<CategoryObject> = Gson().fromJson(categoriesJson, type) ?: emptyList()
                advancedCategoryTitles = parsed.mapNotNull { it.title }
                if (advancedCategorySelections.size != advancedCategoryTitles.size) {
                    advancedCategorySelections = List(advancedCategoryTitles.size) { false }
                }
            } catch (_: Exception) {
                advancedCategoryTitles = emptyList()
                advancedCategorySelections = emptyList()
            }
        } else {
            advancedCategoryTitles = emptyList()
            advancedCategorySelections = emptyList()
        }
        selectedAdvancedCategories = advancedCategorySelections.mapIndexedNotNull { index, selected ->
            if (selected) advancedCategoryTitles.getOrNull(index) else null
        }
    }

    private fun buildTitle(request: ComicListRequest): String {
        val appContext = getApplication<Application>()
        return when {
            !request.keywords.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + request.keywords
            !request.tags.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + request.tags
            !request.author.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + request.author
            !request.translate.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + request.translate
            !request.creatorName.isNullOrBlank() -> appContext.getString(com.picacomic.fregata.R.string.title_search) + request.creatorName
            request.category == "CATEGORY_USER_FAVOURITE" -> appContext.getString(com.picacomic.fregata.R.string.bookmarked)
            request.category == "CATEGORY_RECENT_VIEW" -> appContext.getString(com.picacomic.fregata.R.string.recent_view)
            request.category == "CATEGORY_DOWNLOADED" -> appContext.getString(com.picacomic.fregata.R.string.downloaded)
            request.category == "CATEGORY_RANDOM" -> appContext.getString(com.picacomic.fregata.R.string.category_title_random)
            !request.category.isNullOrBlank() -> request.category
            request.sorting.equals("dd", ignoreCase = true) -> appContext.getString(com.picacomic.fregata.R.string.category_title_latest)
            else -> appContext.getString(com.picacomic.fregata.R.string.title_search)
        }
    }

    private fun totalPagesFromCount(totalCount: Long): Int {
        if (totalCount <= 0L) return 1
        val pageCount = totalCount / pageLimit + if (totalCount % pageLimit == 0L) 0 else 1
        return pageCount.toInt().coerceAtLeast(1)
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
        currentCall?.cancel()
        super.onCleared()
    }
}
