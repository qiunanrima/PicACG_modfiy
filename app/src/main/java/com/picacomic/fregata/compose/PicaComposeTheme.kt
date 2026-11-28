package com.picacomic.fregata.compose

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.view.Window
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialExpressiveTheme
import androidx.compose.material3.MotionScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.core.view.WindowCompat
import com.picacomic.fregata.utils.ThemeColorHelper
import com.picacomic.fregata.utils.e

private val LocalPicaThemeApplied = staticCompositionLocalOf { false }

@Composable
fun resolvePicaDarkTheme(
    forceNightMode: Boolean = e.L(LocalContext.current),
    themeIndex: Int = ThemeColorHelper.resolveStoredThemeIndex(LocalContext.current),
): Boolean {
    val systemDark = isSystemInDarkTheme()
    return ThemeColorHelper.resolveDarkTheme(themeIndex, systemDark, forceNightMode)
}

@Composable
fun PicaComposeTheme(
    darkTheme: Boolean = resolvePicaDarkTheme(),
    themeColorIndex: Int = ThemeColorHelper.resolveStoredThemeIndex(LocalContext.current),
    hostWindow: Window? = null,
    content: @Composable () -> Unit
) {
    if (LocalPicaThemeApplied.current) {
        content()
        return
    }

    val context = LocalContext.current
    val view = LocalView.current
    val colorScheme = picaColorScheme(context, themeColorIndex, darkTheme)

    if (!view.isInEditMode) {
        SideEffect {
            val window = hostWindow ?: context.findActivity()?.window ?: return@SideEffect
            if (view.rootView !== window.decorView) return@SideEffect
            WindowCompat.getInsetsController(window, view).apply {
                isAppearanceLightStatusBars = !darkTheme
                isAppearanceLightNavigationBars = !darkTheme
            }
        }
    }

    CompositionLocalProvider(
        LocalPicaThemeApplied provides true,
    ) {
        MaterialExpressiveTheme(
            colorScheme = colorScheme,
            motionScheme = MotionScheme.expressive(),
            content = content,
        )
    }
}

private tailrec fun Context.findActivity(): Activity? = when (this) {
    is Activity -> this
    is ContextWrapper -> baseContext.findActivity()
    else -> null
}

internal fun picaColorScheme(context: Context, themeColor: Int, darkTheme: Boolean) = when (themeColor) {
        ThemeColorHelper.SYSTEM_DYNAMIC_INDEX -> if (ThemeColorHelper.isSystemDynamicColorAvailable()) {
            if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        } else {
            if (darkTheme) DarkColors else LightColors
        }
        ThemeColorHelper.MOYUKI_INDEX -> if (darkTheme) MoYukiDarkColorScheme else MoYukiLightColorScheme
        2 -> if (darkTheme) NeonDarkColors else NeonLightColors
        3 -> if (darkTheme) BlueDarkColors else BlueLightColors
        4 -> if (darkTheme) GreenDarkColors else GreenLightColors
        5 -> if (darkTheme) TealDarkColors else TealLightColors
        6 -> if (darkTheme) PurpleDarkColors else PurpleLightColors
        7 -> if (darkTheme) OrangeDarkColors else OrangeLightColors
        8 -> if (darkTheme) RedDarkColors else RedLightColors
        1 -> DarkColors
        0 -> if (darkTheme) DarkColors else LightColors
        else -> if (darkTheme) DarkColors else LightColors
    }
