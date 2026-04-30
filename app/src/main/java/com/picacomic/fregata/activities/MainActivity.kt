package com.picacomic.fregata.activities

import android.app.AlertDialog
import android.content.Context
import android.content.DialogInterface
import android.content.Intent
import android.content.res.Configuration
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.View.OnTouchListener
import android.view.ViewGroup
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.EditText
import android.widget.ImageButton
import android.widget.RelativeLayout
import android.widget.SeekBar
import android.widget.TextView
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.google.gson.Gson
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.compose.views.OnIntChangedListener
import com.picacomic.fregata.compose.views.PicaMainBottomBarComposeView
import com.picacomic.fregata.databinding.ActivityMainBinding
import com.picacomic.fregata.fragments.CategoryFragment
import com.picacomic.fregata.fragments.GameFragment
import com.picacomic.fregata.fragments.HomeFragment
import com.picacomic.fregata.fragments.ProfileFragment
import com.picacomic.fregata.fragments.SettingFragment
import com.picacomic.fregata.objects.requests.AdjustExpBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.InitialResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import com.picacomic.fregata.utils.views.BannerWebview
import com.picacomic.fregata.utils.views.PopupWebview
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import kotlin.math.abs
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.navigation.Screen
import com.picacomic.fregata.compose.navigation.navItems
import com.picacomic.fregata.compose.screens.*
import com.picacomic.fregata.compose.views.LegacyFragmentHost
import com.picacomic.fregata.fragments.AnnouncementListFragment
import com.picacomic.fregata.fragments.ApkVersionListFragment
import com.picacomic.fregata.fragments.ChangePasswordFragment
import com.picacomic.fregata.fragments.ChangePinFragment
import com.picacomic.fregata.fragments.ComicDetailFragment
import com.picacomic.fregata.fragments.ComicListFragment
import com.picacomic.fregata.fragments.CommentFragment
import com.picacomic.fregata.fragments.GameDetailFragment
import com.picacomic.fregata.fragments.LeaderboardContainerFragment
import com.picacomic.fregata.fragments.NotificationFragment
import com.picacomic.fregata.fragments.PicaAppFragment
import com.picacomic.fregata.fragments.PicaAppListFragment
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.fragments.ProfileEditFragment
import com.picacomic.fregata.objects.UserProfileObject

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
    private var bannerVisible by mutableStateOf(false)
    private var popupVisible by mutableStateOf(false)
    private var expButtonsVisible by mutableStateOf(false)
    private var forceOneTimeUpdate by mutableStateOf(false)
    private var pendingExternalComicId by mutableStateOf<String?>(null)
    private var pendingExternalGameId by mutableStateOf<String?>(null)
    private var navControllerRef: NavHostController? = null

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
        consumePopupOpenExtras(intent)

        setContent {
            MainScreen()
        }
        bH()

        e.j(this, null as String?)
        e.l(this, null as String?)

    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        consumePopupOpenExtras(intent)
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
        val showBottomBar = navItems.any { it.route == currentRoute }

        LaunchedEffect(forceOneTimeUpdate) {
            if (forceOneTimeUpdate) {
                navController.navigate(Screen.OneTimeUpdateQA.route) {
                    popUpTo(Screen.Home.route)
                    launchSingleTop = true
                }
            }
        }

        LaunchedEffect(pendingExternalComicId, pendingExternalGameId) {
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

        PicaComposeTheme {
            Scaffold(
                contentWindowInsets = androidx.compose.foundation.layout.WindowInsets(0, 0, 0, 0),
                bottomBar = {
                    if (showBottomBar) {
                        NavigationBar(
                            containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                            tonalElevation = 0.dp
                        ) {
                            navItems.forEach { screen ->
                                NavigationBarItem(
                                    selected = currentRoute == screen.route,
                                    onClick = {
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
                                    },
                                    icon = {
                                        Icon(
                                            imageVector = if (currentRoute == screen.route)
                                                screen.selectedIcon!! else screen.unselectedIcon!!,
                                            contentDescription = stringResource(id = screen.titleRes)
                                        )
                                    },
                                    label = { Text(stringResource(id = screen.titleRes)) },
                                    colors = NavigationBarItemDefaults.colors(
                                        selectedIconColor = MaterialTheme.colorScheme.primary,
                                        selectedTextColor = MaterialTheme.colorScheme.onSurface,
                                        indicatorColor = MaterialTheme.colorScheme.primaryContainer,
                                        unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                                        unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                )
                            }
                        }
                    }
                }
            )
            { innerPadding ->
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(bottom = innerPadding.calculateBottomPadding())
                ) {
                    NavHost(
                        navController = navController,
                        startDestination = Screen.Home.route,
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
                        composable(Screen.Game.route) {
                            GameScreen(refreshEvent = tabRefreshEvent, onGameClick = { id ->
                                navController.navigate(Screen.createGameDetailRoute(id))
                            })
                        }
                        composable(Screen.Profile.route) {
                            ProfileScreen(
                                refreshEvent = tabRefreshEvent,
                                onEdit = { navController.navigate(Screen.ProfileEdit.route) },
                                onComicClick = { id ->
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                },
                                onGameClick = { id ->
                                    navController.navigate(Screen.createGameDetailRoute(id))
                                },
                                onComicListClick = { category ->
                                    navController.navigate(Screen.createComicListRoute(category = category))
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
                                onContinueDownload = {
                                    g.av(this@MainActivity)
                                },
                                onApkVersion = {
                                    navController.navigate(Screen.ApkVersionList.route)
                                },
                                onCache = {
                                    val intent =
                                        Intent("android.settings.APPLICATION_DETAILS_SETTINGS")
                                    intent.data = Uri.fromParts("package", packageName, null)
                                    startActivity(intent)
                                },
                                onFaq = {
                                    navController.navigate(Screen.Question.route)
                                },
                                onPin = {
                                    navController.navigate(Screen.ChangePin.route)
                                },
                                onPassword = {
                                    navController.navigate(Screen.ChangePassword.route)
                                },
                                onLogout = { settingsViewModel.logout() },
                                onNightModeChanged = { settingsViewModel.toggleNightMode(it) },
                                onVolumePagingChanged = { settingsViewModel.toggleVolumePaging(it) },
                                onTestingChanged = { settingsViewModel.toggleTesting(it) },
                                onPerformanceChanged = { settingsViewModel.togglePerformance(it) },
                                onDialogDismiss = settingsViewModel::dismissDialog,
                                onScreenOrientationSelected = settingsViewModel::selectScreenOrientationIndex,
                                onScrollDirectionSelected = settingsViewModel::selectScrollDirectionIndex,
                                onImageQualitySelected = settingsViewModel::selectImageQualityIndex,
                                onThemeColorSelected = { index ->
                                    val previous = settingsViewModel.state.themeColorIndex
                                    settingsViewModel.selectThemeColorIndex(index)
                                    if (previous != index) {
                                        startActivity(Intent(this@MainActivity, MainActivity::class.java))
                                        finish()
                                    }
                                },
                                onLauncherIconSelected = settingsViewModel::selectLauncherIconIndex,
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
                                    navController.navigate(Screen.createComicDetailRoute(id))
                                }
                            )
                        }

                        composable(Screen.ComicDetail.route) { backStackEntry ->
                            val comicId = backStackEntry.arguments?.getString("comicId") ?: ""
                            ComicDetailScreen(
                                comicId = comicId,
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

                    // Global overlays preserved as Compose components
                    if (bannerVisible) {
                        AndroidView(
                            modifier = Modifier
                                .fillMaxWidth()
                                .align(androidx.compose.ui.Alignment.BottomCenter),
                            factory = { context ->
                                com.picacomic.fregata.utils.views.BannerWebview(context).apply {
                                    id = R.id.bannerWebview
                                }
                            }
                        )
                    }

                    if (popupVisible) {
                        AndroidView(
                            modifier = Modifier.fillMaxSize(),
                            factory = { context ->
                                com.picacomic.fregata.utils.views.PopupWebview(context).apply {
                                    id = R.id.popupWebview
                                }
                            }
                        )
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
        navControllerRef?.navigate(Screen.createComicDetailRoute(comicId))
    }

    fun openComicListFromLegacy(
        category: String? = null,
        creatorId: String? = null,
        creatorName: String? = null
    ) {
        navControllerRef?.navigate(
            Screen.createComicListRoute(
                category = category,
                creatorId = creatorId,
                creatorName = creatorName
            )
        )
    }

    private fun consumePopupOpenExtras(intent: Intent?) {
        pendingExternalComicId = intent
            ?.getStringExtra(PopupActivity.EXTRA_OPEN_COMIC_ID)
            ?.takeIf { it.isNotBlank() }
        pendingExternalGameId = intent
            ?.getStringExtra(PopupActivity.EXTRA_OPEN_GAME_ID)
            ?.takeIf { it.isNotBlank() }
        intent?.removeExtra(PopupActivity.EXTRA_OPEN_COMIC_ID)
        intent?.removeExtra(PopupActivity.EXTRA_OPEN_GAME_ID)
    }

    // -------------------------------------------------------------
    // Legacy support functions for Fragment compatibility during migration
    // -------------------------------------------------------------
    fun bV() {
        bannerVisible = false
    }

    fun bY() {
        expButtonsVisible = !expButtonsVisible
    }

    fun i(str: String?, str2: String?) {
        // Shows EXP adjustment dialog
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_exp_content_view,
            findViewById<View?>(android.R.id.content) as ViewGroup?,
            false
        )
        val textView = viewInflate.findViewById<TextView>(R.id.textView_exp_content_view_username)
        val editText = viewInflate.findViewById<EditText>(R.id.editText_exp_content_view_exp)
        textView.text = "$str\nID: $str2"
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle).setTitle(str).setView(viewInflate)
            .setPositiveButton(R.string.ok) { dialogInterface, _ ->
                if (!editText?.text.isNullOrEmpty()) {
                    a(editText!!.text.toString().toInt(), str2)
                }
                l(false)
                dialogInterface.dismiss()
            }.setNegativeButton(R.string.cancel) { dialogInterface, _ ->
                l(false)
                dialogInterface.dismiss()
            }.show()
    }
}
