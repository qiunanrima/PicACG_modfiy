package com.picacomic.fregata.utils

import android.content.Context
import android.content.res.Configuration
import com.picacomic.fregata.R
import com.google.android.material.color.DynamicColors

object ThemeColorHelper {
    const val SYSTEM_DYNAMIC_INDEX: Int = 9
    const val MOYUKI_INDEX: Int = 10

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

    fun toThemeOptionIndex(storedIndex: Int): Int =
        if (storedIndex == MOYUKI_INDEX && !isSystemDynamicColorAvailable()) SYSTEM_DYNAMIC_INDEX else storedIndex

    fun toStoredThemeIndex(optionIndex: Int): Int =
        if (optionIndex == SYSTEM_DYNAMIC_INDEX && !isSystemDynamicColorAvailable()) MOYUKI_INDEX else optionIndex

    @JvmStatic
    fun resolveLegacyThemeResId(context: Context): Int {
        val themeIndex = resolveStoredThemeIndex(context)
        val dark = isThemeIndexDarkForLegacyContent(context, themeIndex)
        return when (themeIndex) {
            MOYUKI_INDEX -> if (dark) R.style.AppThemeMoYukiDark else R.style.AppThemeMoYukiLight
            2 -> if (dark) R.style.AppThemeNeonDark else R.style.AppThemeNeon
            else -> if (dark) R.style.AppThemeBlack else R.style.AppTheme
        }
    }

    @JvmStatic
    fun isThemeIndexDarkForLegacyContent(context: Context, themeIndex: Int): Boolean {
        return resolveDarkTheme(themeIndex, isSystemInDarkTheme(context), e.L(context))
    }

    internal fun resolveDarkTheme(themeIndex: Int, systemDark: Boolean, forceNightMode: Boolean): Boolean =
        forceNightMode || when (themeIndex) {
            0 -> false
            1 -> true
            else -> systemDark
        }

    private fun isSystemInDarkTheme(context: Context): Boolean {
        val nightMode = context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK
        return nightMode == Configuration.UI_MODE_NIGHT_YES
    }
}
