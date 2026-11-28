package com.picacomic.fregata.activities

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import androidx.compose.ui.graphics.toArgb
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.background
import androidx.compose.ui.res.colorResource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.absolutePadding
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.WindowInsets as ComposeWindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.safeDrawingPadding
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.ui.res.dimensionResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button as ComposeButton
import androidx.compose.material3.Slider
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.res.stringResource
import kotlin.math.roundToInt
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.picaColorScheme
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.resolvePicaDarkTheme
import com.picacomic.fregata.utils.ThemeColorHelper
import com.google.android.material.R as MaterialR
import android.media.MediaPlayer
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.CountDownTimer
import android.provider.Settings
import android.view.Gravity
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.view.Window
import android.view.WindowInsets
import android.view.WindowInsetsController
import android.view.WindowManager
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.FrameLayout
import android.widget.RelativeLayout
import android.widget.Toast
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.runtime.setValue
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModelProvider
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.screens.ComicViewerComposeHostView
import com.picacomic.fregata.compose.screens.ComicViewerControlsOverlayView
import com.picacomic.fregata.compose.screens.ReaderCommentSidebar
import com.picacomic.fregata.compose.viewmodels.CommentViewModel
import com.picacomic.fregata.objects.ComicEpisodeObject
import com.picacomic.fregata.objects.ComicPageObject
import com.picacomic.fregata.objects.databaseTable.DbComicViewRecordObject
import com.picacomic.fregata.objects.databaseTable.DbComicEpisodeObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject
import com.picacomic.fregata.objects.responses.DataClass.ComicEpisodeResponse.ComicEpisodeResponse
import com.picacomic.fregata.objects.responses.DataClass.ComicPageResponse.ComicPagesResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

/* JADX INFO: loaded from: classes.dex */
class ComicViewerActivity : BaseActivity(), com.picacomic.fregata.a_pkg.d {
    private enum class GesturePanelState {
        HINT,
        TRANSPARENT,
        HIDDEN
    }

    private data class LocalEpisodeSnapshot(
        val episode: ComicEpisodeObject,
        val total: Int
    )


    var comicViewerHostView: ComicViewerComposeHostView? = null
    var comicViewerControlsOverlayView: ComicViewerControlsOverlayView? = null
    private var readerCommentSidebarView: ComposeView? = null
    private var readerCommentSidebarComicId by mutableStateOf<String?>(null)
    var comicId: String? = null
    var currentPage: Int = 0
    var episodeOrder: Int = 0
    var episodeTotal: Int = 0

    var isLandscape: Boolean = false
    var isVerticalScroll: Boolean = false
    var isSystemBrightness: Boolean = false
    var isNightMode: Boolean = false
    var currentPagingPage: Int = 0
    var totalPagingPages: Int = 0
    var totalPages by androidx.compose.runtime.mutableIntStateOf(0)
    var currentEpisodePagingPage: Int = 0
    var totalEpisodePagingPages: Int = 0
    var currentEpisode: ComicEpisodeObject? = null
    var comicTitle: String? = null
    var autoPagingInterval: Int = 0
    var brightnessValue: Int = 0
    var loadedPageOffset: Int = 0
    var hasMovedPastFirstLoadedPage: Boolean = false
    var isLoading: Boolean = false
    var isVolumeKeyPagingEnabled: Boolean = false
    var shouldRestoreRecordPosition: Boolean = false
    var shouldWarnMobileNetwork: Boolean = false
    var offlineMode: Boolean = false
    private var isTabletReader: Boolean = false
    private var readerLandscapeCommentsEnabled by mutableStateOf(false)
    private var readerLandscapeCommentsOnLeft: Boolean = false
    private var readerCommentSidebarHasContent: Boolean = false
    var autoPagingTimer: CountDownTimer? = null
    private var readerTheme by mutableStateOf(0 to false)
    private lateinit var readerRoot: RelativeLayout
    private var showNextEpisodeAction by mutableStateOf(false)
    private var showPreviousEpisodeAction by mutableStateOf(false)
    private var nextEpisodeHintVisible by mutableStateOf(false)
    private var previousEpisodeHintVisible by mutableStateOf(false)
    private var readerNightMaskVisible by mutableStateOf(false)
    var episodeButtonFadeTimer: CountDownTimer? = null
    var comicPagesCall: Call<GeneralResponse<ComicPagesResponse?>?>? = null
    var leftPanelEnterAnimation: Animation? = null
    var leftPanelExitAnimation: Animation? = null
    var rightPanelEnterAnimation: Animation? = null
    var rightPanelExitAnimation: Animation? = null
    var topPanelEnterAnimation: Animation? = null
    var topPanelExitAnimation: Animation? = null
    var bottomPanelEnterAnimation: Animation? = null
    var bottomPanelExitAnimation: Animation? = null
    var comicStatusChangeListener: com.picacomic.fregata.a_pkg.c? = null
    var episodeListCall: Call<GeneralResponse<ComicEpisodeResponse?>?>? = null

    /* JADX INFO: renamed from: if, reason: not valid java name */
    var pageList: ArrayList<ComicPageObject?>? = null
    var episodeList: ArrayList<ComicEpisodeObject?>? = null



    private var readerStatusText by mutableStateOf("")
    private var readerLeftMarginPx by androidx.compose.runtime.mutableIntStateOf(0)
    private var readerRightMarginPx by androidx.compose.runtime.mutableIntStateOf(0)
    private var gesturePanelState by mutableStateOf(GesturePanelState.HIDDEN)
    private var showEpisodeDialog by mutableStateOf(false)
    private var episodeChoices by mutableStateOf<List<ComicEpisodeObject>>(emptyList())
    private var canLoadMoreEpisodes by mutableStateOf(false)
    private var loadingEpisodes by mutableStateOf(false)
    private var showAutoPagingDialog by mutableStateOf(false)
    private var readerPageLabel = ""
    var batteryLevelText: String = "不明"
    private val ih: BroadcastReceiver? = object : BroadcastReceiver() {
        // from class: com.picacomic.fregata.activities.ComicViewerActivity.1
        // android.content.BroadcastReceiver
        override fun onReceive(context: Context?, intent: Intent) {
            try {
                val intExtra = intent.getIntExtra("level", 0)
                this@ComicViewerActivity.batteryLevelText = intExtra.toString() + "%"
            } catch (e: Exception) {
                e.printStackTrace()
                if (this@ComicViewerActivity != null) {
                    Toast.makeText(this@ComicViewerActivity, "cannot parse battery level.", Toast.LENGTH_SHORT)
                        .show()
                }
            }
        }
    }
    private val ii: MediaPlayer? = null

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onCreate(bundle: Bundle?) {
        requestWindowFeature(Window.FEATURE_NO_TITLE)
        super.onCreate(bundle)
        readerTheme = ThemeColorHelper.resolveStoredThemeIndex(this) to e.L(this)
        val matchParent = RelativeLayout.LayoutParams.MATCH_PARENT
        readerRoot = RelativeLayout(this).apply {
            setBackgroundColor(readerColorScheme().surface.toArgb())
            addView(
                FrameLayout(this@ComicViewerActivity).apply { id = R.id.container },
                RelativeLayout.LayoutParams(matchParent, matchParent),
            )
        }
        val readerActions = ComposeView(this).apply {
            consumeWindowInsets = false
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
            setContent {
                ReaderTheme {
                    if (showEpisodeDialog) ReaderEpisodeDialog()
                    if (showAutoPagingDialog) ReaderAutoPagingDialog()
                    Box(Modifier.fillMaxSize()) {
                        if (gesturePanelState != GesturePanelState.HIDDEN) {
                            ReaderGesturePanel(gesturePanelState == GesturePanelState.HINT)
                        }
                        val edge = dimensionResource(R.dimen.width_comic_viewer_setting_panel)
                        val colors = MaterialTheme.colorScheme
                        if (showPreviousEpisodeAction) {
                            ReaderGestureZone(
                                R.string.comic_viewer_setting_panel_previous_episode,
                                previousEpisodeHintVisible, colors.secondaryContainer, colors.onSecondaryContainer,
                                Modifier.align(androidx.compose.ui.AbsoluteAlignment.CenterLeft).width(edge).fillMaxHeight(),
                                ::openPreviousEpisode,
                            )
                        }
                        if (showNextEpisodeAction) {
                            ReaderGestureZone(
                                R.string.comic_viewer_setting_panel_next_episode,
                                nextEpisodeHintVisible, colors.secondaryContainer, colors.onSecondaryContainer,
                                Modifier.align(androidx.compose.ui.AbsoluteAlignment.CenterRight).width(edge).fillMaxHeight(),
                                ::openNextEpisode,
                            )
                        }
                        if (readerNightMaskVisible) {
                            Box(Modifier.fillMaxSize().background(colorResource(R.color.night_mode_mask)))
                        }
                        if (readerStatusText.isNotEmpty()) {
                            val density = androidx.compose.ui.platform.LocalDensity.current
                            Box(Modifier.fillMaxSize().absolutePadding(
                                left = with(density) { readerLeftMarginPx.toDp() },
                                right = with(density) { readerRightMarginPx.toDp() },
                            ), contentAlignment = androidx.compose.ui.AbsoluteAlignment.BottomLeft) {
                                Surface(
                                    onClick = { setReaderControlsVisibility(View.VISIBLE); bP() },
                                    modifier = Modifier.windowInsetsPadding(ComposeWindowInsets.safeDrawing.only(WindowInsetsSides.Left + WindowInsetsSides.Bottom)).padding(2.dp),
                                    color = colors.surfaceContainerHighest,
                                    shape = MaterialTheme.shapes.small,
                                ) {
                                    Row(Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                                        horizontalArrangement = Arrangement.spacedBy(4.dp), verticalAlignment = Alignment.CenterVertically) {
                                        Icon(painterResource(R.drawable.ic_action_action_settings),
                                            stringResource(R.string.comic_viewer_setting_panel_setting_menu), Modifier.size(20.dp))
                                        Text(readerStatusText, style = MaterialTheme.typography.labelSmall, maxLines = 1)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        readerRoot.addView(readerActions, RelativeLayout.LayoutParams(matchParent, matchParent))
        setContentView(readerRoot)
        enterReaderFullscreen()

        if (bundle == null) {
            this.comicViewerHostView = ComicViewerComposeHostView(this)
            findViewById<FrameLayout>(R.id.container).addView(
                this.comicViewerHostView,
                FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.MATCH_PARENT
                )
            )
            this.comicViewerControlsOverlayView = ComicViewerControlsOverlayView(this)
            readerRoot.addView(
                this.comicViewerControlsOverlayView,
                RelativeLayout.LayoutParams(
                    RelativeLayout.LayoutParams.MATCH_PARENT,
                    RelativeLayout.LayoutParams.MATCH_PARENT
                )
            )
            setupReaderCommentSidebar()
            a(this.comicViewerHostView)
            init()
            bF()
            setupComposeControlsOverlay()
            bL()
            bH()
            updateReaderCommentSidebarLayout()
            enterReaderFullscreen()
            return
        }
        finish()
    }

    private fun enterReaderFullscreen() {
        window.setFlags(
            WindowManager.LayoutParams.FLAG_FULLSCREEN,
            WindowManager.LayoutParams.FLAG_FULLSCREEN
        )
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            window.setDecorFitsSystemWindows(false)
            window.decorView.windowInsetsController?.let { controller ->
                controller.hide(WindowInsets.Type.statusBars() or WindowInsets.Type.navigationBars())
                controller.systemBarsBehavior =
                    WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            }
        } else {
            @Suppress("DEPRECATION")
            window.decorView.systemUiVisibility =
                View.SYSTEM_UI_FLAG_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE
        }
    }

    private fun setupReaderCommentSidebar() {
        val commentViewModel = ViewModelProvider(this)[CommentViewModel::class.java]
        val sidebarView = ComposeView(this).apply {
            consumeWindowInsets = false
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnDetachedFromWindow)
            visibility = View.GONE
            setContent {
                ReaderTheme {
                    ReaderCommentSidebar(
                    comicId = this@ComicViewerActivity.readerCommentSidebarComicId,
                    enabled = this@ComicViewerActivity.readerLandscapeCommentsEnabled,
                    viewModel = commentViewModel,
                    onHasContentChanged = { hasContent ->
                        this@ComicViewerActivity.readerCommentSidebarHasContent = hasContent
                        this@ComicViewerActivity.updateReaderCommentSidebarLayout()
                    },
                    )
                }
            }
        }
        this.readerCommentSidebarView = sidebarView
        readerRoot.addView(
            sidebarView,
            RelativeLayout.LayoutParams(
                readerCommentSidebarWidthPx(),
                RelativeLayout.LayoutParams.MATCH_PARENT
            ).apply {
                addRule(if (readerLandscapeCommentsOnLeft) RelativeLayout.ALIGN_PARENT_LEFT else RelativeLayout.ALIGN_PARENT_RIGHT)
            }
        )
    }

    private fun updateReaderCommentSidebarLayout() {
        val sidebarView = this.readerCommentSidebarView ?: return
        val showSidebar = shouldShowReaderCommentSidebar()
        sidebarView.visibility = if (showSidebar) View.VISIBLE else View.GONE
        val sidebarWidth = if (showSidebar) readerCommentSidebarWidthPx() else 0
        (sidebarView.layoutParams as? RelativeLayout.LayoutParams)?.let { params ->
            params.width = readerCommentSidebarWidthPx()
            params.height = RelativeLayout.LayoutParams.MATCH_PARENT
            params.addRule(
                if (readerLandscapeCommentsOnLeft) RelativeLayout.ALIGN_PARENT_LEFT else RelativeLayout.ALIGN_PARENT_RIGHT
            )
            params.addRule(
                if (readerLandscapeCommentsOnLeft) RelativeLayout.ALIGN_PARENT_RIGHT else RelativeLayout.ALIGN_PARENT_LEFT,
                0
            )
            sidebarView.layoutParams = params
        }
        findViewById<FrameLayout>(R.id.container)?.let { container ->
            (container.layoutParams as? RelativeLayout.LayoutParams)?.let { params ->
                params.width = RelativeLayout.LayoutParams.MATCH_PARENT
                params.height = RelativeLayout.LayoutParams.MATCH_PARENT
                params.leftMargin = if (readerLandscapeCommentsOnLeft) sidebarWidth else 0
                params.rightMargin = if (readerLandscapeCommentsOnLeft) 0 else sidebarWidth
                container.layoutParams = params
                readerLeftMarginPx = params.leftMargin
                readerRightMarginPx = params.rightMargin
            }
        }
    }

    private fun shouldShowReaderCommentSidebar(): Boolean {
        return readerLandscapeCommentsEnabled &&
            readerCommentSidebarHasContent &&
            resources.configuration.orientation == Configuration.ORIENTATION_LANDSCAPE &&
            !comicId.isNullOrBlank()
    }

    private fun readerCommentSidebarWidthPx(): Int {
        val displayMetrics = resources.displayMetrics
        val preferred = (360f * displayMetrics.density).toInt()
        val maxWidth = (displayMetrics.widthPixels * 0.42f).toInt()
        val minWidth = (300f * displayMetrics.density).toInt()
        return preferred.coerceIn(minWidth, maxWidth.coerceAtLeast(minWidth))
    }

    fun init() {
        this.isVolumeKeyPagingEnabled = e.Q(this)
        this.isTabletReader = isTabletDevice()
        this.readerLandscapeCommentsEnabled = e.readerLandscapeComments(this)
        this.readerLandscapeCommentsOnLeft = e.readerLandscapeCommentsOnLeft(this)
        this.isLandscape = e.M(this)
        this.isVerticalScroll = e.N(this)
        this.isNightMode = e.L(this)
        this.autoPagingInterval = e.O(this)
        this.hasMovedPastFirstLoadedPage = false
        this.isLoading = false
        this.currentPagingPage = 0
        this.totalPagingPages = 1
        this.currentEpisodePagingPage = 0
        this.totalEpisodePagingPages = 1
        this.loadedPageOffset = 0
        this.shouldRestoreRecordPosition = false
        this.shouldWarnMobileNetwork = true
        this.comicId = getIntent().getStringExtra("EXTRA_KEY_COMIC_ID")
        this.comicViewerHostView?.setComicId(this.comicId)
        this.readerCommentSidebarComicId = this.comicId
        this.offlineMode = getIntent().getBooleanExtra("EXTRA_KEY_OFFLINE_MODE", false)
        this.comicViewerHostView?.setOfflineMode(this.offlineMode)
        this.comicTitle = getIntent().getStringExtra("EXTRA_KEY_COMIC_TITLE")
        this.episodeOrder = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", 1)
        this.episodeTotal = getIntent().getIntExtra("EXTRA_KEY_EPISODE_TOTAL", 1)
        this.currentPage = getIntent().getIntExtra("EXTRA_KEY_LAST_VIEW_PAGE", 0)
        val booleanExtra = getIntent().getBooleanExtra("EXTRA_KEY_VIEW_FROM_RECORD", false)
        val dbComicViewRecordObjectAx = b.ax(this.comicId)
        if (dbComicViewRecordObjectAx != null && booleanExtra) {
            this.loadedPageOffset = dbComicViewRecordObjectAx.getPage()
            this.episodeOrder = dbComicViewRecordObjectAx.getEpisodeOrder()
            this.episodeTotal = dbComicViewRecordObjectAx.getEpisodeTotal()
            this.currentPagingPage = bT()
            this.totalPagingPages = this.currentPagingPage + 1
            this.shouldRestoreRecordPosition = true
        }
        if (this.offlineMode && !hasLocalEpisode(this.episodeOrder)) {
            val firstDownloadedEpisode = firstDownloadedEpisodeOrder()
            if (firstDownloadedEpisode > 0) {
                this.episodeOrder = firstDownloadedEpisode
                this.loadedPageOffset = 0
                this.currentPage = 0
                this.currentPagingPage = 0
                this.shouldRestoreRecordPosition = false
            }
        }
        loadPanelAnimations()
        bJ()
    }

    fun bF() {
        if (episodeList == null) episodeList = ArrayList()
    }

    private fun openNextEpisode() {
        if (episodeOrder < episodeTotal) {
            episodeOrder++
            b(episodeOrder, 0, true)
        } else {
            p(View.GONE)
            Toast.makeText(this, R.string.comic_viewer_no_more_episode, Toast.LENGTH_SHORT).show()
        }
    }

    private fun openPreviousEpisode() {
        if (episodeOrder > 1) {
            episodeOrder--
            b(episodeOrder, 0, true)
        } else {
            q(View.GONE)
            Toast.makeText(this, R.string.comic_viewer_first_episode, Toast.LENGTH_SHORT).show()
        }
    }

    private fun setupComposeControlsOverlay() {
        this.comicViewerControlsOverlayView?.apply {
            setBrightnessValue(this@ComicViewerActivity.brightnessValue)
            setBrightnessMode(this@ComicViewerActivity.isSystemBrightness)
            onBrightnessModeChanged = { automatic -> this@ComicViewerActivity.j(automatic) }
            setAutoPagingInterval(this@ComicViewerActivity.autoPagingInterval)
            setNightModeValue(this@ComicViewerActivity.isNightMode)
            onBack = { this@ComicViewerActivity.onBackPressed() }
            onHint = {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
                this@ComicViewerActivity.updateGesturePanel(GesturePanelState.HINT)
                e.c(this@ComicViewerActivity, true)
            }
            onHide = {
                this@ComicViewerActivity.setReaderControlsVisibility(View.GONE)
            }
            onScreenOrientation = {
                if (this@ComicViewerActivity.isLandscape) {
                    this@ComicViewerActivity.isLandscape = false
                    this@ComicViewerActivity.h(false)
                } else {
                    this@ComicViewerActivity.isLandscape = true
                    this@ComicViewerActivity.h(true)
                }
                e.e(this@ComicViewerActivity, this@ComicViewerActivity.isLandscape)
            }
            onScrollOrientation = {
                if (this@ComicViewerActivity.isVerticalScroll) {
                    this@ComicViewerActivity.isVerticalScroll = false
                    this@ComicViewerActivity.i(false)
                } else {
                    this@ComicViewerActivity.isVerticalScroll = true
                    this@ComicViewerActivity.i(true)
                }
                e.f(this@ComicViewerActivity, this@ComicViewerActivity.isVerticalScroll)
            }
            onAutoPaging = { showAutoPagingDialog = true }
            onSettings = {
                val intent = Intent(this@ComicViewerActivity, PopupActivity::class.java as Class<*>)
                intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_SETTING")
                this@ComicViewerActivity.startActivity(intent)
            }
            onSelectEpisode = {
                this@ComicViewerActivity.toggleEpisodeDialog()
            }
            onNightMode = {
                this@ComicViewerActivity.setNightModeEnabled(!this@ComicViewerActivity.isNightMode)
            }
            onComment = {
                if (this@ComicViewerActivity.comicId != null) {
                    val intent =
                        Intent(this@ComicViewerActivity, PopupActivity::class.java as Class<*>)
                    intent.putExtra("EXTRA_KEY_COMIC_ID", this@ComicViewerActivity.comicId)
                    intent.putExtra("EXTRA_KEY_TYPE", "TYPE_KEY_COMMENT")
                    this@ComicViewerActivity.startActivity(intent)
                }
            }
            onPageChanged = { page ->
                this@ComicViewerActivity.currentPage = page
                this@ComicViewerActivity.comicStatusChangeListener?.b(page, false)
                this@ComicViewerActivity.r(page)
            }
            onBrightnessChanged = { value ->
                this@ComicViewerActivity.m(value)
            }
        }
    }

    private fun toggleEpisodeDialog() {
        showAutoPagingDialog = false
        refreshEpisodeDialog()
        showEpisodeDialog = true
        bN()
    }

    private fun refreshEpisodeDialog() {
        episodeChoices = episodeList.orEmpty().filterNotNull()
        canLoadMoreEpisodes = !offlineMode && currentEpisodePagingPage < totalEpisodePagingPages
    }

    @Composable
    private fun ReaderEpisodeDialog() {
        val currentIndex = episodeChoices.indexOfFirst { it.getOrder() == episodeOrder }
        val gridState = rememberLazyGridState(initialFirstVisibleItemIndex = currentIndex.coerceAtLeast(0))
        LaunchedEffect(currentIndex) {
            if (currentIndex >= 0) gridState.scrollToItem(currentIndex)
        }
        val dismiss = { showEpisodeDialog = false }
        AlertDialog(
            onDismissRequest = dismiss,
            title = { Text(stringResource(R.string.comic_viewer_setting_panel_select_episode)) },
            text = {
                LazyVerticalGrid(
                    columns = GridCells.Adaptive(88.dp),
                    modifier = Modifier.fillMaxWidth().heightIn(max = 320.dp),
                    state = gridState,
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    items(episodeChoices) { episode ->
                        val order = episode.getOrder()
                        FilterChip(
                            selected = order == episodeOrder,
                            colors = FilterChipDefaults.filterChipColors(
                                selectedContainerColor = MaterialTheme.colorScheme.secondaryContainer,
                                selectedLabelColor = MaterialTheme.colorScheme.onSecondaryContainer,
                            ),
                            onClick = {
                                episodeOrder = order
                                setReaderControlsVisibility(View.GONE)
                                b(order, 0, true)
                            },
                            label = {
                                Text(
                                    episode.getTitle()?.takeIf { it.isNotBlank() } ?: "第 $order 话",
                                    maxLines = 2,
                                    overflow = TextOverflow.Ellipsis,
                                )
                            },
                        )
                    }
                }
            },
            shape = MaterialTheme.shapes.extraLarge,
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            tonalElevation = 0.dp,
            confirmButton = {
                if (canLoadMoreEpisodes) {
                    TextButton(onClick = { bN() }, enabled = !loadingEpisodes) {
                        Text(stringResource(R.string.reader_load_more_episodes))
                    }
                }
            },
            dismissButton = {
                TextButton(onClick = dismiss) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    fun bG() {
        this.currentPage = 0
        this.currentPagingPage = 0
        this.totalPagingPages = 1
        this.loadedPageOffset = 0
        this.hasMovedPastFirstLoadedPage = false
        this.shouldRestoreRecordPosition = false
    }

    fun bH() {
        setReaderControlsVisibility(View.GONE)
        h(this.isLandscape)
        i(this.isVerticalScroll)
        setNightModeEnabled(this.isNightMode)
        if (e.K(this)) {
            setReaderControlsVisibility(View.GONE)
            updateGesturePanel(GesturePanelState.HINT)
        } else {
            setReaderControlsVisibility(View.GONE)
            updateGesturePanel(GesturePanelState.TRANSPARENT)
        }
    }

    fun bI() {
        p(View.GONE)
        q(View.GONE)
        n(this.currentPage)
        comicViewerControlsOverlayView?.setReaderTitles(comicTitle.orEmpty(), currentEpisode?.getTitle().orEmpty())
    }

    fun bJ() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M || Settings.System.canWrite(this)) {
            return
        }
        Toast.makeText(
            this,
            R.string.comic_viewer_setting_panel_brightness_manual,
            Toast.LENGTH_SHORT
        ).show()
        val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS)
        intent.setData(Uri.parse("package:" + getPackageName()))
        startActivity(intent)
    }

    private fun loadPanelAnimations() {
        this.leftPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_enter)
        this.leftPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_left_exit)
        this.rightPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_enter)
        this.rightPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_right_exit)
        this.topPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_enter)
        this.topPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_top_exit)
        this.bottomPanelEnterAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_enter)
        this.bottomPanelExitAnimation =
            AnimationUtils.loadAnimation(this, R.anim.comic_viewer_panel_bottom_exit)
    }

    private fun ensurePanelAnimationsLoaded() {
        if (this.leftPanelEnterAnimation == null || this.leftPanelExitAnimation == null || this.rightPanelEnterAnimation == null || this.rightPanelExitAnimation == null || this.bottomPanelEnterAnimation == null || this.bottomPanelExitAnimation == null) {
            loadPanelAnimations()
        }
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onResume() {
        super.onResume()
        refreshReaderTheme()
        enterReaderFullscreen()
        try {
            if (this.ih != null) {
                registerReceiver(this.ih, IntentFilter("android.intent.action.BATTERY_CHANGED"))
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        val resolver = contentResolver
        isSystemBrightness = Settings.System.getInt(
            resolver, Settings.System.SCREEN_BRIGHTNESS_MODE, Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL
        ) == Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC
        brightnessValue = Settings.System.getInt(resolver, Settings.System.SCREEN_BRIGHTNESS, brightnessValue)
        comicViewerControlsOverlayView?.setBrightnessMode(isSystemBrightness)
        comicViewerControlsOverlayView?.setBrightnessValue(brightnessValue)
        this.readerLandscapeCommentsEnabled = e.readerLandscapeComments(this)
        this.readerLandscapeCommentsOnLeft = e.readerLandscapeCommentsOnLeft(this)
        updateReaderCommentSidebarLayout()
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onPause() {
        if (this.currentEpisode != null && this.currentEpisode!!.getTitle() != null) {
            val title = this.currentEpisode!!.getTitle()
            b.a(
                DbComicViewRecordObject(
                    this.comicId,
                    bU() + this.currentPage,
                    title,
                    this.episodeOrder,
                    this.episodeTotal,
                    System.currentTimeMillis()
                )
            )
        }
        try {
            if (this.ih != null) {
                unregisterReceiver(this.ih)
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        super.onPause()
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onSaveInstanceState(bundle: Bundle) {
        var title: String? = ""
        if (this.currentEpisode != null && this.currentEpisode!!.getTitle() != null) {
            title = this.currentEpisode!!.getTitle()
        }
        b.a(
            DbComicViewRecordObject(
                this.comicId,
                bU() + this.currentPage,
                title,
                this.episodeOrder,
                this.episodeTotal,
                System.currentTimeMillis()
            )
        )
        f.D(TAG, "Save View Record: ")
        super.onSaveInstanceState(bundle)
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected override fun onStop() {
        bP()
        if (this.comicPagesCall != null) {
            this.comicPagesCall!!.cancel()
        }
        if (this.episodeListCall != null) {
            this.episodeListCall!!.cancel()
        }
        if (this.bottomPanelEnterAnimation != null) {
            this.bottomPanelEnterAnimation!!.cancel()
        }
        if (this.bottomPanelExitAnimation != null) {
            this.bottomPanelExitAnimation!!.cancel()
        }
        if (this.leftPanelEnterAnimation != null) {
            this.leftPanelEnterAnimation!!.cancel()
        }
        if (this.leftPanelExitAnimation != null) {
            this.leftPanelExitAnimation!!.cancel()
        }
        if (this.rightPanelEnterAnimation != null) {
            this.rightPanelEnterAnimation!!.cancel()
        }
        if (this.rightPanelExitAnimation != null) {
            this.rightPanelExitAnimation!!.cancel()
        }
        if (this.topPanelEnterAnimation != null) {
            this.topPanelEnterAnimation!!.cancel()
        }
        if (this.topPanelExitAnimation != null) {
            this.topPanelExitAnimation!!.cancel()
        }
        if (this.episodeButtonFadeTimer != null) {
            this.episodeButtonFadeTimer!!.cancel()
        }
        super.onStop()
    }

    override fun onDestroy() {
        a(null as com.picacomic.fregata.a_pkg.c?)
        this.comicViewerHostView?.release()
        this.comicViewerHostView = null
        this.comicViewerControlsOverlayView = null
        super.onDestroy()
    }

    fun j(i: Int): Boolean {
        val listFind: MutableList<*>? =
            DownloadComicEpisodeObject.find<DownloadComicEpisodeObject?>(
                DownloadComicEpisodeObject::class.java,
                "comic_id = ? and episode_order = ? and status != ?",
                this.comicId,
                i.toString() + "",
                "0"
            )
        if (listFind != null && listFind.size > 0) {
            f.D(TAG, "HAVE DOWNLOAD EP")
            return true
        }
        f.D(TAG, "NO DOWNLOAD EP")
        return false
    }

    private fun hasLocalEpisode(order: Int): Boolean {
        return findReadableLocalEpisode(order) != null
    }

    private fun findLocalEpisode(order: Int): DownloadComicEpisodeObject? {
        return try {
            DownloadComicEpisodeObject.find<DownloadComicEpisodeObject?>(
                DownloadComicEpisodeObject::class.java,
                "comic_id = ? and episode_order = ?",
                this.comicId,
                order.toString()
            )
                ?.filterIsInstance<DownloadComicEpisodeObject>()
                ?.firstOrNull()
        } catch (_: Exception) {
            null
        }
    }

    private fun findReadableLocalEpisode(order: Int): LocalEpisodeSnapshot? {
        val downloadedEpisode = findLocalEpisode(order)
        if (downloadedEpisode != null) {
            return LocalEpisodeSnapshot(
                episode = downloadedEpisode.getComicEpisodeObject(),
                total = downloadedEpisode.getTotal()
            )
        }
        val cachedEpisode = findCachedEpisodeByOrder(order) ?: return null
        val cachedPageCount = countCachedPages(cachedEpisode.getEpisodeId())
        if (cachedPageCount <= 0) {
            return null
        }
        return LocalEpisodeSnapshot(
            episode = cachedEpisode.getComicEpisodeObject(),
            total = cachedEpisode.getTotal().takeIf { it > 0 } ?: cachedPageCount
        )
    }

    private fun countCachedPages(episodeId: String?): Int {
        if (episodeId.isNullOrBlank()) {
            return 0
        }
        return try {
            DownloadComicPageObject.count<DownloadComicPageObject>(
                DownloadComicPageObject::class.java,
                "episode_id = ?",
                arrayOf(episodeId)
            ).toInt()
        } catch (_: Exception) {
            0
        }
    }

    fun bL() {
        if ((this.offlineMode && hasLocalEpisode(this.episodeOrder)) || j(this.episodeOrder)) {
            c(this.episodeOrder, this.currentPagingPage, false)
        } else {
            d(this.episodeOrder, this.currentPagingPage, false)
        }
    }

    fun b(i: Int, i2: Int, z: Boolean) {
        if ((this.offlineMode && hasLocalEpisode(i)) || j(i)) {
            c(i, i2, z)
        } else {
            d(i, i2, z)
        }
    }

    @Synchronized
    fun c(i: Int, i2: Int, z: Boolean) {
        if (z) {
            try {
                bG()
                this.pageList?.clear()
            } catch (th: Throwable) {
                throw th
            }
        }
        val localEpisode = findReadableLocalEpisode(i)
        if (localEpisode != null) {
            this.currentEpisode = localEpisode.episode
            this.totalPages = localEpisode.total
            if (this.totalPages < hq) {
                this.totalPagingPages = 1
            } else if (this.totalPages % hq == 0) {
                this.totalPagingPages = this.totalPages / hq
            } else {
                this.totalPagingPages = (this.totalPages / hq) + 1
            }
            var listFindWithQuery: MutableList<*>? = null
            if (this.totalPagingPages > i2) {
                listFindWithQuery = DownloadComicPageObject.findWithQuery<DownloadComicPageObject?>(
                    DownloadComicPageObject::class.java,
                    "SELECT * FROM download_comic_page_object WHERE comic_id = ? and episode_id = ? ORDER BY id ASC LIMIT ? OFFSET ?",
                    this.comicId,
                    this.currentEpisode!!.getEpisodeId(),
                    hq.toString() + "",
                    (hq * i2).toString() + ""
                )
                f.D(
                    TAG,
                    "SIZE = " + listFindWithQuery.size + "LIMIT = " + hq + " OFFSET = " + (hq * i2)
                )
                this.currentPagingPage = i2 + 1
            }
            if (this.pageList == null) {
                this.pageList = ArrayList<ComicPageObject?>()
            }
            if (listFindWithQuery != null && listFindWithQuery.size > 0) {
                val arrayList = ArrayList<ComicPageObject?>()
                for (i3 in listFindWithQuery.indices) {
                    val comicPageObject =
                        (listFindWithQuery.get(i3) as DownloadComicPageObject).getComicPageObject()
                    this.pageList!!.add(comicPageObject)
                    arrayList.add(comicPageObject)
                }
                this.comicStatusChangeListener!!.a(
                    arrayList,
                    this.loadedPageOffset,
                    this.shouldRestoreRecordPosition,
                    z
                )
                if (this.shouldRestoreRecordPosition) {
                    this.shouldRestoreRecordPosition = false
                }
                o(this.pageList!!.size)
                bI()
            } else {
                f.D(TAG, "Load DownloadComicPageObjectList DB FAILED")
            }
        } else {
            f.D(TAG, "Load DownloadComicEpisodeObject DB FAILED")
            if (this.offlineMode) {
                bC()
                Toast.makeText(this, getString(R.string.downloaded) + " 0", Toast.LENGTH_SHORT).show()
            }
        }
        logPagingState()
    }

    fun d(i: Int, i2: Int, z: Boolean) {
        if (this.offlineMode) {
            c(i, i2, z)
            return
        }
        f.D(TAG, "Call Comic Page ?")
        if (i2 >= this.totalPagingPages || this.isLoading) {
            return
        }
        this.isLoading = true
        C(getResources().getString(R.string.loading_comic_viewer))
        val dVar = com.picacomic.fregata.b.d(this)
        val i3 = i2 + 1
        f.D(TAG, "Request comic pages: comicId=${this.comicId} episode=$i page=$i3")
        this.comicPagesCall = dVar.dO().a(e.z(this), this.comicId, i, i3)
        this.comicPagesCall!!.enqueue(object : Callback<GeneralResponse<ComicPagesResponse?>?> {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.20
            // retrofit2.Callback
            override fun onResponse(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                response: Response<GeneralResponse<ComicPagesResponse?>?>
            ) {
                if (response.code() == 200) {
                    val data = response.body()?.data
                    val pages = data?.getPages()
                    val docs = pages?.getDocs()
                    if (pages != null && !docs.isNullOrEmpty()) {
                        hq = pages.getLimit().takeIf { it > 0 } ?: hq
                        if (z) {
                            this@ComicViewerActivity.bG()
                            this@ComicViewerActivity.pageList?.clear()
                        }
                        this@ComicViewerActivity.totalPages =
                            pages.getTotal()
                        this@ComicViewerActivity.currentPagingPage =
                            pages.getPage()
                        this@ComicViewerActivity.totalPagingPages =
                            pages.getPages()
                        this@ComicViewerActivity.currentEpisode = data.getEp()
                        if (this@ComicViewerActivity.pageList == null) {
                            this@ComicViewerActivity.pageList = ArrayList<ComicPageObject?>()
                        }
                        for (i4 in docs.indices) {
                            this@ComicViewerActivity.pageList!!.add(docs.get(i4))
                        }
                        this@ComicViewerActivity.persistCachedEpisodePages(
                            docs,
                            this@ComicViewerActivity.currentEpisode,
                            this@ComicViewerActivity.totalPages
                        )
                        this@ComicViewerActivity.logPagingState()
                        this@ComicViewerActivity.comicStatusChangeListener!!.a(
                            docs,
                            this@ComicViewerActivity.loadedPageOffset,
                            this@ComicViewerActivity.shouldRestoreRecordPosition,
                            z
                        )
                        if (this@ComicViewerActivity.shouldRestoreRecordPosition) {
                            this@ComicViewerActivity.shouldRestoreRecordPosition = false
                        }
                        this@ComicViewerActivity.o(this@ComicViewerActivity.pageList!!.size)
                        this@ComicViewerActivity.bI()
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@ComicViewerActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                this@ComicViewerActivity.isLoading = false
                this@ComicViewerActivity.bC()
            }

            // retrofit2.Callback
            override fun onFailure(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                th: Throwable
            ) {
                this@ComicViewerActivity.isLoading = false
                th.printStackTrace()
                this@ComicViewerActivity.bC()
            }
        })
    }

    fun bM() {
        if (this.offlineMode) {
            loadPreviousDownloadedPageBlock()
            return
        }
        f.D(TAG, "Call Comic Page ?")
        if (bT() <= 0 || this.isLoading) {
            return
        }
        this.isLoading = true
        C(getResources().getString(R.string.loading_comic_viewer))
        this.comicPagesCall =
            com.picacomic.fregata.b.d(this).dO().a(e.z(this), this.comicId, this.episodeOrder, bT())
        this.comicPagesCall!!.enqueue(object : Callback<GeneralResponse<ComicPagesResponse?>?> {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.21
            // retrofit2.Callback
            override fun onResponse(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                response: Response<GeneralResponse<ComicPagesResponse?>?>
            ) {
                if (response.code() == 200) {
                    val pages = response.body()?.data?.getPages()
                    val docs = pages?.getDocs()
                    if (pages != null && !docs.isNullOrEmpty()) {
                        hq = pages.getLimit().takeIf { it > 0 } ?: hq
                        this@ComicViewerActivity.totalPages =
                            pages.getTotal()
                        this@ComicViewerActivity.pageList!!.addAll(0, docs)
                        this@ComicViewerActivity.loadedPageOffset =
                            (pages.getPage() - 1) * hq
                        this@ComicViewerActivity.persistCachedEpisodePages(
                            docs,
                            this@ComicViewerActivity.currentEpisode,
                            this@ComicViewerActivity.totalPages
                        )
                        this@ComicViewerActivity.logPagingState()
                        this@ComicViewerActivity.comicStatusChangeListener!!.a(
                            docs,
                            this@ComicViewerActivity.loadedPageOffset,
                            false,
                            false
                        )
                        this@ComicViewerActivity.o(this@ComicViewerActivity.pageList!!.size)
                        this@ComicViewerActivity.bI()
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@ComicViewerActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                this@ComicViewerActivity.isLoading = false
                this@ComicViewerActivity.bC()
            }

            // retrofit2.Callback
            override fun onFailure(
                call: Call<GeneralResponse<ComicPagesResponse?>?>,
                th: Throwable
            ) {
                this@ComicViewerActivity.isLoading = false
                th.printStackTrace()
                this@ComicViewerActivity.bC()
            }
        })
    }

    private fun persistCachedEpisodePages(
        docs: ArrayList<ComicPageObject>,
        episode: ComicEpisodeObject?,
        total: Int
    ) {
        if (this.comicId.isNullOrBlank() || episode?.getEpisodeId().isNullOrBlank()) {
            return
        }
        try {
            val existingEpisode = findLocalEpisode(episode!!.getOrder())
            if (existingEpisode != null) {
                existingEpisode.setTitle(episode.getTitle())
                existingEpisode.setUpdatedAt(episode.getUpdatedAt())
                existingEpisode.setTotal(total)
                existingEpisode.save()
            }
            upsertCachedEpisode(episode, total)
            docs.forEach { page ->
                val media = page.getMedia()
                if (page.getComicPageId().isNullOrBlank() || media == null) {
                    return@forEach
                }
                if (b.az(this.comicId, page.getComicPageId()) == null) {
                    b.a(DownloadComicPageObject(this.comicId, episode.getEpisodeId(), "", page))
                }
            }
        } catch (ex: Exception) {
            ex.printStackTrace()
        }
    }

    private fun findCachedEpisodeByOrder(order: Int): DbComicEpisodeObject? {
        return try {
            DbComicEpisodeObject.find<DbComicEpisodeObject?>(
                DbComicEpisodeObject::class.java,
                "comic_id = ? and episode_order = ?",
                this.comicId,
                order.toString()
            )
                ?.filterIsInstance<DbComicEpisodeObject>()
                ?.firstOrNull()
        } catch (_: Exception) {
            null
        }
    }

    private fun upsertCachedEpisode(episode: ComicEpisodeObject, total: Int? = null) {
        if (this.comicId.isNullOrBlank() || episode.getEpisodeId().isNullOrBlank()) {
            return
        }
        val existingEpisode = findCachedEpisodeByOrder(episode.getOrder())
        if (existingEpisode == null) {
            DbComicEpisodeObject(this.comicId, episode).apply {
                if (total != null) {
                    setTotal(total)
                }
                save()
            }
        } else {
            existingEpisode.setEpisodeId(episode.getEpisodeId())
            existingEpisode.setTitle(episode.getTitle())
            existingEpisode.setEpisodeOrder(episode.getOrder())
            existingEpisode.setUpdatedAt(episode.getUpdatedAt())
            if (total != null) {
                existingEpisode.setTotal(total)
            }
            existingEpisode.save()
        }
    }

    private fun loadPreviousDownloadedPageBlock() {
        if (bT() <= 0 || this.isLoading || this.currentEpisode == null) {
            return
        }
        this.isLoading = true
        val previousPagingPage = bT() - 1
        try {
            val downloadedPages = DownloadComicPageObject.findWithQuery<DownloadComicPageObject?>(
                DownloadComicPageObject::class.java,
                "SELECT * FROM download_comic_page_object WHERE comic_id = ? and episode_id = ? ORDER BY id ASC LIMIT ? OFFSET ?",
                this.comicId,
                this.currentEpisode!!.getEpisodeId(),
                hq.toString(),
                (hq * previousPagingPage).toString()
            )
                ?.filterIsInstance<DownloadComicPageObject>()
                .orEmpty()
            if (downloadedPages.isNotEmpty()) {
                val previousPages = ArrayList<ComicPageObject?>()
                downloadedPages.forEach { downloadedPage ->
                    previousPages.add(downloadedPage.getComicPageObject())
                }
                if (this.pageList == null) {
                    this.pageList = ArrayList<ComicPageObject?>()
                }
                this.pageList!!.addAll(0, previousPages)
                this.loadedPageOffset -= hq
                this.comicStatusChangeListener!!.a(previousPages, this.loadedPageOffset, false, false)
                o(this.pageList!!.size)
                bI()
            }
        } catch (ex: Exception) {
            ex.printStackTrace()
        } finally {
            this.isLoading = false
            bC()
        }
    }

    private fun logPagingState() {
        f.D(TAG, "current Page = " + this.currentPage)
        f.D(TAG, "Comic Paging Page = " + this.currentPagingPage)
        f.D(TAG, "Comic Paging Page Total = " + this.totalPagingPages)
        f.D(TAG, "jumpingPage = " + this.loadedPageOffset)
        f.D(TAG, "episodeOrder = " + this.episodeOrder)
        f.D(TAG, "episodeTotal = " + this.episodeTotal)
        f.D(TAG, "episodePagingPage = " + this.currentEpisodePagingPage)
        f.D(TAG, "episodePagingPageTotal = " + this.totalEpisodePagingPages)
    }

    fun bN() {
        if (this.offlineMode) {
            loadDownloadedEpisodeList()
            return
        }
        if (!loadingEpisodes && this.currentEpisodePagingPage < this.totalEpisodePagingPages) {
            loadingEpisodes = true
            bA()
            this.episodeListCall = com.picacomic.fregata.b.d(this).dO()
                .b(e.z(this), this.comicId, this.currentEpisodePagingPage + 1)
            this.episodeListCall!!.enqueue(object :
                Callback<GeneralResponse<ComicEpisodeResponse?>?> {
                // from class: com.picacomic.fregata.activities.ComicViewerActivity.22
                // retrofit2.Callback
                override fun onResponse(
                    call: Call<GeneralResponse<ComicEpisodeResponse?>?>,
                    response: Response<GeneralResponse<ComicEpisodeResponse?>?>
                ) {
                    loadingEpisodes = false
                    if (response.code() == 200) {
                        if (response.body()!!.data != null && response.body()!!.data!!.getEps() != null && response.body()!!.data!!.getEps()
                                .getDocs() != null && response.body()!!.data!!.getEps()
                                .getDocs().size > 0
                        ) {
                            this@ComicViewerActivity.episodeTotal =
                                response.body()!!.data!!.getEps().getTotal()
                            this@ComicViewerActivity.currentEpisodePagingPage =
                                response.body()!!.data!!.getEps().getPage()
                            this@ComicViewerActivity.totalEpisodePagingPages =
                                response.body()!!.data!!.getEps().getPages()
                            for (i in response.body()!!.data!!.getEps().getDocs().indices) {
                                this@ComicViewerActivity.episodeList!!.add(
                                    response.body()!!.data!!.getEps().getDocs().get(i)
                                )
                            }
                            this@ComicViewerActivity.persistEpisodeDirectory(
                                response.body()!!.data!!.getEps().getDocs()
                            )
                            this@ComicViewerActivity.refreshEpisodeDialog()
                            f.D(TAG, this@ComicViewerActivity.episodeList!!.size.toString() + "")
                        }
                    } else {
                        try {
                            com.picacomic.fregata.b.c(
                                this@ComicViewerActivity,
                                response.code(),
                                response.errorBody()!!.string()
                            ).dN()
                        } catch (e: Exception) {
                            e.printStackTrace()
                        }
                    }
                    this@ComicViewerActivity.bC()
                }

                // retrofit2.Callback
                override fun onFailure(
                    call: Call<GeneralResponse<ComicEpisodeResponse?>?>,
                    th: Throwable
                ) {
                    loadingEpisodes = false
                    th.printStackTrace()
                    this@ComicViewerActivity.bC()
                    com.picacomic.fregata.b.c(this@ComicViewerActivity).dN()
                }
            })
        }
    }

    private fun loadDownloadedEpisodeList() {
        if (this.episodeList == null) {
            this.episodeList = ArrayList<ComicEpisodeObject?>()
        }
        if (this.episodeList!!.isNotEmpty()) {
            return
        }
        try {
            val cachedEpisodes = DbComicEpisodeObject.find(
                DbComicEpisodeObject::class.java,
                "comic_id = ?",
                this.comicId
            )
                ?.filterIsInstance<DbComicEpisodeObject>()
                ?.sortedBy { it.episodeOrder }
                .orEmpty()
            val downloadedEpisodes = if (cachedEpisodes.isEmpty()) {
                DownloadComicEpisodeObject.find(
                    DownloadComicEpisodeObject::class.java,
                    "comic_id = ? and status != ?",
                    this.comicId,
                    "0"
                )
                    ?.filterIsInstance<DownloadComicEpisodeObject>()
                    ?.sortedBy { it.episodeOrder }
                    .orEmpty()
            } else {
                emptyList()
            }
            this.episodeTotal = if (cachedEpisodes.isNotEmpty()) cachedEpisodes.size else downloadedEpisodes.size
            this.currentEpisodePagingPage = 1
            this.totalEpisodePagingPages = 1
            cachedEpisodes.forEach { episode ->
                this.episodeList!!.add(episode.comicEpisodeObject.apply {
                    setStatus(b.ay(this@ComicViewerActivity.comicId, episode.getEpisodeId())?.getStatus() ?: 0)
                })
            }
            downloadedEpisodes.forEach { episode ->
                this.episodeList!!.add(episode.comicEpisodeObject)
            }
            refreshEpisodeDialog()
        } catch (ex: Exception) {
            ex.printStackTrace()
        } finally {
            bC()
        }
    }

    private fun firstDownloadedEpisodeOrder(): Int {
        return try {
            val cachedEpisodes = DbComicEpisodeObject.findWithQuery(
                DbComicEpisodeObject::class.java,
                "SELECT * FROM db_comic_episode_object WHERE comic_id = ? ORDER BY episode_order ASC",
                this.comicId
            )
                ?.filterIsInstance<DbComicEpisodeObject>()
                .orEmpty()
            val firstCachedEpisode = cachedEpisodes.firstOrNull { episode ->
                countCachedPages(episode.getEpisodeId()) > 0
            }
            firstCachedEpisode?.getEpisodeOrder() ?: run {
                val downloadedEpisodes = DownloadComicEpisodeObject.findWithQuery(
                    DownloadComicEpisodeObject::class.java,
                    "SELECT * FROM download_comic_episode_object WHERE comic_id = ? and status != ? ORDER BY episode_order ASC LIMIT 1",
                    this.comicId,
                    "0"
                )
                    ?.filterIsInstance<DownloadComicEpisodeObject>()
                    .orEmpty()
                downloadedEpisodes.firstOrNull()?.getEpisodeOrder() ?: 0
            }
        } catch (_: Exception) {
            0
        }
    }

    private fun persistEpisodeDirectory(docs: List<ComicEpisodeObject>) {
        if (this.comicId.isNullOrBlank() || docs.isEmpty()) {
            return
        }
        try {
            docs.forEach { episode ->
                if (episode.getEpisodeId().isNullOrBlank()) {
                    return@forEach
                }
                upsertCachedEpisode(episode)
            }
        } catch (ex: Exception) {
            ex.printStackTrace()
        }
    }

    fun h(z: Boolean) {
        if (isTabletReader) {
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_FULL_SENSOR)
            this.comicStatusChangeListener?.M(ActivityInfo.SCREEN_ORIENTATION_FULL_SENSOR)
            return
        }
        if (!z) {
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE)
            this.comicStatusChangeListener?.M(ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE)
            return
        }
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT)
        this.comicStatusChangeListener?.M(ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT)
    }

    private fun isTabletDevice(): Boolean {
        val configuration = resources.configuration
        val windowShortestSideDp = minOf(configuration.screenWidthDp, configuration.screenHeightDp)
        return configuration.smallestScreenWidthDp >= 600 ||
            windowShortestSideDp >= 600
    }

    fun i(z: Boolean) {
        comicStatusChangeListener?.B(z)
    }

    fun a(cVar: com.picacomic.fregata.a_pkg.c?) {
        this.comicStatusChangeListener = cVar
    }

    fun setReaderControlsVisibility(visibility: Int) {
        enterReaderFullscreen()
        ensurePanelAnimationsLoaded()
        this.comicViewerControlsOverlayView?.updateControlsVisible(visibility == View.VISIBLE)
        if (visibility == View.VISIBLE) {
            this.comicViewerControlsOverlayView?.bringToFront()
            updateGesturePanel(GesturePanelState.HIDDEN)
            return
        }
        showEpisodeDialog = false
        showAutoPagingDialog = false
        updateGesturePanel(GesturePanelState.TRANSPARENT)
    }

    private fun updateGesturePanel(state: GesturePanelState) {
        gesturePanelState = state
    }

    @Composable
    private fun ReaderGesturePanel(showHint: Boolean) {
        val edge = dimensionResource(R.dimen.width_comic_viewer_setting_panel)
        val colors = MaterialTheme.colorScheme
        val openControls = {
            setReaderControlsVisibility(View.VISIBLE)
            bP()
        }
        val panelModifier = Modifier.fillMaxSize()
        Column(if (showHint) panelModifier.safeDrawingPadding() else panelModifier) {
            ReaderGestureZone(
                R.string.comic_viewer_setting_panel_setting_menu, showHint,
                colors.primaryContainer, colors.onPrimaryContainer,
                Modifier.fillMaxWidth().height(edge), openControls,
            )
            Row(Modifier.weight(1f).fillMaxWidth()) {
                ReaderGestureZone(
                    R.string.comic_viewer_setting_panel_previous_page_vertical, showHint,
                    colors.secondaryContainer, colors.onSecondaryContainer,
                    Modifier.width(edge).fillMaxHeight(), ::bS,
                )
                if (showHint) {
                    ReaderGestureZone(
                        R.string.comic_viewer_setting_panel_gesture_area, true,
                        colors.tertiaryContainer, colors.onTertiaryContainer,
                        Modifier.weight(1f).fillMaxHeight(),
                    ) {
                        updateGesturePanel(GesturePanelState.TRANSPARENT)
                        e.c(this@ComicViewerActivity, false)
                    }
                } else {
                    Box(Modifier.weight(1f))
                }
                ReaderGestureZone(
                    R.string.comic_viewer_setting_panel_next_page_vertical, showHint,
                    colors.secondaryContainer, colors.onSecondaryContainer,
                    Modifier.width(edge).fillMaxHeight(), ::bR,
                )
            }
            Row(Modifier.fillMaxWidth().height(edge)) {
                ReaderGestureZone(
                    R.string.comic_viewer_setting_panel_setting_menu, showHint,
                    colors.primaryContainer, colors.onPrimaryContainer,
                    Modifier.width(edge).fillMaxHeight(), openControls,
                )
                ReaderGestureZone(
                    R.string.comic_viewer_setting_panel_next_page, showHint,
                    colors.secondaryContainer, colors.onSecondaryContainer,
                    Modifier.weight(1f).fillMaxHeight(), ::bR,
                )
            }
        }
    }

    @Composable
    private fun ReaderGestureZone(
        label: Int,
        showHint: Boolean,
        color: androidx.compose.ui.graphics.Color,
        contentColor: androidx.compose.ui.graphics.Color,
        modifier: Modifier,
        onClick: () -> Unit,
    ) {
        val text = stringResource(label)
        Box(
            modifier.clickable(role = Role.Button, onClickLabel = text, onClick = onClick),
            contentAlignment = Alignment.Center,
        ) {
            if (showHint) {
                Surface(
                    modifier = Modifier.fillMaxSize().padding(2.dp),
                    color = color,
                    contentColor = contentColor,
                    shape = MaterialTheme.shapes.large,
                ) {
                    Box(Modifier.padding(6.dp), contentAlignment = Alignment.Center) {
                        Text(text, textAlign = TextAlign.Center, style = MaterialTheme.typography.labelLarge)
                    }
                }
            }
        }
    }

    @Composable
    private fun ReaderAutoPagingDialog() {
        var seconds by remember { mutableStateOf((autoPagingInterval / 1000f).coerceIn(1f, 11f)) }
        val dismiss = { showAutoPagingDialog = false }
        AlertDialog(
            onDismissRequest = dismiss,
            title = { Text(stringResource(R.string.comic_viewer_setting_panel_auto_paging)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(String.format("%.1f", seconds) + " " + stringResource(R.string.second))
                    Slider(
                        value = seconds,
                        onValueChange = { seconds = it },
                        valueRange = 1f..11f,
                        steps = 99,
                        modifier = Modifier.fillMaxWidth(),
                    )
                    Text(
                        stringResource(R.string.comic_viewer_toast_auto_paging_hint),
                        style = MaterialTheme.typography.bodySmall,
                    )
                }
            },
            shape = MaterialTheme.shapes.extraLarge,
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            tonalElevation = 0.dp,
            confirmButton = {
                ComposeButton(onClick = {
                    autoPagingInterval = (seconds * 10).roundToInt() * 100
                    e.b(this@ComicViewerActivity, autoPagingInterval)
                    comicViewerControlsOverlayView?.setAutoPagingInterval(autoPagingInterval)
                    setReaderControlsVisibility(View.GONE)
                    bO()
                }) { Text(stringResource(R.string.comic_viewer_setting_panel_auto_start)) }
            },
            dismissButton = {
                TextButton(onClick = dismiss) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    private fun refreshReaderTheme() {
        readerTheme = ThemeColorHelper.resolveStoredThemeIndex(this) to e.L(this)
        comicViewerHostView?.readerTheme = readerTheme
        comicViewerControlsOverlayView?.readerTheme = readerTheme
        readerRoot.setBackgroundColor(readerColorScheme().surface.toArgb())
    }

    @Composable
    private fun ReaderTheme(content: @Composable () -> Unit) {
        val (themeIndex, forceNightMode) = readerTheme
        PicaComposeTheme(
            darkTheme = resolvePicaDarkTheme(forceNightMode, themeIndex),
            themeColorIndex = themeIndex,
            content = content,
        )
    }

    private fun readerColorScheme(): androidx.compose.material3.ColorScheme {
        val themeIndex = ThemeColorHelper.resolveStoredThemeIndex(this)
        return picaColorScheme(
            this,
            themeIndex,
            ThemeColorHelper.isThemeIndexDarkForLegacyContent(this, themeIndex),
        )
    }

    fun j(automatic: Boolean) {
        if (!Settings.System.canWrite(this)) {
            bJ()
            return
        }
        val mode = if (automatic) {
            Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC
        } else {
            Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL
        }
        if (Settings.System.putInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE, mode)) {
            isSystemBrightness = automatic
            comicViewerControlsOverlayView?.setBrightnessMode(automatic)
        }
    }

    fun m(value: Int) {
        if (!Settings.System.canWrite(this)) return
        if (isSystemBrightness) j(false)
        if (Settings.System.putInt(contentResolver, Settings.System.SCREEN_BRIGHTNESS, value)) {
            brightnessValue = value
            comicViewerControlsOverlayView?.setBrightnessValue(value)
        }
    }

    fun setNightModeEnabled(enabled: Boolean) {
        readerNightMaskVisible = enabled
        if (enabled) {
            Toast.makeText(this, R.string.comic_viewer_toast_night_mode_on, Toast.LENGTH_SHORT).show()
        }
        this.isNightMode = enabled
        this.comicViewerControlsOverlayView?.setNightModeValue(enabled)
        e.d(this, this.isNightMode)
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$24] */
    fun bO() {
        if (this.autoPagingInterval <= 0) {
            return
        }
        bP()
        this.autoPagingTimer =
            object : CountDownTimer(Long.Companion.MAX_VALUE, this.autoPagingInterval.toLong()) {
                // from class: com.picacomic.fregata.activities.ComicViewerActivity.24
                // android.os.CountDownTimer
                override fun onTick(j: Long) {
                    if (!this@ComicViewerActivity.advanceAutoPagingPage()) {
                        this@ComicViewerActivity.bP()
                    }
                }

                // android.os.CountDownTimer
                override fun onFinish() {
                    this@ComicViewerActivity.bP()
                }
            }.start()
    }

    private fun advanceAutoPagingPage(): Boolean {
        if (this.pageList == null || this.currentPage >= bV()) {
            return false
        }
        this.currentPage++
        this.comicStatusChangeListener!!.b(this.currentPage, false)
        r(this.currentPage)
        return true
    }

    fun bP() {
        if (this.autoPagingTimer != null) {
            this.autoPagingTimer!!.cancel()
            this.autoPagingTimer = null
        }
    }

    // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    override fun onKeyDown(i: Int, keyEvent: KeyEvent?): Boolean {
        if (this.isVolumeKeyPagingEnabled) {
            if (i == 25) {
                bR()
                return true
            }
            if (i == 24) {
                bS()
                return true
            }
        }
        if (i != 4) {
            return false
        }
        onBackPressed()
        return false
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    override fun onConfigurationChanged(configuration: Configuration) {
        super.onConfigurationChanged(configuration)
        refreshReaderTheme()
        this.isTabletReader = isTabletDevice()
        enterReaderFullscreen()
        updateReaderCommentSidebarLayout()
        n(this.currentPage)
    }

    fun n(i: Int) {
        val networkStatus = this.networkStatusLabel
        if (this.pageList != null) {
            val i2 = this.totalPages
            val statusSuffix = "$networkStatus 電量:$batteryLevelText"
            val pageIndex = if (this.comicViewerHostView != null) i else g.ac(i)
            if (pageIndex + 1 > this.pageList!!.size) {
                readerPageLabel = "完/$i2"
                readerStatusText = "$readerPageLabel $statusSuffix"
                this.comicViewerControlsOverlayView?.setPage("完/$i2")
                return
            }
            val pageText = (pageIndex + 1 + bU()).toString() + "/" + i2
            readerPageLabel = pageText
            readerStatusText = "P.$pageText $statusSuffix"
            this.comicViewerControlsOverlayView?.setPage(pageText)
        }
    }

    private val networkStatusLabel: String
        get() {
            try {
                val connectivityManager =
                    getSystemService(CONNECTIVITY_SERVICE) as ConnectivityManager?
                if (connectivityManager == null) {
                    return ""
                }
                val activeNetwork = connectivityManager.getActiveNetwork()
                val capabilities =
                    connectivityManager.getNetworkCapabilities(activeNetwork)
                if (capabilities == null || !capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)) {
                    return getString(R.string.network_status_no_network)
                }
                if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) {
                    return getString(R.string.network_status_wifi)
                }
                if (capabilities.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR)) {
                    if (this.shouldWarnMobileNetwork) {
                        AlertDialogCenter.usingMobileNetwork(this)
                        this.shouldWarnMobileNetwork = false
                    }
                    return getString(R.string.network_status_mobile)
                }
            } catch (e: Exception) {
                e.printStackTrace()
                Toast.makeText(this, "Cannot get NetworkStatus", Toast.LENGTH_SHORT).show()
            }
            return ""
        }

    fun o(i: Int) {
        val iAd = if (this.comicViewerHostView != null) {
            (i - 1).coerceAtLeast(0)
        } else {
            g.ad(i)
        }
        this.comicViewerControlsOverlayView?.setPage(
            label = readerPageLabel,
            max = iAd
        )
    }

    fun p(i: Int) {
        showNextEpisodeAction = i == View.VISIBLE
        nextEpisodeHintVisible = showNextEpisodeAction
        bQ()
    }

    fun q(i: Int) {
        showPreviousEpisodeAction = i == View.VISIBLE
        previousEpisodeHintVisible = showPreviousEpisodeAction
        bQ()
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.picacomic.fregata.activities.ComicViewerActivity$25] */
    fun bQ() {
        if (this.episodeButtonFadeTimer != null) {
            this.episodeButtonFadeTimer!!.cancel()
        }
        this.episodeButtonFadeTimer = object : CountDownTimer(2000L, 2000L) {
            // from class: com.picacomic.fregata.activities.ComicViewerActivity.25
            // android.os.CountDownTimer
            override fun onTick(j: Long) {
            }

            // android.os.CountDownTimer
            override fun onFinish() {
                nextEpisodeHintVisible = false
                previousEpisodeHintVisible = false
            }
        }.start()
    }

    // com.picacomic.fregata.a_pkg.d
    override fun r(i: Int) {
        f.D(TAG, "Current Page = " + this.currentPage + " pageNumber = " + i)
        if (this.pageList != null) {
            this.comicViewerControlsOverlayView?.setPage(
                label = "",
                progress = i,
                max = bV()
            )
            n(i)
            this.currentPage = i
            if (!this.hasMovedPastFirstLoadedPage && i != 0) {
                this.hasMovedPastFirstLoadedPage = true
            }
            if (this.currentPage >= bV()) {
                bL()
                q(View.GONE)
                if (this.currentPagingPage == this.totalPagingPages) {
                    p(View.VISIBLE)
                    return
                }
                return
            }
            if ((this.hasMovedPastFirstLoadedPage || bT() > 0) && i == 0) {
                if (bT() > 0) {
                    bM()
                    return
                } else {
                    q(View.VISIBLE)
                    p(View.GONE)
                    return
                }
            }
            q(View.GONE)
            p(View.GONE)
        }
    }

    fun bR() {
        if (this.currentPage < bV()) {
            this.currentPage++
            this.comicStatusChangeListener!!.b(this.currentPage, false)
            r(this.currentPage)
        }
    }

    fun bS() {
        if (this.currentPage > 0) {
            this.currentPage--
            this.comicStatusChangeListener!!.b(this.currentPage, false)
            r(this.currentPage)
            return
        }
        if (bT() > 0) {
            bM()
        }
    }

    fun bT(): Int {
        return this.loadedPageOffset / hq
    }

    fun bU(): Int {
        return (this.loadedPageOffset / hq) * hq
    }

    private fun bV(): Int {
        val size = this.pageList?.size ?: 0
        if (size <= 0) {
            return 0
        }
        return if (this.comicViewerHostView != null) {
            size - 1
        } else {
            g.ad(size)
        }
    }

    companion object {
        const val TAG: String = "ComicViewerActivity"
        @JvmField
        var hq: Int = 40
    }
}
