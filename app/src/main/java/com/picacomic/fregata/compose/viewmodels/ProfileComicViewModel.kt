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
    var qG by mutableStateOf<List<ComicListObject>?>(null)
        private set
    var qH by mutableIntStateOf(0)
        private set

    var qI by mutableStateOf<List<ComicListObject>?>(null)
        private set
    var qJ by mutableStateOf(0L)
        private set

    var qK by mutableStateOf<List<ComicListObject>?>(null)
        private set
    var qL by mutableStateOf(0L)
        private set

    val bookmarkedComics: List<ComicListObject>
        get() = qG.orEmpty()
    val bookmarkedTotal: Int
        get() = qH
    val recentComics: List<ComicListObject>
        get() = qI.orEmpty()
    val recentTotal: Long
        get() = qJ
    val downloadedComics: List<ComicListObject>
        get() = qK.orEmpty()
    val downloadedTotal: Long
        get() = qL

    var isLoading by mutableStateOf(false)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set
    var errorCode by mutableStateOf<Int?>(null)
        private set
    var errorBody by mutableStateOf<String?>(null)
        private set

    var qF: Call<GeneralResponse<ComicListResponse>>? = null
        private set

    fun load(force: Boolean = false) {
        bH(force)
    }

    fun bH(force: Boolean = false) {
        if (qG != null && !force) {
            bI()
        } else {
            dz()
        }
        if (qI != null && !force) {
            dw()
        } else {
            dv()
        }
        if (qK != null && !force) {
            dy()
        } else {
            dx()
        }
    }

    fun dv() {
        try {
            val records = DbComicViewRecordObject.findWithQuery(
                DbComicViewRecordObject::class.java,
                "SELECT * FROM db_comic_view_record_object WHERE last_view_timestamp > 0 ORDER BY last_view_timestamp DESC LIMIT 4",
            ) ?: emptyList()
            qI = records.mapNotNull { raw ->
                val record = raw as? DbComicViewRecordObject ?: return@mapNotNull null
                val detailRecords = DbComicDetailObject.find(
                    DbComicDetailObject::class.java,
                    "comic_id = ?",
                    record.comicId,
                ) ?: emptyList<Any>()
                (detailRecords.firstOrNull() as? DbComicDetailObject)?.let { ComicListObject(it) }
            }
            qJ = DbComicViewRecordObject.count<DbComicViewRecordObject>(
                DbComicViewRecordObject::class.java,
            )
            dw()
        } catch (_: Exception) {
            qI = emptyList()
            qJ = 0L
        }
    }

    fun dw() {
        qI = qI.orEmpty().toList()
    }

    fun dx() {
        try {
            val records = DbComicDetailObject.findWithQuery(
                DbComicDetailObject::class.java,
                "SELECT * FROM db_comic_detail_object WHERE download_status > 0 ORDER BY downloaded_at DESC LIMIT 4 ",
            ) ?: emptyList<Any>()
            qK = records.mapNotNull { raw ->
                (raw as? DbComicDetailObject)?.let { ComicListObject(it) }
            }
            qL = DbComicDetailObject.count<DbComicDetailObject>(
                DbComicDetailObject::class.java,
                "download_status > 0",
                null,
            )
            dy()
        } catch (_: Exception) {
            qK = emptyList()
            qL = 0L
        }
    }

    fun dy() {
        qK = qK.orEmpty().toList()
    }

    fun bI() {
        qG = qG.orEmpty().toList()
    }

    fun dz() {
        if (isLoading) return
        val context = getApplication<Application>()
        qF?.cancel()
        isLoading = true
        qF = d(context).dO().a(e.z(context), com.picacomic.fregata.c.c.uQ[0], 1)
        qF?.enqueue(object : Callback<GeneralResponse<ComicListResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicListResponse>>,
                response: Response<GeneralResponse<ComicListResponse>>,
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val comics = response.body()?.data?.comics
                    if (qG == null) {
                        qG = comics?.docs ?: emptyList()
                        qH = comics?.total ?: qG.orEmpty().size
                        bI()
                    }
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

    fun onClickTag(tag: Int): String? {
        return when {
            tag / 300 == 1 -> qK.orEmpty().getOrNull(tag % 300)?.comicId
            tag / 200 == 1 -> qI.orEmpty().getOrNull(tag % 200)?.comicId
            tag / 100 == 1 -> qG.orEmpty().getOrNull(tag % 100)?.comicId
            else -> null
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
        qF?.cancel()
        super.onCleared()
    }
}
