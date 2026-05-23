package com.picacomic.fregata.compose

import androidx.compose.animation.core.FiniteAnimationSpec
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

object PicaExpressiveMotion {
    @Composable
    fun <T> defaultSpatialSpec(): FiniteAnimationSpec<T> =
        androidx.compose.material3.MaterialTheme.motionScheme.defaultSpatialSpec()

    @Composable
    fun <T> fastSpatialSpec(): FiniteAnimationSpec<T> =
        androidx.compose.material3.MaterialTheme.motionScheme.fastSpatialSpec()

    @Composable
    fun <T> slowSpatialSpec(): FiniteAnimationSpec<T> =
        androidx.compose.material3.MaterialTheme.motionScheme.slowSpatialSpec()

    @Composable
    fun <T> defaultEffectsSpec(): FiniteAnimationSpec<T> =
        androidx.compose.material3.MaterialTheme.motionScheme.defaultEffectsSpec()

    @Composable
    fun <T> fastEffectsSpec(): FiniteAnimationSpec<T> =
        androidx.compose.material3.MaterialTheme.motionScheme.fastEffectsSpec()
}

object PicaExpressiveType {
    val HeadlineEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.headlineSmall.copy(
            fontWeight = FontWeight.Bold,
        )

    val TitleEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.titleLarge.copy(
            fontWeight = FontWeight.Bold,
        )

    val SectionEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.titleMedium.copy(
            fontSize = 17.sp,
            lineHeight = 24.sp,
            fontWeight = FontWeight.Bold,
        )

    val TitleSmallEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.titleSmall.copy(
            fontWeight = FontWeight.Bold,
        )

    val BodyEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.bodyLarge.copy(
            fontWeight = FontWeight.Medium,
        )

    val ListItem: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.bodyLarge.copy(
            fontSize = 18.sp,
            lineHeight = 26.sp,
            fontWeight = FontWeight.Normal,
        )

    val ListItemEmphasized: TextStyle
        @Composable get() = ListItem.copy(
            fontWeight = FontWeight.Medium,
        )

    val LabelEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.labelLarge.copy(
            fontWeight = FontWeight.Bold,
        )

    val MetricEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.titleMedium.copy(
            fontSize = 18.sp,
            lineHeight = 24.sp,
            fontWeight = FontWeight.ExtraBold,
        )

    val CompactMetricEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.labelLarge.copy(
            fontWeight = FontWeight.Bold,
        )
}
