package com.example.ui.theme

import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.graphics.Color

// ====================
// 🎆 Neon Starburst Palette
// ====================

// Core Colors
val NeonPurple = Color(0xFF7B2CFF)
val NeonYellow = Color(0xFFFFE600)
val NeonPink = Color(0xFFFF2E9F)
val NeonRed = Color(0xFFFF1744)

// Background & Surface
val NightPurple = Color(0xFF140028)
val DarkSurface = Color(0xFF1E1033)
val OutlinePurple = Color(0xFF5A4A7A)


// ====================
// 🌞 Light Color Scheme
// ====================

val LightColorScheme = lightColorScheme(
    primary = NeonPurple,
    onPrimary = Color(0xFFF4EFFF),

    secondary = NeonYellow,
    onSecondary = Color(0xFF1A0033),

    tertiary = NeonPink,
    onTertiary = Color.White,

    error = NeonRed,
    onError = Color.White,

    background = Color(0xFFF8F4FF),
    onBackground = Color(0xFF1A0033),

    surface = Color.White,
    onSurface = Color(0xFF1A0033),

    outline = OutlinePurple
)


// ====================
// 🌙 Dark Color Scheme (推荐主用)
// ====================

val DarkColorScheme = darkColorScheme(
    primary = NeonPurple,
    onPrimary = Color.White,

    secondary = NeonYellow,
    onSecondary = Color(0xFF1A0033),

    tertiary = NeonPink,
    onTertiary = Color.White,

    error = NeonRed,
    onError = Color.Black,

    background = NightPurple,
    onBackground = Color(0xFFF4EFFF),

    surface = DarkSurface,
    onSurface = Color(0xFFEADFFF),

    outline = OutlinePurple
)