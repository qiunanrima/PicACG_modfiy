package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import android.net.Uri
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.utils.e

class PicaAppViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val SECRET = "pb6XkQ94iBBny1WUAxY0dY5fksexw0dt"
    }

    private val appContext = getApplication<Application>()
    private var initializedTitle: String? = null
    private var initializedLink: String? = null

    var title by mutableStateOf("")
        private set

    var authenticatedLink by mutableStateOf<String?>(null)
        private set

    var invalidLinkEvent by mutableIntStateOf(0)
        private set

    fun initialize(inputTitle: String, inputLink: String) {
        if (initializedTitle == inputTitle && initializedLink == inputLink) return
        initializedTitle = inputTitle
        initializedLink = inputLink
        title = inputTitle

        if (inputLink.isBlank()) {
            authenticatedLink = null
            invalidLinkEvent++
            return
        }

        authenticatedLink = try {
            Uri.parse(inputLink)
                .buildUpon()
                .appendQueryParameter("token", e.z(appContext).orEmpty())
                .appendQueryParameter("secret", SECRET)
                .build()
                .toString()
        } catch (_: Exception) {
            val joiner = if (inputLink.contains("?")) "&" else "?"
            inputLink + joiner + "token=" + e.z(appContext).orEmpty() + "&secret=" + SECRET
        }
    }
}
