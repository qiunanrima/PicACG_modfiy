package com.picacomic.fregata.activities

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.widget.ImageButton
import android.widget.RelativeLayout
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.setValue
import androidx.compose.runtime.getValue
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.key
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.google.gson.Gson
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.requests.AdjustExpBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.InitialResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import kotlin.math.abs
import androidx.navigation.NavHostController
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import com.picacomic.fregata.compose.LocalPhysicalMotion
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import com.picacomic.fregata.utils.ThemeColorHelper
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.resolvePicaDarkTheme
import com.picacomic.fregata.compose.components.PicaNavigationBar
import com.picacomic.fregata.compose.navigation.Screen
import com.picacomic.fregata.compose.navigation.navItems
import com.picacomic.fregata.compose.screens.*

/* JADX INFO: loaded from: classes.dex */
class MainActivity : BaseActivity() {

    // Network states
    private var iF: Call<GeneralResponse<InitialResponse?>?>? = null
    private var iG: Call<RegisterResponse?>? = null
    private var iH: InitialResponse? = null
    private var iI: RelativeLayout.LayoutParams? = null

    // Compose State
    private var selectedTabIndex by mutableIntStateOf(0)
    private var tabRefreshEvent by mutableIntStateOf(0)
    private var expButtonsVisible by mutableStateOf(false)
    private var expAdjustmentTarget by mutableStateOf<Pair<String?, String?>?>(null)
    private var forceOneTimeUpdate by mutableStateOf(false)
    private var pendingExternalComicId by mutableStateOf<String?>(null)
    private var pendingExternalGameId by mutableStateOf<String?>(null)
    private var themeColorIndex by mutableIntStateOf(0)
    private var nightModeEnabled by mutableStateOf(false)
    private var navControllerRef: NavHostController? = null
    private var offlineMode by mutableStateOf(false)

    // Legacy controls overlay
    private var buttonControlBlock: ImageButton? = null
    private var buttonControlExp: ImageButton? = null
    private var expLayoutParams: RelativeLayout.LayoutParams? = null
    private var iJ = 0
    private var iK = 0
    private var iL: Long = 0

    @JvmField
    var iM: Boolean = false
    var iN: Boolean = false

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()
        offlineMode = intent?.getBooleanExtra(EXTRA_OFFLINE_MODE, false) == true
        themeColorIndex = ThemeColorHelper.resolveStoredThemeIndex(this)
        nightModeEnabled = e.L(this)
        consumePopupOpenExtras(intent)

        setContent {
            MainScreen()
        }
        if (!offlineMode) {
            bH()
        }

        e.j(this, null as String?)
        e.l(this, null as String?)

    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        offlineMode = intent.getBooleanExtra(EXTRA_OFFLINE_MODE, offlineMode)
        consumePopupOpenExtras(intent)
    }

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_SEARCH -> return true
                KeyEvent.KEYCODE_BACK -> {
                    onBackPressed()
                    return true
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    override fun onBackPressed() {
        if (popComposeBackStack()) {
            bC()
            return
        }
        super.onBackPressed()
    }

    private fun popComposeBackStack(): Boolean {
        val navController = navControllerRef ?: return false
        return navController.previousBackStackEntry != null && navController.popBackStack()
    }

    @Preview
    @Composable
    private fun MainScreen() {
        val navController = rememberNavController()

        DisposableEffect(navController) {
            navControllerRef = navController
            onDispose {
                if (navControllerRef === navController) {
                    navControllerRef = null
                }
            }
        }

        val navBackStackEntry by navController.currentBackStackEntryAsState()
        val currentRoute = navBackStackEntry?.destination?.route
        val availableNavItems = if (offlineMode) {
            listOf(Screen.Profile, Screen.Settings)
        } else {
            navItems
        }
        val showBottomBar = availableNavItems.any { it.route == currentRoute }
        val onNavItemClick: (Screen) -> Unit = { screen ->
            tabRefreshEvent++
            if (currentRoute != screen.route) {
                navController.navigate(screen.route) {
                    popUpTo(navController.graph.startDestinationId) {
                        saveState = true
                    }
                    launchSingleTop = true
                    restoreState = true
                }
            }
        }

        LaunchedEffect(forceOneTimeUpdate) {
            if (!offlineMode && forceOneTimeUpdate) {
                navController.navigate(Screen.OneTimeUpdateQA.route) {
                    popUpTo(Screen.Home.route)
                    launchSingleTop = true
                }
            }
        }

        LaunchedEffect(pendingExternalComicId, pendingExternalGameId) {
            if (offlineMode) {
                pendingExternalComicId = null
                pendingExternalGameId = null
                return@LaunchedEffect
            }
            val comicId = pendingExternalComicId
            val gameId = pendingExternalGameId
            when {
                !comicId.isNullOrBlank() -> {
                    pendingExternalComicId = null
                    navController.navigate(Screen.createComicDetailRoute(comicId)) {
                        launchSingleTop = true
                    }
                }

                !gameId.isNullOrBlank() -> {
                    pendingExternalGameId = null
                    navController.navigate(Screen.createGameDetailRoute(gameId)) {
                        launchSingleTop = true
                    }
                }
            }
        }

        PicaComposeTheme(darkTheme = resolvePicaDarkTheme(nightModeEnabled, themeColorIndex), themeColorIndex = themeColorIndex) {
            expAdjustmentTarget?.let { target ->
                key(target) {
                    ExpAdjustmentDialog(target.first, target.second)
                }
            }
            BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
                // M3 adaptive navigation switches from a bottom bar to a rail at the
                // compact/medium width boundary. Orientation is not a reliable proxy on
                // foldables and portrait tablets.
                val useNavigationRail = showBottomBar && maxWidth >= 600.dp
                Scaffold(
                    contentWindowInsets = androidx.compose.foundation.layout.WindowInsets(0, 0, 0, 0),
                    bottomBar = {
                        if (showBottomBar && !useNavigationRail) {
                            PicaNavigationBar(
                                items = availableNavItems,
                                currentRoute = currentRoute,
                                onItemClick = onNavItemClick,
                            )
                        }
                    }
                )
                { innerPadding ->
                    Row(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(innerPadding)
                            .consumeWindowInsets(innerPadding)
                    ) {
                        if (useNavigationRail) {
                            PicaNavigationBar(
                                items = availableNavItems,
                                currentRoute = currentRoute,
                                onItemClick = onNavItemClick,
                                vertical = true,
                            )
                        }
                        Box(modifier = Modifier.weight(1f).fillMaxSize()) {
                    val motion = androidx.compose.material3.MaterialTheme.motionScheme
                    val animateNavigation = LocalPhysicalMotion.current
                    NavHost(
                        navController = navController,
                        enterTransition = { if (animateNavigation) slideInHorizontally(motion.defaultSpatialSpec()) { it / 8 } + fadeIn(motion.fastEffectsSpec()) else EnterTransition.None },
                        exitTransition = { if (animateNavigation) slideOutHorizontally(motion.defaultSpatialSpec()) { -it / 12 } + fadeOut(motion.fastEffectsSpec()) else ExitTransition.None },
                        popEnterTransition = { if (animateNavigation) slideInHorizontally(motion.defaultSpatialSpec()) { -it / 12 } + fadeIn(motion.fastEffectsSpec()) else EnterTransition.None },
                        popExitTransition = { if (animateNavigation) slideOutHorizontally(motion.defaultSpatialSpec()) { it / 8 } + fadeOut(motion.fastEffectsSpec()) else ExitTransition.None },
                        startDestination = if (offlineMode) Screen.Profile.route else Screen.Home.route,
                        modifier = Modifier.fillMaxSize()
                    ) {
                        composable(Screen.Home.route) {
                            HomeScreen(
                                refreshEvent = tabRefreshEvent,
                                onNotification = { navController.navigate(Screen.Notification.route) },
                                onComicClick = { id ->
                                    navController.navigate(
                                        Screen.createComicDetailRoute(
                                            id
                                        )
                                    )
                                },
                                onMoreClick = { category ->
                                    navController.navigate(
                                        Screen.createComicListRoute(
                                            category = category
                                        )
                                    )
                                }
                            )
                        }
                        composable(Screen.Category.route) {
                            CategoryScreen(
                                refreshEvent = tabRefreshEvent,
                                onOpenSearch = { navController.navigate(Screen.Search.route) },
                                onSearch = { query ->
                                    val value = query.trim()
                                    val route = when {
                                        value.startsWith("作者:", ignoreCase = true) -> {
                                            val author = value.substringAfter(":", "").trim()
                                            if (author.isEmpty()) Screen.createComicListRoute(
                                                keywords = value
                                            )
                                            else Screen.createComicListRoute(author = author)
                                        }

                                        value.startsWith("author:", ignoreCase = true) -> {
                                            val author = value.substringAfter(":", "").trim()
                                            if (author.isEmpty()) Screen.createComicListRoute(
                                                keywords = value
                                            )
                                            else Screen.createComicListRoute(author = author)
                                        }

                                        value.startsWith("标签:", ignoreCase = true) -> {
                                            val tag = value.substringAfter(":", "").trim()
                                            if (tag.isEmpty()) Screen.createComicListRoute(keywords = value)
                                            else Screen.createComicListRoute(tags = tag)
                                        }

                                        value.startsWith("tag:", ignoreCase = true) -> {
                                            val tag = value.substringAfter(":", "").trim()
                                            if (tag.isEmpty()) Screen.createComicListRoute(keywords = value)
                                            else Screen.createComicListRoute(tags = tag)
                                        }

                                        else -> Screen.createComicListRoute(keywords = value)
                                    }
                                    navController.navigate(route) {
                                        launchSingleTop = true
                                    }
                                },
                                onCategoryClick = { category ->
                                    navController.navigate(
                                        Screen.createComicListRoute(
                                            category = category,
                                            sorting = "dd"
                                        )
                                    )
                                },
                                onWebCategoryClick = { title, link ->
                                    navController.navigate(
                                        Screen.createPicaAppRoute(
                                            title = title,
                                            link = link
                                        )
                                    )
                                },
                                onSupportClick = {
                                    navController.navigate(Screen.SupportUs.route)
                                },
                                onLeaderboardClick = {
                                    navController.navigate(Screen.Leaderboard.route)
                                },
                                onGameClick = {
                                    navController.navigate(Screen.Game.route)
                                },
                                onLovePicaClick = {
                                    navController.navigate(Screen.LovePicaContainer.route)
                                },
                                onForumClick = {
                                    navController.navigate(
                                        Screen.createCommentRoute(comicId = "5822a6e3ad7ede654696e482")
                                    )
                                },
                                onLatestClick = {
                                    navController.navigate(Screen.createComicListRoute(sorting = "dd"))
                                },
                                onRandomClick = {
                                    navController.navigate(
                                        Screen.createComicListRoute(category = "CATEGORY_RANDOM")
                                    )
                                },
                            )
                        }
                        composable(Screen.Search.route) {
                            SearchScreen(
                                onSearch = { query ->
                                    val value = query.trim()
                                    if (value.isNotEmpty()) {
                                        val route = when {
                                            value.startsWith("author:", ignoreCase = true) -> Screen.createComicListRoute(author = value.substringAfter(":").trim().ifEmpty { value })
                                            value.startsWith("tag:", ignoreCase = true) -> Screen.createComicListRoute(tags = value.substringAfter(":").trim().ifEmpty { value })
                                            else -> Screen.createComicListRoute(keywords = value)
                                        }
                                        navController.navigate(route) { launchSingleTop = true }
                                    }
                                },
                                onBack = { navController.popBackStack() },
                            )
                        }
                        composable(Screen.Game.route) {
                            GameScreen(refreshEvent = tabRefreshEvent, onGameClick = { id ->
                                navController.navigate(Screen.createGameDetailRoute(id))
                            })
                        }
                        composable(Screen.Profile.route) {
                            ProfileScreen(
                                refreshEvent = tabRefreshEvent,
                                offlineMode = offlineMode,
                                onEdit = {
                                    if (!offlineMode) {
                                        navController.navigate(Screen.ProfileEdit.route)
                                    }
                                },
                                onComicClick = { id ->
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                },
                                onGameClick = { id ->
                                    if (!offlineMode) {
                                        navController.navigate(Screen.createGameDetailRoute(id))
                                    }
                                },
                                onComicListClick = { category ->
                                    // Offline mode still supports the locally persisted history and
                                    // download lists. Remote categories remain unavailable offline.
                                    if (!offlineMode || isOfflineLocalComicCategory(category)) {
                                        navController.navigate(Screen.createComicListRoute(category = category))
                                    }
                                }
                            )
                        }
                        composable(Screen.Settings.route) {
                            val settingsViewModel: com.picacomic.fregata.compose.viewmodels.SettingsViewModel =
                                viewModel()
                            LaunchedEffect(tabRefreshEvent) {
                                settingsViewModel.loadSettings()
                            }
                            SettingsScreen(
                                state = settingsViewModel.state,
                                onScreenOrientation = settingsViewModel::openScreenOrientationDialog,
                                onScrollDirection = settingsViewModel::openScrollDirectionDialog,
                                onAutoPaging = settingsViewModel::openAutoPagingDialog,
                                onImageQuality = settingsViewModel::openImageQualityDialog,
                                onThemeColor = settingsViewModel::openThemeColorDialog,
                                onLauncherIcon = settingsViewModel::openLauncherIconDialog,
                                onCoilCacheSize = settingsViewModel::openCoilCacheSizeDialog,
                                onContinueDownload = {
                                    if (!offlineMode) {
                                        g.av(this@MainActivity)
                                    }
                                },
                                onApkVersion = {
                                    if (!offlineMode) {
                                        navController.navigate(Screen.ApkVersionList.route)
                                    }
                                },
                                onCache = {
                                    val intent =
                                        Intent("android.settings.APPLICATION_DETAILS_SETTINGS")
                                    intent.data = Uri.fromParts("package", packageName, null)
                                    startActivity(intent)
                                },
                                onFaq = {
                                    if (!offlineMode) {
                                        navController.navigate(Screen.Question.route)
                                    }
                                },
                                onPin = {
                                    if (!offlineMode) {
                                        navController.navigate(Screen.ChangePin.route)
                                    }
                                },
                                onPassword = {
                                    if (!offlineMode) {
                                        navController.navigate(Screen.ChangePassword.route)
                                    }
                                },
                                onLogout = { settingsViewModel.logout() },
                                onNightModeChanged = {
                                    settingsViewModel.toggleNightMode(it)
                                    nightModeEnabled = it
                                },
                                onVolumePagingChanged = { settingsViewModel.toggleVolumePaging(it) },
                                onLandscapeCommentsChanged = { settingsViewModel.toggleLandscapeComments(it) },
                                onLandscapeCommentsSide = settingsViewModel::openLandscapeCommentsSideDialog,
                                onTestingChanged = { settingsViewModel.toggleTesting(it) },
                                onPerformanceChanged = { settingsViewModel.togglePerformance(it) },
                                onDialogDismiss = settingsViewModel::dismissDialog,
                                onScreenOrientationSelected = settingsViewModel::selectScreenOrientationIndex,
                                onScrollDirectionSelected = settingsViewModel::selectScrollDirectionIndex,
                                onImageQualitySelected = settingsViewModel::selectImageQualityIndex,
                                onThemeColorSelected = { index ->
                                    settingsViewModel.selectThemeColorIndex(index)
                                    themeColorIndex = ThemeColorHelper.resolveStoredThemeIndex(this@MainActivity)
                                },
                                onLauncherIconSelected = settingsViewModel::selectLauncherIconIndex,
                                onLandscapeCommentsSideSelected = settingsViewModel::selectLandscapeCommentsSide,
                                onCoilCacheSizeDraftChanged = settingsViewModel::updateCoilCacheDraftValue,
                                onCoilCacheSizeConfirmed = settingsViewModel::confirmCoilCacheSize,
                                onAutoPagingDraftChanged = settingsViewModel::updateAutoPagingDraftProgress,
                                onAutoPagingConfirmed = settingsViewModel::confirmAutoPagingInterval
                            )
                        }

                        // Secondary Screens
                        composable(Screen.Notification.route) {
                            NotificationScreen(
                                onBack = { navController.popBackStack() },
                                onComicClick = { id ->
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                },
                                onGameClick = { id ->
                                    navController.navigate(Screen.createGameDetailRoute(id))
                                },
                                onCommentClick = { id ->
                                    navController.navigate(Screen.createCommentRoute(commentId = id))
                                },
                                onPicaAppClick = { title, link ->
                                    navController.navigate(Screen.createPicaAppRoute(title, link))
                                },
                                onSenderClick = { user ->
                                    a(user)
                                },
                                onCoverClick = { imageUrl ->
                                    D(imageUrl)
                                }
                            )
                        }

                        composable(Screen.ComicList.route) { backStackEntry ->
                            val category = backStackEntry.arguments?.getString("category")
                                ?.let { Uri.decode(it) }
                            val tags =
                                backStackEntry.arguments?.getString("tags")?.let { Uri.decode(it) }
                            val creatorId = backStackEntry.arguments?.getString("creatorId")
                                ?.let { Uri.decode(it) }
                            val creatorName = backStackEntry.arguments?.getString("creatorName")
                                ?.let { Uri.decode(it) }
                            val author = backStackEntry.arguments?.getString("author")
                                ?.let { Uri.decode(it) }
                            val keywords = backStackEntry.arguments?.getString("keywords")
                                ?.let { Uri.decode(it) }
                            val finished = backStackEntry.arguments?.getString("finished")
                                ?.let { Uri.decode(it) }
                            val sorting = backStackEntry.arguments?.getString("sorting")
                                ?.let { Uri.decode(it) }
                            val translate = backStackEntry.arguments?.getString("translate")
                                ?.let { Uri.decode(it) }

                            ComicListScreen(
                                category = category,
                                offlineMode = offlineMode,
                                keywords = keywords,
                                tags = tags,
                                author = author,
                                finished = finished,
                                sorting = sorting,
                                translate = translate,
                                creatorId = creatorId,
                                creatorName = creatorName,
                                onBack = { navController.popBackStack() },
                                onComicClick = { id ->
                                    if (!offlineMode || isOfflineLocalComicCategory(category)) {
                                        navController.navigate(Screen.createComicDetailRoute(id))
                                    }
                                }
                            )
                        }

                        composable(Screen.ComicDetail.route) { backStackEntry ->
                            val comicId = backStackEntry.arguments?.getString("comicId") ?: ""
                            ComicDetailScreen(
                                comicId = comicId,
                                offlineMode = offlineMode,
                                onBack = { navController.popBackStack() },
                                onComicClick = { id ->
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                },
                                onCommentClick = { id ->
                                    navController.navigate(Screen.createCommentRoute(comicId = id))
                                },
                                onComicListClick = { category, tag, author, translate, creatorId, creatorName ->
                                    navController.navigate(
                                        Screen.createComicListRoute(
                                            category = category,
                                            tags = tag,
                                            author = author,
                                            translate = translate,
                                            creatorId = creatorId,
                                            creatorName = creatorName
                                        )
                                    )
                                },
                                onCreatorProfileClick = { creatorId ->
                                    E(creatorId)
                                },
                                onShowImage = { imageUrl ->
                                    D(imageUrl)
                                },
                                onDownloadClick = { id, title ->
                                    navController.navigate(Screen.createComicDownloadRoute(id, title))
                                }
                            )
                        }

                        composable(Screen.ComicDownload.route) { backStackEntry ->
                            val comicId = backStackEntry.arguments?.getString("comicId")
                                ?.let { Uri.decode(it) }
                                ?: ""
                            val title = backStackEntry.arguments?.getString("title")
                                ?.let { Uri.decode(it) }
                            ComicDownloadScreen(
                                comicId = comicId,
                                title = title,
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.ProfileEdit.route) {
                            ProfileEditScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.ChangePin.route) {
                            ChangePinScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.ChangePassword.route) {
                            ChangePasswordScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.OneTimeUpdateQA.route) {
                            OneTimeUpdateQAScreen(
                                onBack = { navController.popBackStack() },
                                onSuccess = {
                                    navController.navigate(Screen.OneTimeIdUpdate.route) {
                                        popUpTo(Screen.OneTimeUpdateQA.route) {
                                            inclusive = true
                                        }
                                    }
                                }
                            )
                        }

                        composable(Screen.OneTimeIdUpdate.route) {
                            OneTimeIdUpdateScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.Question.route) {
                            QuestionScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.GameDetail.route) { backStackEntry ->
                            val gameId = backStackEntry.arguments?.getString("gameId") ?: ""
                            GameDetailScreen(
                                gameId = gameId,
                                onBack = { navController.popBackStack() },
                                onCommentClick = { id ->
                                    navController.navigate(Screen.createCommentRoute(gameId = id))
                                }
                            )
                        }

                        composable(Screen.Comment.route) { backStackEntry ->
                            val comicId = backStackEntry.arguments?.getString("comicId")
                                ?.let { Uri.decode(it) }
                            val gameId = backStackEntry.arguments?.getString("gameId")
                                ?.let { Uri.decode(it) }
                            val commentId = backStackEntry.arguments?.getString("commentId")
                                ?.let { Uri.decode(it) }
                            CommentScreen(
                                comicId = comicId,
                                gameId = gameId,
                                commentId = commentId,
                                onBack = { navController.popBackStack() },
                                onComicClick = { id ->
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                },
                                onGameClick = { id ->
                                    navController.navigate(Screen.createGameDetailRoute(id))
                                }
                            )
                        }

                        composable(Screen.PicaApp.route) { backStackEntry ->
                            val title = Uri.decode(
                                backStackEntry.arguments?.getString("title") ?: ""
                            )
                            val link = Uri.decode(
                                backStackEntry.arguments?.getString("link") ?: ""
                            )
                            PicaAppScreen(
                                title = title,
                                link = link,
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.LovePicaContainer.route) {
                            LovePicaContainerScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.SupportUs.route) {
                            SupportUsScreen(
                                onBack = { navController.popBackStack() },
                                onGameClick = {
                                    navController.navigate(Screen.Game.route)
                                }
                            )
                        }

                        composable(Screen.PicaAppList.route) {
                            PicaAppListScreen(
                                onBack = { navController.popBackStack() },
                                onPicaAppClick = { title, link ->
                                    if (title.equals("嗶咔萌約", ignoreCase = true)) {
                                        navController.navigate(Screen.AnonymousChat.route)
                                    } else {
                                        navController.navigate(Screen.createPicaAppRoute(title, link))
                                    }
                                }
                            )
                        }

                        composable(Screen.AnonymousChat.route) {
                            AnonymousChatScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.ApkVersionList.route) {
                            ApkVersionListScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.AnnouncementList.route) {
                            AnnouncementListScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }

                        composable(Screen.Leaderboard.route) {
                            LeaderboardScreen(
                                onBack = { navController.popBackStack() },
                                onComicClick = { id ->
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                },
                                onKnightClick = { knightId, knightName ->
                                    navController.navigate(
                                        Screen.createComicListRoute(
                                            creatorId = knightId,
                                            creatorName = knightName
                                        )
                                    )
                                }
                            )
                        }
                    }

                    }
                        }
                    }
                }
            }
        }

    private fun handleTouch(view: View, event: MotionEvent) {
        val x = event.rawX.toInt()
        val y = event.rawY.toInt()
        when (event.action and MotionEvent.ACTION_MASK) {
            MotionEvent.ACTION_DOWN -> {
                val params = view.layoutParams as RelativeLayout.LayoutParams
                iJ = x - params.leftMargin
                iK = y - params.topMargin
            }

            MotionEvent.ACTION_MOVE -> {
                val params = view.layoutParams as RelativeLayout.LayoutParams
                params.leftMargin = x - iJ
                params.topMargin = y - iK
                params.rightMargin = 0
                params.bottomMargin = 0
                view.layoutParams = params
            }

            MotionEvent.ACTION_UP -> {
                if (abs(x - (iJ + (view.layoutParams as RelativeLayout.LayoutParams).leftMargin)) < 5 &&
                    abs(y - (iK + (view.layoutParams as RelativeLayout.LayoutParams).topMargin)) < 5
                ) {
                    v(1) // Toggle exp mode
                }
            }
        }
    }

    override fun onResume() {
        super.onResume()
        themeColorIndex = ThemeColorHelper.resolveStoredThemeIndex(this)
        nightModeEnabled = e.L(this)
    }

    override fun onStop() {
        iF?.cancel()
        iG?.cancel()
        super.onStop()
    }

    fun t(i: Int) {
        // Tab visibility toggling omitted for Compose as Scaffold handles it naturally
        // or hides via a state boolean. For now, leave as no-op.
    }

    private fun bH() {
        bX()
        g.av(this)

        val strY = e.y(this)
        if (!strY.isNullOrEmpty()) {
            bD()
        }
    }

    private fun bX() {
        iF = d(this).dO().ak(e.z(this))
        iF!!.enqueue(object : Callback<GeneralResponse<InitialResponse?>?> {
            override fun onResponse(
                call: Call<GeneralResponse<InitialResponse?>?>,
                response: Response<GeneralResponse<InitialResponse?>?>
            ) {
                if (response.code() == 200) {
                    iH = response.body()?.data
                    val str = iH?.imageServer
                    if (!str.isNullOrEmpty()) {
                        e.q(this@MainActivity, str)
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@MainActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                bI()
            }

            override fun onFailure(call: Call<GeneralResponse<InitialResponse?>?>, th: Throwable) {
                th.printStackTrace()
                com.picacomic.fregata.b.c(this@MainActivity).dN()
                bI()
            }
        })
    }

    private fun bI() {
        val appState = iH?.latestApplication ?: return
        f.D(BaseActivity.TAG, appState.toString())

        iH?.notification?.let {
            if (!it.notificationId.equals(e.aj(this), ignoreCase = true)) {
                e.x(this, it.notificationId)
                e.o(this as Context, true)
            } else {
                e.o(this as Context, false)
            }
        } ?: run {
            e.o(this as Context, false)
        }

        e.k(this, Gson().toJson(iH?.categories))
        if (iH?.isIdUpdated == false) {
            forceOneTimeUpdate = true
        }
        val version = appState.version
        if (version != null && g.C(this, version)) {
            AlertDialogCenter.showUpdateApkAlertDialog(
                this,
                appState,
                g.D(this, version)
            )
        }
    }

    // Following exp & block functions preserved for potential future overlay implementations.

    fun a(i: Int, str: String?) {
        iG = d(this).dO().a(e.z(this), AdjustExpBody(i, str))
        iG!!.enqueue(object : Callback<RegisterResponse?> {
            override fun onResponse(
                call: Call<RegisterResponse?>,
                response: Response<RegisterResponse?>
            ) {
                if (response.code() == 200) {
                    Toast.makeText(this@MainActivity, "ADUST SUCCESS", Toast.LENGTH_SHORT).show()
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@MainActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
            }

            override fun onFailure(call: Call<RegisterResponse?>, th: Throwable) {
                th.printStackTrace()
                com.picacomic.fregata.b.c(this@MainActivity).dN()
                bI()
            }
        })
    }

    fun v(i: Int) {
        if (i == 1) {
            if (iM) l(false) else l(true)
            m(false)
            return
        }
        if (i == 2) {
            if (iN) m(false) else m(true)
            l(false)
        }
    }

    fun l(z: Boolean) {
        iM = z
    }

    fun m(z: Boolean) {
        iN = z
    }

    fun openComicDetailFromLegacy(comicId: String) {
        if (offlineMode) return
        navControllerRef?.navigate(Screen.createComicDetailRoute(comicId))
    }

    fun openComicListFromLegacy(
        category: String? = null,
        creatorId: String? = null,
        creatorName: String? = null
    ) {
        if (offlineMode && !isOfflineLocalComicCategory(category)) return
        navControllerRef?.navigate(
            Screen.createComicListRoute(
                category = category,
                creatorId = creatorId,
                creatorName = creatorName
            )
        )
    }

    private fun consumePopupOpenExtras(intent: Intent?) {
        if (offlineMode) {
            pendingExternalComicId = null
            pendingExternalGameId = null
            intent?.removeExtra(PopupActivity.EXTRA_OPEN_COMIC_ID)
            intent?.removeExtra(PopupActivity.EXTRA_OPEN_GAME_ID)
            return
        }
        pendingExternalComicId = intent
            ?.getStringExtra(PopupActivity.EXTRA_OPEN_COMIC_ID)
            ?.takeIf { it.isNotBlank() }
        pendingExternalGameId = intent
            ?.getStringExtra(PopupActivity.EXTRA_OPEN_GAME_ID)
            ?.takeIf { it.isNotBlank() }
        intent?.removeExtra(PopupActivity.EXTRA_OPEN_COMIC_ID)
        intent?.removeExtra(PopupActivity.EXTRA_OPEN_GAME_ID)
    }

    private fun isOfflineLocalComicCategory(category: String?): Boolean {
        return category == "CATEGORY_RECENT_VIEW" ||
            category == "CATEGORY_DOWNLOADING" ||
            category == "CATEGORY_DOWNLOADED"
    }

    // -------------------------------------------------------------
    // Legacy support functions for Fragment compatibility during migration
    // -------------------------------------------------------------
    fun bY() {
        expButtonsVisible = !expButtonsVisible
    }

    fun i(str: String?, str2: String?) {
        expAdjustmentTarget = str to str2
    }

    @Composable
    private fun ExpAdjustmentDialog(username: String?, userId: String?) {
        var input by rememberSaveable { mutableStateOf("") }
        val adjustment = input.toIntOrNull()?.takeIf { it in -100_000..100_000 }
        val dismiss = {
            expAdjustmentTarget = null
            l(false)
        }
        AlertDialog(
            onDismissRequest = dismiss,
            title = username?.let { { Text(it) } },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text("ID: $userId")
                    OutlinedTextField(
                        value = input,
                        onValueChange = { input = it },
                        label = { Text("經驗調整") },
                        supportingText = { Text("-100,000 至 100,000") },
                        isError = input.isNotEmpty() && input != "-" && adjustment == null,
                        singleLine = true,
                        modifier = Modifier.fillMaxWidth(),
                    )
                }
            },
            shape = MaterialTheme.shapes.extraLarge,
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            tonalElevation = 0.dp,
            confirmButton = {
                TextButton(
                    enabled = adjustment != null,
                    onClick = {
                        adjustment?.let { a(it, userId) }
                        dismiss()
                    },
                ) { Text(stringResource(R.string.ok)) }
            },
            dismissButton = {
                TextButton(onClick = dismiss) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    companion object {
        const val EXTRA_OFFLINE_MODE = "com.picacomic.fregata.extra.OFFLINE_MODE"
    }
}
