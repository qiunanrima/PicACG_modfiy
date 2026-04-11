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

        state = state.copy(
            screenOrientationValue = orientations.getOrElse(rx) { "" },
            scrollDirectionValue = directions.getOrElse(rz) { "" },
            imageQualityValue = qualities.getOrElse(rB) { "" },
            themeColorValue = colors.getOrElse(rD) { "" },
            autoPagingValue = String.format("%.1f", hM / 1000.0f) + " " + app.getString(R.string.second),
            nightModeEnabled = e.L(app),
            volumePagingEnabled = e.Q(app),
            performanceEnabled = e.x(app),
            testingEnabled = e.w(app),
            apkVersionTitle = app.getString(R.string.setting_version_title) + " (" + app.getString(R.string.app_version) + ")"
        )
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
}
