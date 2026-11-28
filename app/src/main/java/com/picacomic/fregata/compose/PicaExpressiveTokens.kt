package com.picacomic.fregata.compose

import androidx.compose.animation.core.FiniteAnimationSpec
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.TextStyle
import androidx.compose.material3.MaterialTheme
import androidx.compose.ui.unit.dp

/** Shared dimensions for custom controls. Values use the largest size required by
 * a control when multiple variants are shown together. */
object PicaControlTokens {
    val ButtonHeight = 56.dp
    val TextFieldMinHeight = 56.dp
    val IconButtonSize = 48.dp
    val ActionRowHeight = 72.dp
    val EpisodeItemMinHeight = 48.dp
}

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
        @Composable get() = MaterialTheme.typography.headlineSmallEmphasized

    val TitleEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.titleLargeEmphasized

    val SectionEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.titleMediumEmphasized

    val TitleSmallEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.titleSmallEmphasized

    val BodyEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.bodyLargeEmphasized

    val ListItem: TextStyle
        @Composable get() = MaterialTheme.typography.bodyLarge

    val ListItemEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.bodyLargeEmphasized

    val LabelEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.labelLargeEmphasized

    val MetricEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.titleMediumEmphasized

    val CompactMetricEmphasized: TextStyle
        @Composable get() = MaterialTheme.typography.labelLargeEmphasized
}
