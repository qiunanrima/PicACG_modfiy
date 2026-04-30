package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.localbroadcastmanager.content.LocalBroadcastManager
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.ComicEpisodeObject
import com.picacomic.fregata.objects.databaseTable.DbComicDetailObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.services.DownloadService
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.c
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import java.io.File
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ComicDownloadViewModel(application: Application) : AndroidViewModel(application) {
    var comicId by mutableStateOf<String?>(null)
        private set

    var comicTitle by mutableStateOf<String?>(null)
        private set

    var episodeTotal by mutableIntStateOf(0)
        private set

    var episodes by mutableStateOf<List<ComicEpisodeObject>>(emptyList())
        private set

    var nm by mutableIntStateOf(1)
        private set

    var nk by mutableStateOf(true)
        private set

    var nu by mutableStateOf(false)
        private set

    var progressText by mutableStateOf("")
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    var messageEvent by mutableIntStateOf(0)
        private set

    var messageText by mutableStateOf<String?>(null)
        private set

    private var nb: Call<GeneralResponse<ComicEpisodeResponse>>? = null
    private var nt = false

    private val nv = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            if (intent.action != DownloadService.tN) return
            val comicName = intent.getStringExtra("COMIC_NAME").orEmpty()
            val episodeId = intent.getStringExtra("EPISODE_ID").orEmpty()
            val episodeTitle = intent.getStringExtra("EPISODE_TITLE").orEmpty()
            val current = intent.getIntExtra("PROGRESS_CURRENT", 0)
            val total = intent.getIntExtra("PROGRESS_TOTAL", 1)
            handleProgress(comicName, episodeId, episodeTitle, current, total)
        }
    }

    fun init(comicId: String, title: String?) {
        if (this.comicId == comicId && episodes.isNotEmpty()) {
            cP()
            return
        }
        this.comicId = comicId
        this.comicTitle = title
        episodeTotal = 0
        episodes = emptyList()
        nm = 1
        nk = true
        nu = false
        progressText = ""
        cP()
        bH()
    }

    fun bH() {
        bN()
        try {
            DownloadComicEpisodeObject.listAll(DownloadComicEpisodeObject::class.java).forEach {
                f.D("ComicDownloadFragment", it.toString())
            }
        } catch (_: Exception) {
        }
    }

    fun bN() {
        val targetComicId = comicId ?: return
        if (nu || !nk) return
        nu = true
        nb?.cancel()
        nb = d(getApplication<Application>()).dO().b(e.z(getApplication<Application>()), targetComicId, nm)
        nb?.enqueue(object : Callback<GeneralResponse<ComicEpisodeResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ComicEpisodeResponse>>,
                response: Response<GeneralResponse<ComicEpisodeResponse>>
            ) {
                if (comicId != targetComicId) {
                    nu = false
                    return
                }
                if (response.code() == 200) {
                    val paging = response.body()?.data?.eps
                    val docs = paging?.docs.orEmpty().map { episode ->
                        val dbEpisode = b.ay(episode.episodeId)
                        when (dbEpisode?.status) {
                            1, 2, 3 -> episode.setStatus(1)
                            4 -> episode.setStatus(2)
                            else -> episode.setStatus(0)
                        }
                        episode.setSelected(false)
                        episode
                    }
                    if (paging != null) {
                        episodeTotal = paging.total
                    }
                    episodes = episodes + docs
                    if (episodeTotal > 0 && episodes.size >= episodeTotal) {
                        nk = false
                    }
                    nm += 1
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                nu = false
            }

            override fun onFailure(call: Call<GeneralResponse<ComicEpisodeResponse>>, t: Throwable) {
                if (!call.isCanceled) {
                    emitNetworkError()
                }
                nu = false
            }
        })
    }

    fun C(index: Int) {
        if (index !in episodes.indices) return
        episodes[index].setSelected(!episodes[index].isSelected)
        episodes = episodes.toList()
    }

    fun downloadSelected() {
        var selectedCount = 0
        episodes.forEachIndexed { index, episode ->
            if (episode.isSelected) {
                J(index)
                episode.setStatus(1)
                episode.setSelected(false)
                selectedCount += 1
            }
        }
        if (selectedCount > 0) {
            val targetComicId = comicId
            val dbComicDetailObjectAw: DbComicDetailObject? = targetComicId?.let { b.aw(it) }
            if (dbComicDetailObjectAw != null) {
                dbComicDetailObjectAw.downloadStatus = 4
                dbComicDetailObjectAw.downloadedAt = System.currentTimeMillis()
                dbComicDetailObjectAw.save()
            } else {
                f.D("ComicDownloadFragment", "Some ERROR must occur as DbComicDetailObject must NOT be null!")
            }
            episodes = episodes.toList()
            emitMessage("已加入下载队列")
        }
    }

    fun J(index: Int) {
        val targetComicId = comicId ?: return
        val episode = episodes.getOrNull(index) ?: return
        val episodeId = episode.episodeId ?: return
        if (b.ay(episodeId) == null) {
            DownloadComicEpisodeObject(targetComicId, episode, 1).save()
        }
        f.E("ComicDownloadFragment", "Start Download Service")
        val intent = Intent(getApplication<Application>(), DownloadService::class.java).apply {
            putExtra("COMIC_ID", targetComicId)
            putExtra("EPISODE_ID", episodeId)
        }
        getApplication<Application>().startService(intent)
    }

    fun cO() {
        val targetComicId = comicId ?: return
        val dbComicDetailObjectAw = b.aw(targetComicId) ?: return
        dbComicDetailObjectAw.downloadStatus = 0
        dbComicDetailObjectAw.downloadedAt = 0L
        dbComicDetailObjectAw.save()

        val downloadedEpisodes = DownloadComicEpisodeObject.find(
            DownloadComicEpisodeObject::class.java,
            "comic_id = ?",
            targetComicId
        )
        downloadedEpisodes?.forEach {
            g.g(File(c.ec(), it.episodeId))
            it.delete()
        }
        DownloadComicPageObject.deleteAll(DownloadComicPageObject::class.java, "comic_id = ?", targetComicId)
        episodes.forEach {
            it.setSelected(false)
            it.setStatus(0)
        }
        episodes = episodes.toList()
        progressText = ""
        emitMessage("已删除下载")
    }

    fun cP() {
        cQ()
        val filter = IntentFilter().apply {
            addAction(DownloadService.tN)
        }
        LocalBroadcastManager.getInstance(getApplication<Application>()).registerReceiver(nv, filter)
        nt = true
    }

    fun cQ() {
        if (!nt) return
        LocalBroadcastManager.getInstance(getApplication<Application>()).unregisterReceiver(nv)
        nt = false
    }

    fun handleProgress(
        comicName: String,
        episodeId: String,
        episodeTitle: String,
        current: Int,
        total: Int
    ) {
        val index = episodes.indexOfFirst { it.episodeId.equals(episodeId, ignoreCase = true) }
        if (index >= 0) {
            if (current == total) {
                episodes[index].setStatus(2)
                episodes[index].title = episodeTitle
            } else {
                episodes[index].title = "$current/$total"
            }
            episodes = episodes.toList()
        }
        progressText = listOf(comicName, episodeTitle, "$current / $total")
            .filter { it.isNotBlank() }
            .joinToString("\n")
    }

    private fun emitMessage(message: String) {
        messageText = message
        messageEvent += 1
    }

    private fun emitHttpError(code: Int, body: String?) {
        errorCode = code
        errorBody = body
        errorEvent += 1
    }

    private fun emitNetworkError() {
        errorCode = null
        errorBody = null
        errorEvent += 1
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
        }
    }

    override fun onCleared() {
        nb?.cancel()
        cQ()
        super.onCleared()
    }
}
