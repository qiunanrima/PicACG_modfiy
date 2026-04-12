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
import com.picacomic.fregata.objects.PicaAppObject
import com.picacomic.fregata.objects.responses.DataClass.PicaAppsResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.a
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class PicaAppListViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val FALLBACK_APP_TITLE = "嗶咔萌約"
    }

    var apps by mutableStateOf<List<PicaAppObject>>(emptyList())
        private set

    var isLoading by mutableStateOf(false)
        private set

    var errorEvent by mutableIntStateOf(0)
        private set

    var errorCode by mutableStateOf<Int?>(null)
        private set

    var errorBody by mutableStateOf<String?>(null)
        private set

    private val appContext = getApplication<Application>()
    private var appsCall: Call<GeneralResponse<PicaAppsResponse>>? = null

    fun loadApps(force: Boolean = false) {
        if (isLoading) return
        if (!force && apps.isNotEmpty()) return
        if (apps.isEmpty()) {
            loadCachedApps()
        }

        isLoading = true
        appsCall?.cancel()
        val api = d(appContext).dO()
        val auth = e.z(appContext)
        appsCall = api.au(auth)
        appsCall?.enqueue(object : Callback<GeneralResponse<PicaAppsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PicaAppsResponse>>,
                response: Response<GeneralResponse<PicaAppsResponse>>
            ) {
                if (call.isCanceled) return
                if (response.code() == 200) {
                    val fetched = response.body()?.data?.apps ?: emptyList()
                    val normalized = normalizeApps(fetched)
                    apps = normalized
                    e.o(appContext, Gson().toJson(normalized))
                } else {
                    emitHttpError(response.code(), safeErrorBody(response))
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<PicaAppsResponse>>, t: Throwable) {
                if (call.isCanceled) return
                emitNetworkError()
                isLoading = false
            }
        })
    }

    private fun loadCachedApps() {
        val cached = e.H(appContext)
        if (cached.isNullOrBlank()) return
        try {
            val type = object : TypeToken<List<PicaAppObject>>() {}.type
            val parsed: List<PicaAppObject>? = Gson().fromJson(cached, type)
            if (!parsed.isNullOrEmpty()) {
                apps = normalizeApps(parsed)
            }
        } catch (_: Exception) {
        }
    }

    private fun normalizeApps(source: List<PicaAppObject>): List<PicaAppObject> {
        val output = source.map { app ->
            val title = app.title
            if (title.equals(FALLBACK_APP_TITLE, ignoreCase = true) && app.url.isNullOrBlank()) {
                PicaAppObject(title, a.dT(), app.icon, app.description)
            } else {
                app
            }
        }.toMutableList()

        if (output.none { it.title.equals(FALLBACK_APP_TITLE, ignoreCase = true) }) {
            output.add(
                PicaAppObject(
                    FALLBACK_APP_TITLE,
                    a.dT(),
                    null,
                    "可能是最有用的同性交友應用"
                )
            )
        }
        return output
    }

    private fun safeErrorBody(response: Response<*>): String? {
        return try {
            response.errorBody()?.string()
        } catch (_: Exception) {
            null
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

    override fun onCleared() {
        appsCall?.cancel()
        super.onCleared()
    }
}

