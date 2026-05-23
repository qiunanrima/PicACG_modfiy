package com.picacomic.fregata.compose

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

val PicaTypography = Typography(
    displayLarge = TextStyle(
        fontSize = 57.sp,
        lineHeight = 64.sp,
        fontWeight = FontWeight.Normal,
    ),
    displayMedium = TextStyle(
        fontSize = 45.sp,
        lineHeight = 52.sp,
        fontWeight = FontWeight.Normal,
    ),
    displaySmall = TextStyle(
        fontSize = 36.sp,
        lineHeight = 44.sp,
        fontWeight = FontWeight.Normal,
    ),
    headlineLarge = TextStyle(
        fontSize = 32.sp,
        lineHeight = 40.sp,
        fontWeight = FontWeight.Normal,
    ),
    headlineMedium = TextStyle(
        fontSize = 28.sp,
        lineHeight = 36.sp,
        fontWeight = FontWeight.Normal,
    ),
    headlineSmall = TextStyle(
        fontSize = 24.sp,
        lineHeight = 32.sp,
        fontWeight = FontWeight.Medium,
    ),
    titleLarge = TextStyle(
        fontSize = 22.sp,
        lineHeight = 28.sp,
        fontWeight = FontWeight.Medium,
    ),
    titleMedium = TextStyle(
        fontSize = 16.sp,
        lineHeight = 24.sp,
        fontWeight = FontWeight.Medium,
    ),
    titleSmall = TextStyle(
        fontSize = 14.sp,
        lineHeight = 20.sp,
        fontWeight = FontWeight.Medium,
    ),
    bodyLarge = TextStyle(
        fontSize = 16.sp,
        lineHeight = 24.sp,
        fontWeight = FontWeight.Normal,
    ),
    bodyMedium = TextStyle(
        fontSize = 14.sp,
        lineHeight = 20.sp,
        fontWeight = FontWeight.Normal,
    ),
    bodySmall = TextStyle(
        fontSize = 12.sp,
        lineHeight = 18.sp,
        fontWeight = FontWeight.Normal,
    ),
    labelLarge = TextStyle(
        fontSize = 14.sp,
        lineHeight = 20.sp,
        fontWeight = FontWeight.Medium,
    ),
    labelMedium = TextStyle(
        fontSize = 12.sp,
        lineHeight = 16.sp,
        fontWeight = FontWeight.Medium,
    ),
    labelSmall = TextStyle(
        fontSize = 10.sp,
        lineHeight = 14.sp,
        fontWeight = FontWeight.Medium,
    ),
)
 
val PicaExpressiveTypography = Typography(
    displayLarge = PicaTypography.displayLarge.copy(fontWeight = FontWeight.Bold),
    displayMedium = PicaTypography.displayMedium.copy(fontWeight = FontWeight.Bold),
    displaySmall = PicaTypography.displaySmall.copy(fontWeight = FontWeight.Bold),
    headlineLarge = PicaTypography.headlineLarge.copy(fontWeight = FontWeight.Bold),
    headlineMedium = PicaTypography.headlineMedium.copy(fontWeight = FontWeight.Bold),
    headlineSmall = PicaTypography.headlineSmall.copy(fontWeight = FontWeight.SemiBold),
    titleLarge = PicaTypography.titleLarge.copy(fontWeight = FontWeight.SemiBold),
    titleMedium = PicaTypography.titleMedium.copy(fontWeight = FontWeight.SemiBold),
    titleSmall = PicaTypography.titleSmall.copy(fontWeight = FontWeight.SemiBold),
    bodyLarge = PicaTypography.bodyLarge,
    bodyMedium = PicaTypography.bodyMedium,
    bodySmall = PicaTypography.bodySmall,
    labelLarge = PicaTypography.labelLarge.copy(fontWeight = FontWeight.SemiBold),
    labelMedium = PicaTypography.labelMedium.copy(fontWeight = FontWeight.SemiBold),
    labelSmall = PicaTypography.labelSmall.copy(fontWeight = FontWeight.SemiBold),
)
