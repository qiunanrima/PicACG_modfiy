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
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.Badge
import androidx.compose.material3.BadgedBox
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
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
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Notifications
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaComicListCard
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.viewmodels.HomeViewModel
import com.picacomic.fregata.compose.viewmodels.ProfileViewModel
import com.picacomic.fregata.objects.CollectionObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.ThumbnailObject

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
        if (!inPreview && vm != null && (refreshEvent > 0 || vm.collections.isEmpty())) {
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
                                Icon(
                                    imageVector = Icons.Filled.Notifications,
                                    contentDescription = stringResource(R.string.title_notification),
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

                    collections.isEmpty() -> {
                        PicaEmptyState(message = "No content")
                    }

                    else -> {
                        LazyColumn(
                            modifier = Modifier.fillMaxSize(),
                            contentPadding = PaddingValues(16.dp),
                            verticalArrangement = Arrangement.spacedBy(18.dp),
                        ) {
                            itemsIndexed(
                                items = collections,
                                key = { index, item -> stableLazyKey("home_collection", index, item.title) },
                            ) { _, collection ->
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
    val collections: List<CollectionObject>,
)

private fun homePreviewState(): HomePreviewState {
    val thumb = ThumbnailObject(
        "https://storage1.picacomic.com",
        "tobeimg/IrEYXQ_4J8Iq7JRpV9kMOYEqfhk15lxR7i9LmEbeU6U/fill/300/400/sm/0/aHR0cHM6Ly9zdG9yYWdlMS5waWNhY29taWMuY29tL3N0YXRpYy8xZDFkYjBhMC04NzY0LTQ5ZWEtYmUwYS0zMTRiZWUyYzQ1ZDcuanBn.jpg",
        "01.jpg"
    )
    val thumb2 = ThumbnailObject(
        "https://storage1.picacomic.com",
        "tobeimg/Vm9AZXmlGOU42UBMCrcr5Qcmun-3zJ6lH9qwNFgBN8Q/fill/300/400/sm/0/aHR0cHM6Ly9zdG9yYWdlMS5waWNhY29taWMuY29tL3N0YXRpYy80YjEzZDhlOC03NzBlLTQ5ZjQtOTJhYS04NDA1OWNmOWZiMWMuanBn.jpg",
        "00封面_结果.jpg"
    )
    val comics = arrayListOf(
        ComicListObject("5d56e4370bcf57397e60576b", "(C94) ホカホカJS温泉 [中国翻訳]", "アカタマ (桜吹雪ねる)", 316, 26, 1, true, arrayListOf("短篇", "妹妹系"), thumb),
        ComicListObject("5d09f7701edbf52f24b2819d", "【明日方舟】凛冬の拘束调教（上篇）", "大阿卡纳XIV", 4779, 18, 1, false, arrayListOf("短篇"), thumb2),
        ComicListObject("comic-3", "嗶咔漢化精选合集", "翻译组联合", 680, 20, 1, true, arrayListOf("長篇", "推薦"), thumb),
    )
    return HomePreviewState(
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
