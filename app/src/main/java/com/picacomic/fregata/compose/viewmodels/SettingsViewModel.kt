package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import android.content.Intent
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.LoginActivity
import com.picacomic.fregata.compose.screens.SettingsDialog
import com.picacomic.fregata.compose.screens.SettingsState
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.LauncherIconHelper
import java.io.File
import java.text.DecimalFormat

class SettingsViewModel(application: Application) : AndroidViewModel(application) {
    companion object {
        private const val PREFS_NAME = "PICACOMIC_FREGATA"
        private const val KEY_LAUNCHER_ICON = "KEY_LAUNCHER_ICON"
    }

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
        val launcherIcons = listOf("默认图标", "Miracle Neon")

        val rx = if (e.M(app)) 0 else 1
        val rz = if (e.N(app)) 0 else 1
        val rB = e.R(app)
        val rD = e.al(app)
        val launcherIconIndex = app.getSharedPreferences(PREFS_NAME, 0)
            .getInt(KEY_LAUNCHER_ICON, if (rD == 2) 1 else 0)
            .coerceIn(0, launcherIcons.lastIndex)
        val hM = e.O(app)
        val pin = e.y(app)
        val cacheSize = formatSize(sizeOf(app.cacheDir) + sizeOf(app.externalCacheDir))

        state = state.copy(
            screenOrientationIndex = rx,
            screenOrientationValue = orientations.getOrElse(rx) { "" },
            scrollDirectionIndex = rz,
            scrollDirectionValue = directions.getOrElse(rz) { "" },
            autoPagingIntervalMs = hM,
            imageQualityValue = qualities.getOrElse(rB) { "" },
            imageQualityIndex = rB,
            themeColorValue = colors.getOrElse(rD) { "" },
            themeColorIndex = rD,
            launcherIconValue = launcherIcons.getOrElse(launcherIconIndex) { "" },
            launcherIconIndex = launcherIconIndex,
            autoPagingValue = String.format("%.1f", hM / 1000.0f) + " " + app.getString(R.string.second),
            autoPagingDraftIntervalMs = if (state.activeDialog == SettingsDialog.AutoPaging) {
                state.autoPagingDraftIntervalMs
            } else {
                hM
            },
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

    fun openScreenOrientationDialog() {
        state = state.copy(activeDialog = SettingsDialog.ScreenOrientation)
    }

    fun openScrollDirectionDialog() {
        state = state.copy(activeDialog = SettingsDialog.ScrollDirection)
    }

    fun openAutoPagingDialog() {
        state = state.copy(
            activeDialog = SettingsDialog.AutoPaging,
            autoPagingDraftIntervalMs = state.autoPagingIntervalMs,
        )
    }

    fun openImageQualityDialog() {
        state = state.copy(activeDialog = SettingsDialog.ImageQuality)
    }

    fun openThemeColorDialog() {
        state = state.copy(activeDialog = SettingsDialog.ThemeColor)
    }

    fun openLauncherIconDialog() {
        state = state.copy(activeDialog = SettingsDialog.LauncherIcon)
    }

    fun dismissDialog() {
        state = state.copy(
            activeDialog = null,
            autoPagingDraftIntervalMs = state.autoPagingIntervalMs,
        )
    }

    fun selectScreenOrientationIndex(index: Int) {
        state = state.copy(activeDialog = null)
        e.e(getApplication(), index == 0)
        loadSettings()
    }

    fun selectScrollDirectionIndex(index: Int) {
        state = state.copy(activeDialog = null)
        e.f(getApplication(), index == 0)
        loadSettings()
    }

    fun selectImageQualityIndex(index: Int) {
        state = state.copy(activeDialog = null)
        e.c(getApplication(), index)
        loadSettings()
    }

    fun selectThemeColorIndex(index: Int) {
        state = state.copy(activeDialog = null)
        e.h(getApplication(), index)
        loadSettings()
    }

    fun selectLauncherIconIndex(index: Int) {
        val safeIndex = index.coerceIn(0, 1)
        val app = getApplication<Application>()
        state = state.copy(activeDialog = null)
        app.getSharedPreferences(PREFS_NAME, 0)
            .edit()
            .putInt(KEY_LAUNCHER_ICON, safeIndex)
            .apply()
        LauncherIconHelper.syncLauncherIcon(app, if (safeIndex == 1) 2 else 0)
        loadSettings()
    }

    fun updateAutoPagingDraftProgress(progress: Int) {
        state = state.copy(autoPagingDraftIntervalMs = (progress.coerceIn(0, 100) * 100) + 1000)
    }

    fun confirmAutoPagingInterval() {
        state = state.copy(activeDialog = null)
        e.b(getApplication(), state.autoPagingDraftIntervalMs)
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
