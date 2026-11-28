package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow

import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.semantics
import com.picacomic.fregata.R

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.compose.foundation.clickable
import androidx.compose.ui.draw.clip
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.safeDrawingPadding
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
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
import androidx.compose.material3.IconButtonDefaults
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
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.layout.layout
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.resolvePicaDarkTheme
import com.picacomic.fregata.utils.ThemeColorHelper
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.compose.PicaControlTokens
import com.picacomic.fregata.compose.PicaExpressiveType

class ComicViewerControlsOverlayView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : FrameLayout(context, attrs) {
    var controlsVisible by mutableStateOf(false)
        private set
    internal var readerTheme by mutableStateOf(ThemeColorHelper.resolveStoredThemeIndex(context) to e.L(context))

    private var pageLabel by mutableStateOf("")
    private var pageProgress by mutableIntStateOf(0)
    private var pageMax by mutableIntStateOf(1)
    private var brightness by mutableFloatStateOf(0f)
    private var automaticBrightness by mutableStateOf(false)
    private var autoPagingSeconds by mutableStateOf("1.0s")
    private var isNightMode by mutableStateOf(false)
    private var comicTitle by mutableStateOf("")
    private var episodeTitle by mutableStateOf("")

    var onBack: (() -> Unit)? = null
    var onHint: (() -> Unit)? = null
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
    var onBrightnessModeChanged: ((Boolean) -> Unit)? = null

    init {
        addView(
            ComposeView(context).apply {
                consumeWindowInsets = false
                setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnDetachedFromWindow)
                setContent {
                    val (themeIndex, forceNightMode) = readerTheme
                    PicaComposeTheme(
                        darkTheme = resolvePicaDarkTheme(forceNightMode, themeIndex),
                        themeColorIndex = themeIndex,
                    ) {
                        val motion = MaterialTheme.motionScheme
                        androidx.compose.animation.AnimatedVisibility(
                            visible = controlsVisible,
                            enter = androidx.compose.animation.fadeIn(motion.fastEffectsSpec()) +
                                androidx.compose.animation.scaleIn(motion.fastSpatialSpec(), initialScale = 0.96f),
                            exit = androidx.compose.animation.fadeOut(motion.fastEffectsSpec()) +
                                androidx.compose.animation.scaleOut(motion.fastSpatialSpec(), targetScale = 0.96f),
                        ) {
                            ComicViewerControlsOverlay(
                                comicTitle = comicTitle,
                                episodeTitle = episodeTitle,
                                onBack = { onBack?.invoke() },
                                onHint = { onHint?.invoke() },
                                pageLabel = pageLabel,
                                pageProgress = pageProgress,
                                pageMax = pageMax,
                                brightness = brightness,
                                automaticBrightness = automaticBrightness,
                                onBrightnessModeChanged = { onBrightnessModeChanged?.invoke(it) },
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

    fun setBrightnessMode(automatic: Boolean) {
        automaticBrightness = automatic
    }

    fun setAutoPagingInterval(intervalMs: Int) {
        autoPagingSeconds = String.format("%.1fs", intervalMs / 1000.0f)
    }

    fun setNightModeValue(enabled: Boolean) {
        isNightMode = enabled
    }

    fun setReaderTitles(comic: String, episode: String) {
        comicTitle = comic
        episodeTitle = episode
    }
}

@Composable
private fun ComicViewerControlsOverlay(
    comicTitle: String,
    episodeTitle: String,
    onBack: () -> Unit,
    onHint: () -> Unit,
    pageLabel: String,
    pageProgress: Int,
    pageMax: Int,
    brightness: Float,
    automaticBrightness: Boolean,
    onBrightnessModeChanged: (Boolean) -> Unit,
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
    BoxWithConstraints(modifier = Modifier.fillMaxSize().safeDrawingPadding()) {
        val isTabletWidth = maxWidth >= 600.dp
        val sidePadding = if (isTabletWidth) 28.dp else 12.dp
        val bottomHorizontalPadding = if (isTabletWidth) 32.dp else 14.dp
        val bottomVerticalPadding = if (isTabletWidth) 20.dp else 12.dp
        val bottomBarMaxWidth = if (isTabletWidth) 720.dp else maxWidth
        val sidePanelHeightFraction = if (isTabletWidth) 0.38f else 0.5f

        Surface(
            color = MaterialTheme.colorScheme.surfaceContainerHighest,
            shape = MaterialTheme.shapes.extraLarge,
            modifier = Modifier.align(Alignment.TopCenter)
                .padding(horizontal = sidePadding, vertical = 12.dp)
                .widthIn(max = 720.dp)
                .fillMaxWidth(),
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                IconButton(onClick = onBack) {
                    Icon(Icons.AutoMirrored.Filled.ArrowBack, stringResource(R.string.action_back))
                }
                Column(modifier = Modifier.weight(1f).padding(vertical = 8.dp)) {
                    Text(
                        episodeTitle.ifBlank { comicTitle },
                        style = MaterialTheme.typography.titleSmall,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    if (episodeTitle.isNotBlank() && comicTitle.isNotBlank()) {
                        Text(
                            comicTitle,
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                }
                IconButton(onClick = onHint) {
                    Icon(Icons.Filled.Info, stringResource(R.string.comic_viewer_setting_panel_hint))
                }
            }
        }

        ReaderBrightnessPanel(
            brightness = brightness,
            automaticBrightness = automaticBrightness,
            onBrightnessModeChanged = onBrightnessModeChanged,
            onBrightnessChanged = onBrightnessChanged,
            heightFraction = sidePanelHeightFraction,
            modifier = Modifier
                .align(Alignment.CenterStart)
                .padding(start = sidePadding),
        )

        ReaderQuickActions(
            isNightMode = isNightMode,
            onSelectEpisode = onSelectEpisode,
            onNightMode = onNightMode,
            onComment = onComment,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .padding(end = sidePadding),
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
            maxWidth = bottomBarMaxWidth,
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .padding(horizontal = bottomHorizontalPadding, vertical = bottomVerticalPadding),
        )
    }
}

@Composable
private fun ReaderBrightnessPanel(
    brightness: Float,
    automaticBrightness: Boolean,
    onBrightnessModeChanged: (Boolean) -> Unit,
    onBrightnessChanged: (Int) -> Unit,
    heightFraction: Float,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier
            .width(52.dp)
            .fillMaxHeight(heightFraction)
            .heightIn(min = 220.dp, max = 360.dp),
        shape = RoundedCornerShape(26.dp),
        color = MaterialTheme.colorScheme.surfaceContainerHighest,
        ) {
        Column(
            modifier = Modifier.padding(vertical = 12.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.SpaceBetween,
        ) {
            androidx.compose.material3.FilledTonalIconToggleButton(
                checked = automaticBrightness,
                onCheckedChange = onBrightnessModeChanged,
                modifier = Modifier.size(48.dp),
            ) {
                Icon(
                    imageVector = Icons.Filled.Brightness6,
                    contentDescription = stringResource(R.string.comic_viewer_setting_panel_brightness_auto),
                    modifier = Modifier.size(22.dp),
                )
            }
            ReaderBrightnessSlider(
                brightness = brightness,
                onBrightnessChanged = onBrightnessChanged,
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
                    .padding(vertical = 8.dp),
            )
        }
    }
}

@Composable
private fun ReaderBrightnessSlider(
    brightness: Float,
    onBrightnessChanged: (Int) -> Unit,
    modifier: Modifier = Modifier,
) {
    val brightnessLabel = stringResource(R.string.comic_viewer_setting_panel_brightness_title)
    Slider(
        value = brightness,
        onValueChange = { onBrightnessChanged(it.toInt()) },
        valueRange = 0f..255f,
        modifier = modifier
            .semantics { contentDescription = brightnessLabel }
            .layout { measurable, constraints ->
                val placeable = measurable.measure(
                    constraints.copy(
                        minWidth = constraints.minHeight,
                        maxWidth = constraints.maxHeight,
                        minHeight = constraints.minWidth,
                        maxHeight = constraints.maxWidth,
                    )
                )
                layout(placeable.height, placeable.width) {
                    placeable.place(
                        x = -(placeable.width / 2 - placeable.height / 2),
                        y = -(placeable.height / 2 - placeable.width / 2),
                    )
                }
            }
            .rotate(-90f)  // 用 rotate() 而不是 graphicsLayer
    )
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
        color = MaterialTheme.colorScheme.surfaceContainerHighest,
    ) {
        Column(
            modifier = Modifier.padding(vertical = 8.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            ReaderIconButton(
                Icons.Filled.GridView,
                stringResource(R.string.comic_viewer_setting_panel_select_episode),
                onSelectEpisode,
            )
            ReaderIconButton(
                icon = Icons.Filled.Nightlight,
                label = stringResource(R.string.setting_comic_viewer_night_mode),
                onClick = onNightMode,
                selected = isNightMode,
            )
            ReaderIconButton(
                Icons.Filled.ChatBubbleOutline,
                stringResource(R.string.comic_viewer_setting_panel_comment),
                onComment,
            )
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
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
    maxWidth: androidx.compose.ui.unit.Dp,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier
            .widthIn(max = maxWidth)
            .fillMaxWidth(),
        shape = RoundedCornerShape(28.dp),
        color = MaterialTheme.colorScheme.surfaceContainerHighest,
        tonalElevation = 8.dp,
    ) {
        Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                Text(
                    text = pageLabel.ifBlank { "0/0" },
                    color = MaterialTheme.colorScheme.onSurface,
                    style = PicaExpressiveType.LabelEmphasized,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.width(64.dp),
                )
                val pageLabel = stringResource(R.string.comic_viewer_page_slider)
                Slider(
                    value = pageProgress.toFloat(),
                    onValueChange = { onPageChanged(it.toInt()) },
                    valueRange = 0f..pageMax.coerceAtLeast(1).toFloat(),
                    modifier = Modifier.weight(1f).semantics { contentDescription = pageLabel },
                )
            }
            FlowRow(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                ReaderActionButton(Icons.Filled.ScreenRotation, stringResource(R.string.comic_viewer_setting_panel_screen_orientation), onScreenOrientation)
                ReaderActionButton(Icons.Filled.Flip, stringResource(R.string.comic_viewer_setting_panel_scroll_orientation), onScrollOrientation)
                ReaderActionButton(
                    Icons.Filled.Timer,
                    autoPagingSeconds,
                    onAutoPaging,
                    accessibilityLabel = stringResource(R.string.comic_viewer_setting_panel_auto_paging) + " " + autoPagingSeconds,
                )
                ReaderActionButton(Icons.Filled.Settings, stringResource(R.string.comic_viewer_setting_panel_setting_menu), onSettings)
                ReaderActionButton(Icons.Filled.ExpandMore, stringResource(R.string.comic_viewer_setting_panel_hide), onHide)
            }
        }
    }
}

@Composable
private fun ReaderIconButton(
    icon: ImageVector,
    label: String,
    onClick: () -> Unit,
    selected: Boolean? = null,
) {
    val colors = MaterialTheme.colorScheme
    val state = selected
    IconButton(
        onClick = onClick,
        modifier = Modifier.size(PicaControlTokens.IconButtonSize).then(
            if (state == null) Modifier else Modifier.semantics { this.selected = state },
        ),
        colors = IconButtonDefaults.iconButtonColors(
            containerColor = if (state == true) colors.secondaryContainer else Color.Transparent,
            contentColor = if (state == true) colors.onSecondaryContainer else colors.onSurface,
        ),
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
        )
    }
}

@Composable
private fun ReaderActionButton(
    icon: ImageVector,
    label: String,
    onClick: () -> Unit,
    accessibilityLabel: String = label,
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(56.dp)
            .clip(CircleShape)
            .clickable(role = Role.Button, onClick = onClick)
            .semantics { contentDescription = accessibilityLabel }
            .padding(vertical = 8.dp),
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.onSurface,
            modifier = Modifier.size(24.dp),
        )
        Text(
            text = label,
            modifier = Modifier.clearAndSetSemantics {},
            color = MaterialTheme.colorScheme.onSurface,
            style = MaterialTheme.typography.labelSmall,
            textAlign = TextAlign.Start,
            maxLines = 2,
        )
    }
}
