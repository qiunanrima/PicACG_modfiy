package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.view.View
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
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.viewmodels.GameViewModel
import com.picacomic.fregata.databinding.ItemGameRecyclerViewCellBinding
import com.picacomic.fregata.objects.GameListObject
import com.picacomic.fregata.utils.PicassoTransformations
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso
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
                            items = listOf("Game A", "Game B", "Game C", "Game D"),
                            columns = 2
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
                                contentPadding = PaddingValues(4.dp)
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

@Composable
private fun GameGridItem(
    item: GameListObject,
    onClick: () -> Unit,
) {
    AndroidView(
        factory = { context ->
            LayoutInflater.from(context).inflate(R.layout.item_game_recycler_view_cell, null, false)
        },
        modifier = Modifier.fillMaxWidth(),
        update = { view ->
            val binding = ItemGameRecyclerViewCellBinding.bind(view)
            binding.root.setOnClickListener { onClick() }
            binding.textViewGameRecyclerViewCellTitle.text = item.title.orEmpty()
            binding.textViewGameRecyclerViewCellPublisher.text = item.publisher.orEmpty()
            binding.imageViewGameRecyclerViewCellAdult.visibility =
                if (item.isAdult) View.VISIBLE else View.GONE
            binding.imageViewGameRecyclerViewCellPicaRecommend.visibility =
                if (item.isSuggest) View.VISIBLE else View.GONE
            Picasso.with(view.context)
                .load(g.b(item.icon))
                .transform(PicassoTransformations.LARGE_COVER)
                .placeholder(R.drawable.placeholder_avatar_2)
                .into(binding.imageViewGameRecyclerViewCellBanner)
        }
    )
}

@Preview(showBackground = true)
@Composable
private fun GameScreenPreview() {
    GameScreen(onGameClick = {})
}
