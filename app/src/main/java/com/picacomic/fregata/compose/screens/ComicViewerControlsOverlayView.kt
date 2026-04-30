package com.picacomic.fregata.compose.screens

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.Brightness6
import androidx.compose.material.icons.filled.ChatBubbleOutline
import androidx.compose.material.icons.filled.ExpandMore
import androidx.compose.material.icons.filled.Flip
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.Nightlight
import androidx.compose.material.icons.filled.ScreenRotation
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme

class ComicViewerControlsOverlayView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : FrameLayout(context, attrs) {
    var controlsVisible by mutableStateOf(false)
        private set
    private var pageLabel by mutableStateOf("")
    private var pageProgress by mutableIntStateOf(0)
    private var pageMax by mutableIntStateOf(1)
    private var brightness by mutableFloatStateOf(0f)
    private var autoPagingSeconds by mutableStateOf("1.0s")
    private var isNightMode by mutableStateOf(false)

    var onHide: (() -> Unit)? = null
    var onScreenOrientation: (() -> Unit)? = null
    var onScrollOrientation: (() -> Unit)? = null
    var onAutoPaging: (() -> Unit)? = null
    var onSettings: (() -> Unit)? = null
    var onSelectEpisode: (() -> Unit)? = null
    var onNightMode: (() -> Unit)? = null
    var onComment: (() -> Unit)? = null
    var onPageChanged: ((Int) -> Unit)? = null
    var onBrightnessChanged: ((Int) -> Unit)? = null

    init {
        addView(
            ComposeView(context).apply {
                setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnDetachedFromWindow)
                setContent {
                    PicaComposeTheme {
                        ComicViewerControlsOverlay(
                            visible = controlsVisible,
                            pageLabel = pageLabel,
                            pageProgress = pageProgress,
                            pageMax = pageMax,
                            brightness = brightness,
                            autoPagingSeconds = autoPagingSeconds,
                            isNightMode = isNightMode,
                            onHide = { onHide?.invoke() },
                            onScreenOrientation = { onScreenOrientation?.invoke() },
                            onScrollOrientation = { onScrollOrientation?.invoke() },
                            onAutoPaging = { onAutoPaging?.invoke() },
                            onSettings = { onSettings?.invoke() },
                            onSelectEpisode = { onSelectEpisode?.invoke() },
                            onNightMode = { onNightMode?.invoke() },
                            onComment = { onComment?.invoke() },
                            onPageChanged = { onPageChanged?.invoke(it) },
                            onBrightnessChanged = { onBrightnessChanged?.invoke(it) },
                        )
                    }
                }
            },
            LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT),
        )
    }

    fun updateControlsVisible(visible: Boolean) {
        controlsVisible = visible
    }

    fun setPage(label: String, progress: Int = pageProgress, max: Int = pageMax) {
        pageLabel = label
        pageProgress = progress.coerceIn(0, max.coerceAtLeast(1))
        pageMax = max.coerceAtLeast(1)
    }

    fun setBrightnessValue(value: Int) {
        brightness = value.coerceIn(0, 255).toFloat()
    }

    fun setAutoPagingInterval(intervalMs: Int) {
        autoPagingSeconds = String.format("%.1fs", intervalMs / 1000.0f)
    }

    fun setNightModeValue(enabled: Boolean) {
        isNightMode = enabled
    }
}

@Composable
private fun ComicViewerControlsOverlay(
    visible: Boolean,
    pageLabel: String,
    pageProgress: Int,
    pageMax: Int,
    brightness: Float,
    autoPagingSeconds: String,
    isNightMode: Boolean,
    onHide: () -> Unit,
    onScreenOrientation: () -> Unit,
    onScrollOrientation: () -> Unit,
    onAutoPaging: () -> Unit,
    onSettings: () -> Unit,
    onSelectEpisode: () -> Unit,
    onNightMode: () -> Unit,
    onComment: () -> Unit,
    onPageChanged: (Int) -> Unit,
    onBrightnessChanged: (Int) -> Unit,
) {
    if (!visible) {
        return
    }
    Box(modifier = Modifier.fillMaxSize()) {
        ReaderBrightnessPanel(
            brightness = brightness,
            onBrightnessChanged = onBrightnessChanged,
            modifier = Modifier
                .align(Alignment.CenterStart)
                .padding(start = 12.dp),
        )

        ReaderQuickActions(
            isNightMode = isNightMode,
            onSelectEpisode = onSelectEpisode,
            onNightMode = onNightMode,
            onComment = onComment,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .padding(end = 12.dp),
        )

        ReaderBottomBar(
            pageLabel = pageLabel,
            pageProgress = pageProgress,
            pageMax = pageMax,
            autoPagingSeconds = autoPagingSeconds,
            onPageChanged = onPageChanged,
            onScreenOrientation = onScreenOrientation,
            onScrollOrientation = onScrollOrientation,
            onAutoPaging = onAutoPaging,
            onSettings = onSettings,
            onHide = onHide,
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .padding(horizontal = 14.dp, vertical = 12.dp),
        )
    }
}

@Composable
private fun ReaderBrightnessPanel(
    brightness: Float,
    onBrightnessChanged: (Int) -> Unit,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier
            .width(52.dp)
            .fillMaxHeight(0.42f),
        shape = RoundedCornerShape(26.dp),
        color = Color.Black.copy(alpha = 0.58f),
        tonalElevation = 6.dp,
    ) {
        Column(
            modifier = Modifier.padding(vertical = 12.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.SpaceBetween,
        ) {
            Icon(
                imageVector = Icons.Filled.Brightness6,
                contentDescription = null,
                tint = Color.White,
                modifier = Modifier.size(22.dp),
            )
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth(),
                contentAlignment = Alignment.Center,
            ) {
                Slider(
                    value = brightness,
                    onValueChange = { onBrightnessChanged(it.toInt()) },
                    valueRange = 0f..255f,
                    modifier = Modifier
                        .width(150.dp)
                        .rotate(-90f),
                )
            }
        }
    }
}

@Composable
private fun ReaderQuickActions(
    isNightMode: Boolean,
    onSelectEpisode: () -> Unit,
    onNightMode: () -> Unit,
    onComment: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(28.dp),
        color = Color.Black.copy(alpha = 0.58f),
        tonalElevation = 6.dp,
    ) {
        Column(
            modifier = Modifier.padding(vertical = 8.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            ReaderIconButton(Icons.Filled.GridView, onSelectEpisode)
            ReaderIconButton(
                icon = Icons.Filled.Nightlight,
                onClick = onNightMode,
                selected = isNightMode,
            )
            ReaderIconButton(Icons.Filled.ChatBubbleOutline, onComment)
        }
    }
}

@Composable
private fun ReaderBottomBar(
    pageLabel: String,
    pageProgress: Int,
    pageMax: Int,
    autoPagingSeconds: String,
    onPageChanged: (Int) -> Unit,
    onScreenOrientation: () -> Unit,
    onScrollOrientation: () -> Unit,
    onAutoPaging: () -> Unit,
    onSettings: () -> Unit,
    onHide: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(28.dp),
        color = Color.Black.copy(alpha = 0.62f),
        tonalElevation = 8.dp,
    ) {
        Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                Text(
                    text = pageLabel.ifBlank { "0/0" },
                    color = Color.White,
                    style = MaterialTheme.typography.labelLarge,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.width(64.dp),
                )
                Slider(
                    value = pageProgress.toFloat(),
                    onValueChange = { onPageChanged(it.toInt()) },
                    valueRange = 0f..pageMax.coerceAtLeast(1).toFloat(),
                    modifier = Modifier.weight(1f),
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically,
            ) {
                ReaderActionButton(Icons.Filled.ScreenRotation, "亮屏", onScreenOrientation)
                ReaderActionButton(Icons.Filled.Flip, "翻页", onScrollOrientation)
                ReaderActionButton(Icons.Filled.Timer, autoPagingSeconds, onAutoPaging)
                ReaderActionButton(Icons.Filled.Settings, "设置", onSettings)
                ReaderActionButton(Icons.Filled.ExpandMore, "隐藏", onHide)
            }
        }
    }
}

@Composable
private fun ReaderIconButton(
    icon: ImageVector,
    onClick: () -> Unit,
    selected: Boolean = false,
) {
    IconButton(onClick = onClick, modifier = Modifier.size(48.dp)) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            tint = if (selected) MaterialTheme.colorScheme.primary else Color.White,
        )
    }
}

@Composable
private fun ReaderActionButton(
    icon: ImageVector,
    label: String,
    onClick: () -> Unit,
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(56.dp)
            .background(Color.Transparent, CircleShape),
    ) {
        IconButton(onClick = onClick, modifier = Modifier.size(38.dp)) {
            Icon(imageVector = icon, contentDescription = label, tint = Color.White)
        }
        Text(
            text = label,
            color = Color.White,
            style = MaterialTheme.typography.labelSmall,
            maxLines = 1,
        )
    }
}
