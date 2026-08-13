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

    @Composable
    fun <T> slowEffectsSpec(): FiniteAnimationSpec<T> =
        androidx.compose.material3.MaterialTheme.motionScheme.slowEffectsSpec()

    @Composable
    fun <T> pressSpatialSpec(): FiniteAnimationSpec<T> =
        fastSpatialSpec()

    @Composable
    fun <T> contentResizeSpec(): FiniteAnimationSpec<T> =
        defaultSpatialSpec()

    @Composable
    fun <T> colorStateSpec(): FiniteAnimationSpec<T> =
        fastEffectsSpec()
}

object PicaExpressiveType {
    val HeadlineEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.headlineSmall
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Bold) else base
        }

    val TitleEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.titleLarge
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Bold) else base
        }

    val SectionEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.titleMedium
            return if (isPicaExpressiveTheme()) {
                base.copy(
                    fontSize = 17.sp,
                    lineHeight = 24.sp,
                    fontWeight = FontWeight.Bold,
                )
            } else {
                base
            }
        }

    val TitleSmallEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.titleSmall
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Bold) else base
        }

    val BodyEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.bodyLarge
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Medium) else base
        }

    val ListItem: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.bodyLarge
            return if (isPicaExpressiveTheme()) {
                base.copy(
                    fontSize = 18.sp,
                    lineHeight = 26.sp,
                    fontWeight = FontWeight.Normal,
                )
            } else {
                base
            }
        }

    val ListItemEmphasized: TextStyle
        @Composable get() {
            val base = ListItem
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Medium) else base
        }

    val LabelEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.labelLarge
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Bold) else base
        }

    val MetricEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.titleMedium
            return if (isPicaExpressiveTheme()) {
                base.copy(
                    fontSize = 18.sp,
                    lineHeight = 24.sp,
                    fontWeight = FontWeight.ExtraBold,
                )
            } else {
                base
            }
        }

    val CompactMetricEmphasized: TextStyle
        @Composable get() {
            val base = androidx.compose.material3.MaterialTheme.typography.labelLarge
            return if (isPicaExpressiveTheme()) base.copy(fontWeight = FontWeight.Bold) else base
        }
}
