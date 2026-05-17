package com.picacomic.fregata.compose

import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.FiniteAnimationSpec
import androidx.compose.runtime.Composable
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp

object PicaExpressiveMotion {
    val Standard: FiniteAnimationSpec<Float> = spring(
        dampingRatio = Spring.DampingRatioNoBouncy,
        stiffness = Spring.StiffnessMedium,
    )

    val Emphasized: FiniteAnimationSpec<Float> = spring(
        dampingRatio = Spring.DampingRatioMediumBouncy,
        stiffness = Spring.StiffnessMediumLow,
    )

    val EmphasizedDp: FiniteAnimationSpec<Dp> = spring(
        dampingRatio = Spring.DampingRatioMediumBouncy,
        stiffness = Spring.StiffnessMediumLow,
    )

    val Press: FiniteAnimationSpec<Float> = spring(
        dampingRatio = Spring.DampingRatioMediumBouncy,
        stiffness = Spring.StiffnessMedium,
    )
}

object PicaExpressiveType {
    val HeadlineEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.headlineSmall.copy(
            fontWeight = FontWeight.ExtraBold,
        )

    val TitleEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.titleLarge.copy(
            fontWeight = FontWeight.Bold,
        )

    val LabelEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.labelLarge.copy(
            fontWeight = FontWeight.Bold,
        )

    val MetricEmphasized: TextStyle
        @Composable get() = androidx.compose.material3.MaterialTheme.typography.titleMedium.copy(
            fontWeight = FontWeight.ExtraBold,
        )
}
