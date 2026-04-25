package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject
import com.picacomic.fregata.objects.responses.DataClass.ComicListResponse.ComicListResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ProfileComicViewModel(application: Application) : AndroidViewModel(application) {
    var bookmarkedComics by mutableStateOf<List<ComicListObject>>(emptyList())
        private set
    var bookmarkedTotal by mutableIntStateOf(0)
        private set

    var recentComics by mutableStateOf<List<ComicListObject>>(emptyList())
        private set
    var recentTotal by mutableStateOf(0L)
        private set

    var downloadedComics by mutableStateOf<List<ComicListObject>>(emptyList())
        private set
    var downloadedTotal by mutableStateOf(0L)
        private set

    var isLoading by mutableStateOf(false)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set

    private var bookmarkedCall: Call<GeneralResponse<ComicListResponse>>? = null

    fun load(force: Boolean = false) {
        if (isLoading && !force) return
        loadRecent()
        loadDownloaded()
        loadBookmarked(force)
    }

    private fun loadBookmarked(force: Boolean) {
        if (!force && bookmarkedComics.isNotEmpty()) return
        val context = getApplication<Application>()
        bookmarkedCall?.cancel()
        isLoading = true
        bookmarkedCall = d(context).dO().a(e.z(context), com.picacomic.fregata.c.c.uQ[0], 1)
        bookmarkedCall?.enqueue(object : Callback<GeneralResponse<ComicListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicListResponse>>,
                response: Response<GeneralResponse<ComicListResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val comics = response.body()?.data?.comics
                    bookmarkedComics = comics?.docs ?: emptyList()
                    bookmarkedTotal = comics?.total ?: bookmarkedComics.size
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

    private fun loadRecent() {
        try {
            val records = DbComicViewRecordObject.findWithQuery(
                DbComicViewRecordObject::class.java,
                "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT 4",
            ) ?: emptyList()
            recentComics = records.mapNotNull { raw ->
                val record = raw as? DbComicViewRecordObject ?: return@mapNotNull null
                val detailRecords = DbComicDetailObject.find(
                    DbComicDetailObject::class.java,
                    "comic_id = ?",
                    record.comicId,
                ) ?: emptyList<Any>()
                (detailRecords.firstOrNull() as? DbComicDetailObject)?.let { ComicListObject(it) }
            }
            recentTotal = DbComicViewRecordObject.count<DbComicViewRecordObject>(
                DbComicViewRecordObject::class.java,
            )
        } catch (_: Exception) {
            recentComics = emptyList()
            recentTotal = 0L
        }
    }

    private fun loadDownloaded() {
        try {
            val records = DbComicDetailObject.findWithQuery(
                DbComicDetailObject::class.java,
                "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT 4",
            ) ?: emptyList<Any>()
            downloadedComics = records.mapNotNull { raw ->
                (raw as? DbComicDetailObject)?.let { ComicListObject(it) }
            }
            downloadedTotal = DbComicDetailObject.count<DbComicDetailObject>(
                DbComicDetailObject::class.java,
                "download_status > 0",
                null,
            )
        } catch (_: Exception) {
            downloadedComics = emptyList()
            downloadedTotal = 0L
        }
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
        bookmarkedCall?.cancel()
        super.onCleared()
    }
}
