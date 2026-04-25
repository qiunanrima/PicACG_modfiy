package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.GridItemSpan
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.itemsIndexed
import androidx.compose.foundation.lazy.grid.rememberLazyGridState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaGameCard
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.viewmodels.GameViewModel
import com.picacomic.fregata.objects.GameListObject
import com.picacomic.fregata.objects.ThumbnailObject
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GameScreen(
    viewModel: GameViewModel? = null,
    onGameClick: (String) -> Unit
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val gridState = rememberLazyGridState()
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewGames = if (inPreview) gamePreviewList() else emptyList()

    LaunchedEffect(Unit) {
        if (!inPreview && screenViewModel?.games?.isEmpty() == true) {
            screenViewModel?.loadData()
        }
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

    if (!inPreview) {
        RememberGridLoadMore(
            state = gridState,
            enabled = screenViewModel?.games?.isNotEmpty() == true &&
                screenViewModel?.isLoading != true &&
                screenViewModel?.hasMore == true,
        ) {
            screenViewModel?.loadData()
        }
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                CenterAlignedTopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_game_list),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer
                    ),
                    scrollBehavior = scrollBehavior
                )
            },
            containerColor = MaterialTheme.colorScheme.background
        ) { innerPadding ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
            ) {
                if (inPreview) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp)
                    ) {
                        PreviewGridPanel(
                            title = stringResource(R.string.title_game_list),
                            items = previewGames.map { "${it.title} ${it.version}" },
                            columns = 2
                        )
                        PreviewListPanel(
                            title = "平台 / 标签",
                            items = previewGames.map {
                                "${it.title} · ${if (it.isAndroid) "Android" else ""}${if (it.isIos) "/iOS" else ""} · ${if (it.isAdult) "成人" else "全年龄"}"
                            }
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.games.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.games.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyVerticalGrid(
                                columns = GridCells.Fixed(2),
                                state = gridState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(4.dp),
                                horizontalArrangement = Arrangement.spacedBy(4.dp),
                                verticalArrangement = Arrangement.spacedBy(4.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.games,
                                    key = { index, item ->
                                        item.gameId ?: "game_$index"
                                    }
                                ) { _, item ->
                                    GameGridItem(item = item) {
                                        item.gameId?.let(onGameClick)
                                    }
                                }

                                if (vm.isLoading) {
                                    item(
                                        key = "loading",
                                        span = { GridItemSpan(maxLineSpan) }
                                    ) {
                                        ListLoadingFooter()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

private fun gamePreviewList(): List<GameListObject> {
    val icon = ThumbnailObject(
        "https://storage1.picacomic.com",
        "a7fe934b-a0c3-466e-8d38-4345c1ecf559.jpg",
        "0608_1.jpg"
    )
    return listOf(
        GameListObject("58296dee1cc00b5d50b1b5fe", "機動戰隊", "2.1", "即时弹道运算引擎打造热血像素机甲格斗手游", 16036, true, false, false, true, icon),
        GameListObject("5d511f6779f8d4028e63c0a7", "戀花綻放櫻飛時", "1.0.0", "ぱれっと", 858, false, true, true, true, icon),
        GameListObject("game-3", "CLANNAD", "1.0.0", "Key", 2205, false, false, true, true, icon),
        GameListObject("game-4", "像素地牢", "0.9.8", "独立开发", 320, false, false, false, true, icon)
    )
}

@Composable
private fun GameGridItem(
    item: GameListObject,
    onClick: () -> Unit,
) {
    PicaGameCard(
        title = item.title.orEmpty(),
        publisher = item.publisher.orEmpty(),
        version = item.version.orEmpty(),
        icon = item.icon,
        likes = item.likesCount,
        android = item.isAndroid,
        ios = item.isIos,
        adult = item.isAdult,
        suggested = item.isSuggest,
        onClick = onClick,
        modifier = Modifier.fillMaxWidth(),
    )
}

@Preview(showBackground = true)
@Composable
private fun GameScreenPreview() {
    GameScreen(onGameClick = {})
}
