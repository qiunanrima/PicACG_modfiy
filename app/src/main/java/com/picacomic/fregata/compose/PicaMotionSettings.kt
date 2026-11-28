package com.picacomic.fregata.compose

import android.content.Context
import android.content.SharedPreferences
import androidx.compose.animation.core.FiniteAnimationSpec
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.snap
import androidx.compose.foundation.interaction.InteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.MotionScheme
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.platform.LocalContext

internal val LocalPhysicalMotion = staticCompositionLocalOf { true }
private const val MOTION_KEY = "expressive_physics"
private fun preferences(context: Context) = context.getSharedPreferences("appearance", Context.MODE_PRIVATE)

internal fun setPhysicalMotion(context: Context, enabled: Boolean) {
    preferences(context).edit().putBoolean(MOTION_KEY, enabled).apply()
}

@Composable
internal fun rememberPhysicalMotion(): Boolean {
    val prefs = preferences(LocalContext.current)
    var enabled by remember(prefs) { mutableStateOf(prefs.getBoolean(MOTION_KEY, true)) }
    DisposableEffect(prefs) {
        val listener = SharedPreferences.OnSharedPreferenceChangeListener { _, key ->
            if (key == MOTION_KEY || key == null) enabled = prefs.getBoolean(MOTION_KEY, true)
        }
        prefs.registerOnSharedPreferenceChangeListener(listener)
        enabled = prefs.getBoolean(MOTION_KEY, true)
        onDispose { prefs.unregisterOnSharedPreferenceChangeListener(listener) }
    }
    return enabled
}

internal object InstantMotion : MotionScheme {
    override fun <T> defaultSpatialSpec(): FiniteAnimationSpec<T> = snap()
    override fun <T> fastSpatialSpec(): FiniteAnimationSpec<T> = snap()
    override fun <T> slowSpatialSpec(): FiniteAnimationSpec<T> = snap()
    override fun <T> defaultEffectsSpec(): FiniteAnimationSpec<T> = snap()
    override fun <T> fastEffectsSpec(): FiniteAnimationSpec<T> = snap()
    override fun <T> slowEffectsSpec(): FiniteAnimationSpec<T> = snap()
}

@Composable
internal fun Modifier.pressMotion(source: InteractionSource): Modifier {
    if (!LocalPhysicalMotion.current) return this
    val pressed by source.collectIsPressedAsState()
    val scale = animateFloatAsState(if (pressed) 0.96f else 1f, MaterialTheme.motionScheme.fastSpatialSpec())
    return graphicsLayer { scaleX = scale.value; scaleY = scale.value }
}
