package com.picacomic.fregata.compose

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.utils.e

private val LightColors = lightColorScheme(
    primary = md_theme_light_primary,
    onPrimary = md_theme_light_onPrimary,
    primaryContainer = md_theme_light_primaryContainer,
    onPrimaryContainer = md_theme_light_onPrimaryContainer,
    secondary = md_theme_light_secondary,
    onSecondary = md_theme_light_onSecondary,
    secondaryContainer = md_theme_light_secondaryContainer,
    onSecondaryContainer = md_theme_light_onSecondaryContainer,
    tertiary = md_theme_light_tertiary,
    onTertiary = md_theme_light_onTertiary,
    tertiaryContainer = md_theme_light_tertiaryContainer,
    onTertiaryContainer = md_theme_light_onTertiaryContainer,
    error = md_theme_light_error,
    onError = md_theme_light_onError,
    errorContainer = md_theme_light_errorContainer,
    onErrorContainer = md_theme_light_onErrorContainer,
    background = md_theme_light_background,
    onBackground = md_theme_light_onBackground,
    surface = md_theme_light_surface,
    onSurface = md_theme_light_onSurface,
    surfaceVariant = md_theme_light_surfaceVariant,
    onSurfaceVariant = md_theme_light_onSurfaceVariant,
    outline = md_theme_light_outline,
    outlineVariant = md_theme_light_surfaceVariant,
    inverseSurface = md_theme_light_inverseSurface,
    inverseOnSurface = md_theme_light_inverseOnSurface,
    inversePrimary = md_theme_light_inversePrimary,
    surfaceTint = md_theme_light_primary
)

private val DarkColors = darkColorScheme(
    primary = md_theme_dark_primary,
    onPrimary = md_theme_dark_onPrimary,
    primaryContainer = md_theme_dark_primaryContainer,
    onPrimaryContainer = md_theme_dark_onPrimaryContainer,
    secondary = md_theme_dark_secondary,
    onSecondary = md_theme_dark_onSecondary,
    secondaryContainer = md_theme_dark_secondaryContainer,
    onSecondaryContainer = md_theme_dark_onSecondaryContainer,
    tertiary = md_theme_dark_tertiary,
    onTertiary = md_theme_dark_onTertiary,
    tertiaryContainer = md_theme_dark_tertiaryContainer,
    onTertiaryContainer = md_theme_dark_onTertiaryContainer,
    error = md_theme_dark_error,
    onError = md_theme_dark_onError,
    errorContainer = md_theme_dark_errorContainer,
    onErrorContainer = md_theme_dark_onErrorContainer,
    background = md_theme_dark_background,
    onBackground = md_theme_dark_onBackground,
    surface = md_theme_dark_surface,
    onSurface = md_theme_dark_onSurface,
    surfaceVariant = md_theme_dark_surfaceVariant,
    onSurfaceVariant = md_theme_dark_onSurfaceVariant,
    outline = md_theme_dark_outline,
    outlineVariant = md_theme_dark_surfaceVariant,
    inverseSurface = md_theme_dark_inverseSurface,
    inverseOnSurface = md_theme_dark_inverseOnSurface,
    inversePrimary = md_theme_dark_inversePrimary,
    surfaceTint = md_theme_dark_primary
)

private val NeonColors = darkColorScheme(
    primary = md_theme_neon_primary,
    onPrimary = md_theme_neon_onPrimary,
    primaryContainer = md_theme_neon_primaryContainer,
    onPrimaryContainer = md_theme_neon_onPrimaryContainer,
    secondary = md_theme_neon_secondary,
    onSecondary = md_theme_neon_onSecondary,
    secondaryContainer = md_theme_neon_secondaryContainer,
    onSecondaryContainer = md_theme_neon_onSecondaryContainer,
    tertiary = md_theme_neon_tertiary,
    onTertiary = md_theme_neon_onTertiary,
    tertiaryContainer = md_theme_neon_tertiaryContainer,
    onTertiaryContainer = md_theme_neon_onTertiaryContainer,
    error = md_theme_neon_error,
    onError = md_theme_neon_onError,
    errorContainer = md_theme_neon_errorContainer,
    onErrorContainer = md_theme_neon_onErrorContainer,
    background = md_theme_neon_background,
    onBackground = md_theme_neon_onBackground,
    surface = md_theme_neon_surface,
    onSurface = md_theme_neon_onSurface,
    surfaceVariant = md_theme_neon_surfaceVariant,
    onSurfaceVariant = md_theme_neon_onSurfaceVariant,
    outline = md_theme_neon_outline,
    outlineVariant = md_theme_neon_surfaceVariant,
    inverseSurface = md_theme_neon_inverseSurface,
    inverseOnSurface = md_theme_neon_inverseOnSurface,
    inversePrimary = md_theme_neon_inversePrimary,
    surfaceTint = md_theme_neon_primary
)

private val PicaShapes = Shapes(
    extraSmall = RoundedCornerShape(12.dp),
    small = RoundedCornerShape(18.dp),
    medium = RoundedCornerShape(24.dp),
    large = RoundedCornerShape(28.dp),
    extraLarge = RoundedCornerShape(36.dp)
)

@Composable
fun PicaComposeTheme(
    darkTheme: Boolean = run {
        val context = LocalContext.current
        when (e.al(context)) {
            1 -> true
            2 -> true
            0 -> false
            else -> isSystemInDarkTheme()
        }
    },
    content: @Composable () -> Unit
) {
    val context = LocalContext.current
    val colorScheme = when (e.al(context)) {
        2 -> NeonColors
        1 -> DarkColors
        0 -> LightColors
        else -> if (darkTheme) DarkColors else LightColors
    }

    MaterialTheme(
        colorScheme = colorScheme,
        shapes = PicaShapes,
        content = content
    )
}
