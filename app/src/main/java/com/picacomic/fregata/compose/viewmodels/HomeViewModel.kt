package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.CollectionObject
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse
import com.picacomic.fregata.objects.responses.DataClass.CollectionsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class HomeViewModel(application: Application) : AndroidViewModel(application) {
    var collections by mutableStateOf<List<CollectionObject>>(emptyList())
    var hasNotification by mutableStateOf(false)
    var isLoading by mutableStateOf(false)

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private var collectionsCall: Call<GeneralResponse<CollectionsResponse>>? = null
    private val categoryCalls = mutableListOf<Call<GeneralResponse<ComicListResponse>>>()
    private val categoryCollections = linkedMapOf<String, CollectionObject>()
    private var pendingCount = 0

    private val homeCategoryTitles = listOf("大家都在看", "官方都在看")

    init {
        hasNotification = e.ak(application)
    }

    fun loadData() {
        collectionsCall?.cancel()
        categoryCalls.forEach { it.cancel() }
        categoryCalls.clear()
        categoryCollections.clear()
        collections = emptyList()
        isLoading = true
        pendingCount = 0
        fetchCollections()
        homeCategoryTitles.forEach(::fetchCategoryCollection)
    }

    fun refreshNotificationState() {
        hasNotification = e.ak(getApplication())
    }

    private fun fetchCollections() {
        val context = getApplication<Application>()
        pendingCount += 1
        collectionsCall = d(context).dO().aq(e.z(context))
        collectionsCall?.enqueue(object : Callback<GeneralResponse<CollectionsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CollectionsResponse>>,
                response: Response<GeneralResponse<CollectionsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    rebuildCollections(response.body()?.data?.collections.orEmpty())
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                checkLoadingFinished()
            }

            override fun onFailure(call: Call<GeneralResponse<CollectionsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                checkLoadingFinished()
            }
        })
    }

    /** Load the same category-backed feeds exposed from the category screen. */
    private fun fetchCategoryCollection(title: String) {
        val context = getApplication<Application>()
        pendingCount += 1
        val call = d(context).dO().a(
            e.z(context),
            1,
            title,
            null,
            null,
            null,
            null,
            null,
            null,
        )
        categoryCalls += call
        call.enqueue(object : Callback<GeneralResponse<ComicListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicListResponse>>,
                response: Response<GeneralResponse<ComicListResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val comics = response.body()?.data?.comics?.docs.orEmpty()
                    if (comics.isNotEmpty()) {
                        categoryCollections[title] = CollectionObject(title, ArrayList(comics))
                        rebuildCollections(collections)
                    }
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                checkLoadingFinished()
            }

            override fun onFailure(call: Call<GeneralResponse<ComicListResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                checkLoadingFinished()
            }
        })
    }

    private fun rebuildCollections(base: List<CollectionObject>) {
        val supplemental = homeCategoryTitles.mapNotNull { categoryCollections[it] }
        collections = base.filterNot { item ->
            homeCategoryTitles.any { it.equals(item.title, ignoreCase = true) }
        } + supplemental
    }

    private fun checkLoadingFinished() {
        pendingCount = (pendingCount - 1).coerceAtLeast(0)
        isLoading = pendingCount > 0
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
        collectionsCall?.cancel()
        categoryCalls.forEach { it.cancel() }
        super.onCleared()
    }
}
