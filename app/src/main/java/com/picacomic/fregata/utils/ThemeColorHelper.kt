package com.picacomic.fregata.utils

import android.content.Context
import android.content.res.Configuration
import com.picacomic.fregata.R
import com.google.android.material.color.DynamicColors

object ThemeColorHelper {
    const val SYSTEM_DYNAMIC_INDEX: Int = 9

    @JvmStatic
    fun isSystemDynamicColorAvailable(): Boolean = DynamicColors.isDynamicColorAvailable()

    @JvmStatic
    fun resolveStoredThemeIndex(context: Context): Int {
        val storedIndex = e.al(context)
        return if (storedIndex == SYSTEM_DYNAMIC_INDEX && !isSystemDynamicColorAvailable()) {
            0
        } else {
            storedIndex
        }
    }

    @JvmStatic
    fun resolveLegacyThemeResId(context: Context): Int {
        val themeIndex = resolveStoredThemeIndex(context)
        if (themeIndex == 2) {
            return if (isSystemInDarkTheme(context)) {
                R.style.AppThemeNeonDark
            } else {
                R.style.AppThemeNeon
            }
        }
        if (themeIndex == SYSTEM_DYNAMIC_INDEX) {
            return if (isSystemInDarkTheme(context)) R.style.AppThemeBlack else R.style.AppTheme
        }
        return if (themeIndex == 0) R.style.AppTheme else R.style.AppThemeBlack
    }

    @JvmStatic
    fun isThemeIndexDarkForLegacyContent(context: Context, themeIndex: Int): Boolean {
        return when (themeIndex) {
            1, 2 -> true
            SYSTEM_DYNAMIC_INDEX -> isSystemInDarkTheme(context)
            else -> false
        }
    }

    private fun isSystemInDarkTheme(context: Context): Boolean {
        val nightMode = context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK
        return nightMode == Configuration.UI_MODE_NIGHT_YES
    }
}
