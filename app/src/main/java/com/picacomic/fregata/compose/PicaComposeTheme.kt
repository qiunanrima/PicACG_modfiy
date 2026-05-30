package com.picacomic.fregata.compose

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.MaterialExpressiveTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.MotionScheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
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
    surfaceContainerLowest = md_theme_light_surface,
    surfaceContainerLow = androidx.compose.ui.graphics.Color(0xFFFFEDF3),
    surfaceContainer = androidx.compose.ui.graphics.Color(0xFFFFE8F0),
    surfaceContainerHigh = androidx.compose.ui.graphics.Color(0xFFFFE1EA),
    surfaceContainerHighest = androidx.compose.ui.graphics.Color(0xFFFFE8F0),
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
    surfaceContainerLowest = androidx.compose.ui.graphics.Color(0xFF16080F),
    surfaceContainerLow = androidx.compose.ui.graphics.Color(0xFF25151C),
    surfaceContainer = androidx.compose.ui.graphics.Color(0xFF2C1B23),
    surfaceContainerHigh = androidx.compose.ui.graphics.Color(0xFF35232B),
    surfaceContainerHighest = androidx.compose.ui.graphics.Color(0xFF402A33),
    surfaceVariant = md_theme_dark_surfaceVariant,
    onSurfaceVariant = md_theme_dark_onSurfaceVariant,
    outline = md_theme_dark_outline,
    outlineVariant = md_theme_dark_surfaceVariant,
    inverseSurface = md_theme_dark_inverseSurface,
    inverseOnSurface = md_theme_dark_inverseOnSurface,
    inversePrimary = md_theme_dark_inversePrimary,
    surfaceTint = md_theme_dark_primary
)

private val NeonLightColors = lightColorScheme(
    primary = md_theme_neon_light_primary,
    onPrimary = md_theme_neon_light_onPrimary,
    primaryContainer = md_theme_neon_light_primaryContainer,
    onPrimaryContainer = md_theme_neon_light_onPrimaryContainer,
    secondary = md_theme_neon_light_secondary,
    onSecondary = md_theme_neon_light_onSecondary,
    secondaryContainer = md_theme_neon_light_secondaryContainer,
    onSecondaryContainer = md_theme_neon_light_onSecondaryContainer,
    tertiary = md_theme_neon_light_tertiary,
    onTertiary = md_theme_neon_light_onTertiary,
    tertiaryContainer = md_theme_neon_light_tertiaryContainer,
    onTertiaryContainer = md_theme_neon_light_onTertiaryContainer,
    error = md_theme_neon_light_error,
    onError = md_theme_neon_light_onError,
    errorContainer = md_theme_neon_light_errorContainer,
    onErrorContainer = md_theme_neon_light_onErrorContainer,
    background = md_theme_neon_light_background,
    onBackground = md_theme_neon_light_onBackground,
    surface = md_theme_neon_light_surface,
    onSurface = md_theme_neon_light_onSurface,
    surfaceContainerLowest = Color(0xFFFFFFFF),
    surfaceContainerLow = neon_primary_0,
    surfaceContainer = md_theme_neon_light_primaryContainer,
    surfaceContainerHigh = md_theme_neon_light_surfaceVariant,
    surfaceContainerHighest = neon_primary_20,
    surfaceVariant = md_theme_neon_light_surfaceVariant,
    onSurfaceVariant = md_theme_neon_light_onSurfaceVariant,
    outline = md_theme_neon_light_outline,
    outlineVariant = md_theme_neon_light_surfaceVariant,
    inverseSurface = md_theme_neon_light_inverseSurface,
    inverseOnSurface = md_theme_neon_light_inverseOnSurface,
    inversePrimary = md_theme_neon_light_inversePrimary,
    surfaceTint = md_theme_neon_light_primary
)

private val NeonDarkColors = darkColorScheme(
    primary = md_theme_neon_dark_primary,
    onPrimary = md_theme_neon_dark_onPrimary,
    primaryContainer = md_theme_neon_dark_primaryContainer,
    onPrimaryContainer = md_theme_neon_dark_onPrimaryContainer,
    secondary = md_theme_neon_dark_secondary,
    onSecondary = md_theme_neon_dark_onSecondary,
    secondaryContainer = md_theme_neon_dark_secondaryContainer,
    onSecondaryContainer = md_theme_neon_dark_onSecondaryContainer,
    tertiary = md_theme_neon_dark_tertiary,
    onTertiary = md_theme_neon_dark_onTertiary,
    tertiaryContainer = md_theme_neon_dark_tertiaryContainer,
    onTertiaryContainer = md_theme_neon_dark_onTertiaryContainer,
    error = md_theme_neon_dark_error,
    onError = md_theme_neon_dark_onError,
    errorContainer = md_theme_neon_dark_errorContainer,
    onErrorContainer = md_theme_neon_dark_onErrorContainer,
    background = md_theme_neon_dark_background,
    onBackground = md_theme_neon_dark_onBackground,
    surface = md_theme_neon_dark_surface,
    onSurface = md_theme_neon_dark_onSurface,
    surfaceContainerLowest = neon_primary_99,
    surfaceContainerLow = md_theme_neon_dark_background,
    surfaceContainer = md_theme_neon_dark_surface,
    surfaceContainerHigh = md_theme_neon_dark_surfaceVariant,
    surfaceContainerHighest = neon_primary_95,
    surfaceVariant = md_theme_neon_dark_surfaceVariant,
    onSurfaceVariant = md_theme_neon_dark_onSurfaceVariant,
    outline = md_theme_neon_dark_outline,
    outlineVariant = md_theme_neon_dark_surfaceVariant,
    inverseSurface = md_theme_neon_dark_inverseSurface,
    inverseOnSurface = md_theme_neon_dark_inverseOnSurface,
    inversePrimary = md_theme_neon_dark_inversePrimary,
    surfaceTint = md_theme_neon_dark_primary
)

private val PicaShapes = Shapes(
    extraSmall = RoundedCornerShape(4.dp),
    small = RoundedCornerShape(8.dp),
    medium = RoundedCornerShape(12.dp),
    large = RoundedCornerShape(16.dp),
    extraLarge = RoundedCornerShape(28.dp)
)

private fun ColorScheme.toExpressiveScheme(): ColorScheme = copy(
    surfaceContainerLow = surfaceContainer,
    surfaceContainer = surfaceContainerHigh,
    surfaceContainerHigh = surfaceContainerHighest,
    outlineVariant = secondaryContainer,
)

@Composable
fun isPicaExpressiveTheme(): Boolean = e.getDesignLanguage(LocalContext.current).coerceIn(0, 1) == 1

private fun md3LightPalette(
    primary: Color,
    onPrimary: Color,
    primaryContainer: Color,
    onPrimaryContainer: Color,
    secondary: Color,
    secondaryContainer: Color,
    tertiary: Color,
    tertiaryContainer: Color,
    background: Color,
    surfaceVariant: Color,
    surfaceContainerLowest: Color = Color.White,
    surfaceContainerLow: Color = lerp(background, surfaceVariant, 0.16f),
    surfaceContainer: Color = lerp(background, surfaceVariant, 0.24f),
    surfaceContainerHigh: Color = lerp(background, surfaceVariant, 0.32f),
    surfaceContainerHighest: Color = lerp(background, surfaceVariant, 0.40f),
): ColorScheme = lightColorScheme(
    primary = primary,
    onPrimary = onPrimary,
    primaryContainer = primaryContainer,
    onPrimaryContainer = onPrimaryContainer,
    secondary = secondary,
    onSecondary = Color.White,
    secondaryContainer = secondaryContainer,
    onSecondaryContainer = onPrimaryContainer,
    tertiary = tertiary,
    onTertiary = Color.White,
    tertiaryContainer = tertiaryContainer,
    onTertiaryContainer = onPrimaryContainer,
    background = background,
    onBackground = Color(0xFF1B1B1F),
    surface = background,
    onSurface = Color(0xFF1B1B1F),
    surfaceContainerLowest = surfaceContainerLowest,
    surfaceContainerLow = surfaceContainerLow,
    surfaceContainer = surfaceContainer,
    surfaceContainerHigh = surfaceContainerHigh,
    surfaceContainerHighest = surfaceContainerHighest,
    surfaceVariant = surfaceVariant,
    onSurfaceVariant = Color(0xFF44474F),
    outline = Color(0xFF74777F),
    outlineVariant = surfaceVariant,
    inverseSurface = Color(0xFF303034),
    inverseOnSurface = Color(0xFFF2F0F4),
    inversePrimary = primaryContainer,
    surfaceTint = primary
)

private fun md3DarkPalette(
    primary: Color,
    onPrimary: Color,
    primaryContainer: Color,
    onPrimaryContainer: Color,
    secondary: Color,
    secondaryContainer: Color,
    tertiary: Color,
    tertiaryContainer: Color,
    background: Color,
    surfaceVariant: Color,
    surfaceContainerLowest: Color = background,
    surfaceContainerLow: Color = lerp(background, surfaceVariant, 0.14f),
    surfaceContainer: Color = lerp(background, surfaceVariant, 0.22f),
    surfaceContainerHigh: Color = lerp(background, surfaceVariant, 0.30f),
    surfaceContainerHighest: Color = lerp(background, surfaceVariant, 0.38f),
): ColorScheme = darkColorScheme(
    primary = primary,
    onPrimary = onPrimary,
    primaryContainer = primaryContainer,
    onPrimaryContainer = onPrimaryContainer,
    secondary = secondary,
    onSecondary = onPrimary,
    secondaryContainer = secondaryContainer,
    onSecondaryContainer = onPrimaryContainer,
    tertiary = tertiary,
    onTertiary = onPrimary,
    tertiaryContainer = tertiaryContainer,
    onTertiaryContainer = onPrimaryContainer,
    background = background,
    onBackground = Color(0xFFE4E2E6),
    surface = background,
    onSurface = Color(0xFFE4E2E6),
    surfaceContainerLowest = surfaceContainerLowest,
    surfaceContainerLow = surfaceContainerLow,
    surfaceContainer = surfaceContainer,
    surfaceContainerHigh = surfaceContainerHigh,
    surfaceContainerHighest = surfaceContainerHighest,
    surfaceVariant = surfaceVariant,
    onSurfaceVariant = Color(0xFFC4C6D0),
    outline = Color(0xFF8E9099),
    outlineVariant = surfaceVariant,
    inverseSurface = Color(0xFFE4E2E6),
    inverseOnSurface = Color(0xFF303034),
    inversePrimary = primaryContainer,
    surfaceTint = primary
)

private val BlueLightColors = md3LightPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF0061A4),
    onPrimary = androidx.compose.ui.graphics.Color.White,
    primaryContainer = androidx.compose.ui.graphics.Color(0xFFD1E4FF),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF001D36),
    secondary = androidx.compose.ui.graphics.Color(0xFF535F70),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFFD7E3F8),
    tertiary = androidx.compose.ui.graphics.Color(0xFF6B5778),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFFF2DAFF),
    background = androidx.compose.ui.graphics.Color(0xFFFDFCFF),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFFDFE2EB),
)

private val BlueDarkColors = md3DarkPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF9ECAFF),
    onPrimary = androidx.compose.ui.graphics.Color(0xFF003258),
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF00497D),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFFD1E4FF),
    secondary = androidx.compose.ui.graphics.Color(0xFFBBC7DB),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFF3B4858),
    tertiary = androidx.compose.ui.graphics.Color(0xFFD6BEE4),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFF523F5F),
    background = androidx.compose.ui.graphics.Color(0xFF101418),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFF43474E),
)

private val GreenLightColors = md3LightPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF386A20),
    onPrimary = androidx.compose.ui.graphics.Color.White,
    primaryContainer = androidx.compose.ui.graphics.Color(0xFFB8F397),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF042100),
    secondary = androidx.compose.ui.graphics.Color(0xFF55624C),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFFD9E7CB),
    tertiary = androidx.compose.ui.graphics.Color(0xFF386666),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFFBCEBEB),
    background = androidx.compose.ui.graphics.Color(0xFFFDFDF5),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFFE0E4D6),
)

private val GreenDarkColors = md3DarkPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF9DD67D),
    onPrimary = androidx.compose.ui.graphics.Color(0xFF0B3900),
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF205107),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFFB8F397),
    secondary = androidx.compose.ui.graphics.Color(0xFFBDCBAF),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFF3E4A36),
    tertiary = androidx.compose.ui.graphics.Color(0xFFA0CFCF),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFF1F4E4E),
    background = androidx.compose.ui.graphics.Color(0xFF10140F),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFF44483D),
)

private val TealLightColors = md3LightPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF006A6A),
    onPrimary = androidx.compose.ui.graphics.Color.White,
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF6FF7F6),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF002020),
    secondary = androidx.compose.ui.graphics.Color(0xFF4A6363),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFFCCE8E7),
    tertiary = androidx.compose.ui.graphics.Color(0xFF4B607C),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFFD3E4FF),
    background = androidx.compose.ui.graphics.Color(0xFFFAFDFC),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFFDAE5E4),
)

private val TealDarkColors = md3DarkPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF4CDADA),
    onPrimary = androidx.compose.ui.graphics.Color(0xFF003737),
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF004F4F),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF6FF7F6),
    secondary = androidx.compose.ui.graphics.Color(0xFFB0CCCB),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFF334B4B),
    tertiary = androidx.compose.ui.graphics.Color(0xFFB3C8E8),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFF334863),
    background = androidx.compose.ui.graphics.Color(0xFF0F1414),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFF3F4948),
)

private val PurpleLightColors = md3LightPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF6750A4),
    onPrimary = androidx.compose.ui.graphics.Color.White,
    primaryContainer = androidx.compose.ui.graphics.Color(0xFFEADDFF),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF21005D),
    secondary = androidx.compose.ui.graphics.Color(0xFF625B71),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFFE8DEF8),
    tertiary = androidx.compose.ui.graphics.Color(0xFF7D5260),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFFFFD8E4),
    background = androidx.compose.ui.graphics.Color(0xFFFFFBFE),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFFE7E0EC),
)

private val PurpleDarkColors = md3DarkPalette(
    primary = androidx.compose.ui.graphics.Color(0xFFD0BCFF),
    onPrimary = androidx.compose.ui.graphics.Color(0xFF381E72),
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF4F378B),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFFEADDFF),
    secondary = androidx.compose.ui.graphics.Color(0xFFCCC2DC),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFF4A4458),
    tertiary = androidx.compose.ui.graphics.Color(0xFFEFB8C8),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFF633B48),
    background = androidx.compose.ui.graphics.Color(0xFF1C1B1F),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFF49454F),
)

private val OrangeLightColors = md3LightPalette(
    primary = androidx.compose.ui.graphics.Color(0xFF984700),
    onPrimary = androidx.compose.ui.graphics.Color.White,
    primaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDCC4),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF311300),
    secondary = androidx.compose.ui.graphics.Color(0xFF765846),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDCC4),
    tertiary = androidx.compose.ui.graphics.Color(0xFF606032),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFFE7E6A9),
    background = androidx.compose.ui.graphics.Color(0xFFFFFBFF),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFFF3DED2),
)

private val OrangeDarkColors = md3DarkPalette(
    primary = androidx.compose.ui.graphics.Color(0xFFFFB783),
    onPrimary = androidx.compose.ui.graphics.Color(0xFF512400),
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF743600),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDCC4),
    secondary = androidx.compose.ui.graphics.Color(0xFFE5BFA9),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFF5C4030),
    tertiary = androidx.compose.ui.graphics.Color(0xFFCACB8F),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFF48491D),
    background = androidx.compose.ui.graphics.Color(0xFF1F120B),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFF51443B),
)

private val RedLightColors = md3LightPalette(
    primary = androidx.compose.ui.graphics.Color(0xFFBA1A1A),
    onPrimary = androidx.compose.ui.graphics.Color.White,
    primaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDAD6),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF410002),
    secondary = androidx.compose.ui.graphics.Color(0xFF775653),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDAD6),
    tertiary = androidx.compose.ui.graphics.Color(0xFF725B2E),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDEA7),
    background = androidx.compose.ui.graphics.Color(0xFFFFFBFF),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFFF5DDDA),
)

private val RedDarkColors = md3DarkPalette(
    primary = androidx.compose.ui.graphics.Color(0xFFFFB4AB),
    onPrimary = androidx.compose.ui.graphics.Color(0xFF690005),
    primaryContainer = androidx.compose.ui.graphics.Color(0xFF93000A),
    onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFFFFDAD6),
    secondary = androidx.compose.ui.graphics.Color(0xFFE7BDB8),
    secondaryContainer = androidx.compose.ui.graphics.Color(0xFF5D3F3C),
    tertiary = androidx.compose.ui.graphics.Color(0xFFE0C38C),
    tertiaryContainer = androidx.compose.ui.graphics.Color(0xFF584419),
    background = androidx.compose.ui.graphics.Color(0xFF201A19),
    surfaceVariant = androidx.compose.ui.graphics.Color(0xFF534341),
)

@Composable
fun PicaComposeTheme(
    darkTheme: Boolean = run {
        val context = LocalContext.current
        e.L(context) || when (e.al(context).coerceIn(0, 8)) {
            1 -> true
            2 -> isSystemInDarkTheme()
            0 -> false
            else -> isSystemInDarkTheme()
        }
    },
    content: @Composable () -> Unit
) {
    val context = LocalContext.current
    val designLanguage = e.getDesignLanguage(context).coerceIn(0, 1)
    val themeColor = e.al(context).coerceIn(0, 8)
    val baseColorScheme = when (themeColor) {
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
    val colorScheme = if (designLanguage == 1) {
        baseColorScheme.toExpressiveScheme()
    } else {
        baseColorScheme
    }

    if (designLanguage == 1) {
        MaterialExpressiveTheme(
            colorScheme = colorScheme,
            motionScheme = MotionScheme.expressive(),
            shapes = Shapes(),
            typography = PicaExpressiveTypography,
            content = content,
        )
    } else {
        MaterialTheme(
            colorScheme = colorScheme,
            motionScheme = MotionScheme.standard(),
            shapes = PicaShapes,
            typography = PicaTypography,
            content = content,
        )
    }
}
