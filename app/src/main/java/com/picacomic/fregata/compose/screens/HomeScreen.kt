package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.Badge
import androidx.compose.material3.BadgedBox
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaComicListCard
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.components.PicaTwoLineCard
import com.picacomic.fregata.compose.viewmodels.HomeViewModel
import com.picacomic.fregata.compose.viewmodels.ProfileViewModel
import com.picacomic.fregata.objects.AnnouncementObject
import com.picacomic.fregata.objects.CollectionObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.utils.g

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeScreen(
    viewModel: HomeViewModel? = null,
    refreshEvent: Int = 0,
    onNotification: () -> Unit,
    onComicClick: (String) -> Unit,
    onMoreClick: (String) -> Unit,
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val punchInViewModel: ProfileViewModel? = if (inPreview) null else viewModel(key = "home_auto_punch_in")
    val previewState = if (inPreview) homePreviewState() else null

    LaunchedEffect(refreshEvent) {
        val vm = screenViewModel
        if (!inPreview && vm != null && (refreshEvent > 0 || (vm.announcements.isEmpty() && vm.collections.isEmpty()))) {
            vm.loadData()
        }
        if (!inPreview) {
            punchInViewModel?.punchInIfNeeded()
        }
    }

    DisposableEffect(lifecycleOwner, screenViewModel) {
        val observer = LifecycleEventObserver { _, event ->
            if (inPreview) return@LifecycleEventObserver
            when (event) {
                Lifecycle.Event.ON_RESUME -> screenViewModel?.refreshNotificationState()
                Lifecycle.Event.ON_PAUSE -> screenViewModel?.saveAnnouncements()
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, vm.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    LaunchedEffect(punchInViewModel?.punchInSuccessEvent) {
        val vm = punchInViewModel ?: return@LaunchedEffect
        if (inPreview || vm.punchInSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, R.string.alert_punch_in_success, Toast.LENGTH_SHORT).show()
    }

    LaunchedEffect(punchInViewModel?.errorEvent) {
        val vm = punchInViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, R.string.alert_general_error, Toast.LENGTH_SHORT).show()
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_home),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    },
                    actions = {
                        IconButton(onClick = onNotification) {
                            BadgedBox(
                                badge = {
                                    if (screenViewModel?.hasNotification == true) {
                                        Badge()
                                    }
                                },
                            ) {
                                Text(
                                    text = stringResource(R.string.title_notification).take(1),
                                    style = MaterialTheme.typography.titleMedium,
                                    fontWeight = FontWeight.Bold,
                                )
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            val announcements = if (inPreview) previewState?.announcements.orEmpty() else screenViewModel?.announcements.orEmpty()
            val collections = if (inPreview) previewState?.collections.orEmpty() else screenViewModel?.collections.orEmpty()
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
            ) {
                when {
                    !inPreview && screenViewModel?.isLoading == true && collections.isEmpty() -> {
                        PicaLoadingIndicator()
                    }

                    collections.isEmpty() && announcements.isEmpty() -> {
                        PicaEmptyState(message = "No content")
                    }

                    else -> {
                        LazyColumn(
                            modifier = Modifier.fillMaxSize(),
                            contentPadding = PaddingValues(16.dp),
                            verticalArrangement = Arrangement.spacedBy(18.dp),
                        ) {
                            if (announcements.isNotEmpty()) {
                                item(key = "announcements") {
                                    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                                        PicaSectionHeader(
                                            title = stringResource(R.string.title_notification),
                                            actionLabel = stringResource(R.string.more),
                                            onActionClick = onNotification,
                                        )
                                        announcements.forEach { announcement ->
                                            PicaTwoLineCard(
                                                title = announcement.title.orEmpty(),
                                                body = announcement.content.orEmpty(),
                                                supporting = g.B(context, announcement.createdAt),
                                                onClick = onNotification,
                                            )
                                        }
                                    }
                                }
                            }

                            items(
                                items = collections,
                                key = { it.title.orEmpty() },
                            ) { collection ->
                                HomeCollectionRow(
                                    collection = collection,
                                    onMoreClick = onMoreClick,
                                    onComicClick = onComicClick,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun HomeCollectionRow(
    collection: CollectionObject,
    onMoreClick: (String) -> Unit,
    onComicClick: (String) -> Unit,
) {
    val comics = collection.comics.orEmpty()
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        PicaSectionHeader(
            title = collection.title.orEmpty(),
            actionLabel = stringResource(R.string.more),
            onActionClick = { onMoreClick(collection.title.orEmpty()) },
        )
        Row(
            modifier = Modifier.horizontalScroll(rememberScrollState()),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            comics.forEach { comic ->
                PicaComicListCard(
                    title = comic.title.orEmpty(),
                    subtitle = comic.author.orEmpty(),
                    thumbnail = comic.thumb,
                    likes = comic.likesCount,
                    pages = comic.pagesCount,
                    episodes = comic.episodeCount,
                    categories = comic.categories.orEmpty(),
                    coverWidth = 72.dp,
                    onClick = {
                        val comicId = comic.comicId
                        if (!comicId.isNullOrBlank()) onComicClick(comicId)
                    },
                    modifier = Modifier.width(240.dp),
                )
            }
        }
    }
}

private data class HomePreviewState(
    val announcements: List<AnnouncementObject>,
    val collections: List<CollectionObject>,
)

private fun homePreviewState(): HomePreviewState {
    val cover = ThumbnailObject("https://storage1.picacomic.com", "home-preview.jpg", "home-preview.jpg")
    val comics = arrayListOf(
        ComicListObject("comic-1", "Hot spring story", "Akatama", 316, 26, 1, true, arrayListOf("Short"), cover),
        ComicListObject("comic-2", "Arknights winter", "Arcana XIV", 4779, 18, 1, false, arrayListOf("Short"), cover),
        ComicListObject("comic-3", "Pica selected", "Team", 680, 20, 1, true, arrayListOf("Pick"), cover),
    )
    return HomePreviewState(
        announcements = listOf(
            AnnouncementObject("ann-1", "Maintenance", "Short maintenance tonight.", "2026-04-24T10:00:00.000Z", cover),
            AnnouncementObject("ann-2", "Update", "Compose screens refreshed.", "2026-04-23T08:00:00.000Z", cover),
        ),
        collections = listOf(
            CollectionObject("Latest", ArrayList(comics)),
            CollectionObject("Popular", ArrayList(comics.reversed())),
        ),
    )
}

@Preview(showBackground = true)
@Composable
private fun HomeScreenPreview() {
    HomeScreen(
        onNotification = {},
        onComicClick = {},
        onMoreClick = {},
    )
}
