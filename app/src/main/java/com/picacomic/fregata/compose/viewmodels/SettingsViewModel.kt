package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import android.content.Intent
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.LoginActivity
import com.picacomic.fregata.compose.screens.SettingsState
import com.picacomic.fregata.utils.e
import java.io.File
import java.text.DecimalFormat

class SettingsViewModel(application: Application) : AndroidViewModel(application) {
    var state by mutableStateOf(SettingsState())
        private set

    init {
        loadSettings()
    }

    fun loadSettings() {
        val app = getApplication<Application>()
        val orientations = app.resources.getStringArray(R.array.setting_options_screen_orientations)
        val directions = app.resources.getStringArray(R.array.setting_options_scroll_directions)
        val qualities = app.resources.getStringArray(R.array.setting_options_image_qualities)
        val colors = app.resources.getStringArray(R.array.setting_theme_colors)

        val rx = if (e.M(app)) 0 else 1
        val rz = if (e.N(app)) 0 else 1
        val rB = e.R(app)
        val rD = e.al(app)
        val hM = e.O(app)
        val pin = e.y(app)
        val cacheSize = formatSize(sizeOf(app.cacheDir) + sizeOf(app.externalCacheDir))

        state = state.copy(
            screenOrientationValue = orientations.getOrElse(rx) { "" },
            scrollDirectionValue = directions.getOrElse(rz) { "" },
            imageQualityValue = qualities.getOrElse(rB) { "" },
            themeColorValue = colors.getOrElse(rD) { "" },
            autoPagingValue = String.format("%.1f", hM / 1000.0f) + " " + app.getString(R.string.second),
            cacheTitleValue = app.getString(R.string.setting_cache_title) + " (~$cacheSize)",
            pinValue = if (pin.isNullOrEmpty()) app.getString(R.string.setting_pin_off) else app.getString(R.string.setting_pin_on),
            pinTitleValue = if (pin.isNullOrEmpty()) app.getString(R.string.setting_pin_title) else app.getString(R.string.setting_pin_title_on),
            nightModeEnabled = e.L(app),
            volumePagingEnabled = e.Q(app),
            performanceEnabled = e.x(app),
            testingEnabled = e.w(app),
            apkVersionTitle = app.getString(R.string.setting_version_title) + " (" + app.getString(R.string.app_version) + ")"
        )
    }

    fun setScreenOrientationIndex(index: Int) {
        e.e(getApplication(), index == 0)
        loadSettings()
    }

    fun setScrollDirectionIndex(index: Int) {
        e.f(getApplication(), index == 0)
        loadSettings()
    }

    fun setImageQualityIndex(index: Int) {
        e.c(getApplication(), index)
        loadSettings()
    }

    fun setThemeColorIndex(index: Int) {
        e.h(getApplication(), index)
        loadSettings()
    }

    fun setAutoPagingInterval(intervalMs: Int) {
        e.b(getApplication(), intervalMs)
        loadSettings()
    }

    fun toggleNightMode(enabled: Boolean) {
        e.d(getApplication(), enabled)
        state = state.copy(nightModeEnabled = enabled)
    }

    fun toggleVolumePaging(enabled: Boolean) {
        e.g(getApplication(), enabled)
        state = state.copy(volumePagingEnabled = enabled)
    }

    fun togglePerformance(enabled: Boolean) {
        e.b(getApplication(), enabled)
        state = state.copy(performanceEnabled = enabled)
    }

    fun toggleTesting(enabled: Boolean) {
        e.a(getApplication(), enabled)
        state = state.copy(testingEnabled = enabled)
    }

    fun logout() {
        val app = getApplication<Application>()
        e.h(app, "")
        e.f(app, "")
        e.a(app, -1)
        e.i(app, "")
        
        val intent = Intent(app, LoginActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        }
        app.startActivity(intent)
    }

    private fun sizeOf(file: File?): Long {
        if (file == null || !file.exists()) return 0L
        if (file.isFile) return file.length()
        val children = file.listFiles() ?: return 0L
        var total = 0L
        for (child in children) {
            total += sizeOf(child)
        }
        return total
    }

    private fun formatSize(size: Long): String {
        if (size <= 0) return "0 Bytes"
        val units = arrayOf("Bytes", "kB", "MB", "GB", "TB")
        val digitGroups = (Math.log10(size.toDouble()) / Math.log10(1024.0)).toInt().coerceIn(0, units.lastIndex)
        val value = size / Math.pow(1024.0, digitGroups.toDouble())
        return "${DecimalFormat("#,##0.#").format(value)} ${units[digitGroups]}"
    }
}
