package com.picacomic.fregata.compose

import androidx.compose.animation.core.FiniteAnimationSpec
import androidx.compose.animation.core.animate
import androidx.compose.foundation.OverscrollEffect
import androidx.compose.foundation.OverscrollFactory
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.drawscope.ContentDrawScope
import androidx.compose.ui.graphics.drawscope.clipRect
import androidx.compose.ui.graphics.drawscope.translate
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.node.DrawModifierNode
import androidx.compose.ui.node.requireDensity
import androidx.compose.ui.unit.Velocity
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlin.math.abs

internal data class PicaOverscrollFactory(private val spec: FiniteAnimationSpec<Float>) : OverscrollFactory {
    override fun createOverscrollEffect(): OverscrollEffect = EdgeSpring(spec)
}

private class EdgeSpring(private val spec: FiniteAnimationSpec<Float>) : OverscrollEffect {
    private var offset by mutableStateOf(Offset.Zero)
    private var rebound: Job? = null
    override val isInProgress get() = offset != Offset.Zero

    override val node: Modifier.Node = object : Modifier.Node(), DrawModifierNode {
        override fun ContentDrawScope.draw() {
            if (offset == Offset.Zero) drawContent()
            else clipRect { translate(offset.x, offset.y) { this@draw.drawContent() } }
        }

        override fun onDetach() {
            rebound?.cancel()
            offset = Offset.Zero
        }
    }

    override fun applyToScroll(delta: Offset, source: NestedScrollSource, performScroll: (Offset) -> Offset): Offset {
        if (!node.isAttached || source != NestedScrollSource.UserInput) return performScroll(delta)
        rebound?.cancel()
        // Reverse drags take up the existing stretch before the list moves again.
        fun relax(amount: Float, drag: Float): Float =
            if (amount * drag < 0f) drag.coerceIn(-abs(amount), abs(amount)) else 0f
        val relaxed = Offset(relax(offset.x, delta.x), relax(offset.y, delta.y))
        offset += relaxed
        val consumed = performScroll(delta - relaxed)
        val excess = delta - relaxed - consumed
        val limit = with(node.requireDensity()) { 64.dp.toPx() }
        fun pull(amount: Float, drag: Float) =
            (amount + drag * 0.35f * (1f - abs(amount) / limit)).coerceIn(-limit, limit)
        offset = Offset(pull(offset.x, excess.x), pull(offset.y, excess.y))
        return relaxed + consumed + excess
    }

    override suspend fun applyToFling(velocity: Velocity, performFling: suspend (Velocity) -> Velocity) {
        if (!node.isAttached) { performFling(velocity); return }
        if (isInProgress) release()
        val remaining = velocity - performFling(velocity)
        if (!node.isAttached || remaining == Velocity.Zero) return
        val limit = with(node.requireDensity()) { 28.dp.toPx() }
        offset += Offset((remaining.x * 0.008f).coerceIn(-limit, limit), (remaining.y * 0.008f).coerceIn(-limit, limit))
        release()
    }

    private fun release() {
        rebound?.cancel()
        val start = offset
        rebound = node.coroutineScope.launch {
            animate(1f, 0f, animationSpec = spec) { fraction, _ ->
                offset = start * fraction
            }
            offset = Offset.Zero
        }
    }

}
