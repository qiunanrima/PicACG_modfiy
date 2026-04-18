package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
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
import com.picacomic.fregata.compose.viewmodels.LeaderboardViewModel
import com.picacomic.fregata.databinding.ItemLeaderboardKnightOrderRecyclerViewCellBinding
import com.picacomic.fregata.databinding.ItemLeaderboardPopularOrderRecyclerViewCellBinding
import com.picacomic.fregata.objects.LeaderboardComicListObject
import com.picacomic.fregata.objects.LeaderboardKnightObject
import com.picacomic.fregata.utils.PicassoTransformations
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso

@Composable
fun LeaderboardScreen(
    onBack: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onKnightClick: (knightId: String, knightName: String) -> Unit = { _, _ -> },
    viewModel: LeaderboardViewModel? = null
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    var selectedTab by remember { mutableIntStateOf(0) }
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(Unit) {
        if (!inPreview) {
            screenViewModel?.loadPopular("H24")
            screenViewModel?.loadKnights()
        }
    }

    LaunchedEffect(selectedTab) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview) return@LaunchedEffect
        if (selectedTab == 0 && vm.popularComics.isEmpty()) {
            vm.loadPopular(vm.popularTime, force = true)
        } else if (selectedTab == 1 && vm.knights.isEmpty()) {
            vm.loadKnights(force = true)
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

    PicaComposeTheme {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                Column {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 8.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        IconButton(onClick = onBack) {
                            Icon(
                                imageVector = Icons.Filled.ArrowBack,
                                contentDescription = "Back"
                            )
                        }
                        Text(
                            text = stringResource(R.string.title_leaderboard),
                            style = MaterialTheme.typography.titleLarge,
                            modifier = Modifier.padding(start = 8.dp)
                        )
                    }

                    TabRow(selectedTabIndex = selectedTab) {
                        Tab(
                            selected = selectedTab == 0,
                            onClick = { selectedTab = 0 },
                            text = { Text(text = stringResource(R.string.leaderboard_tab_popular)) }
                        )
                        Tab(
                            selected = selectedTab == 1,
                            onClick = { selectedTab = 1 },
                            text = { Text(text = stringResource(R.string.leaderboard_tab_knight)) }
                        )
                    }

                    if (selectedTab == 0) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 8.dp, vertical = 6.dp),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            LeaderboardTimeButton(
                                text = stringResource(R.string.leaderboard_tab_popular_24hr),
                                selected = screenViewModel?.popularTime == "H24"
                            ) {
                                screenViewModel?.loadPopular("H24", force = true)
                            }
                            LeaderboardTimeButton(
                                text = stringResource(R.string.leaderboard_tab_popular_7days),
                                selected = screenViewModel?.popularTime == "D7"
                            ) {
                                screenViewModel?.loadPopular("D7", force = true)
                            }
                            LeaderboardTimeButton(
                                text = stringResource(R.string.leaderboard_tab_popular_30days),
                                selected = screenViewModel?.popularTime == "D30"
                            ) {
                                screenViewModel?.loadPopular("D30", force = true)
                            }
                        }
                    }
                }
            }

            Box(modifier = Modifier.weight(1f)) {
                val vm = screenViewModel
                if (inPreview) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp)
                    ) {
                        PreviewListPanel(
                            title = if (selectedTab == 0) {
                                stringResource(R.string.leaderboard_tab_popular)
                            } else {
                                stringResource(R.string.leaderboard_tab_knight)
                            },
                            items = if (selectedTab == 0) {
                                listOf("热门漫画 A", "热门漫画 B", "热门漫画 C")
                            } else {
                                listOf("骑士 Alpha", "骑士 Beta", "骑士 Gamma")
                            }
                        )
                    }
                } else if (selectedTab == 0) {
                    when {
                        vm == null || (vm.popularComics.isEmpty() && vm.isLoadingPopular) -> {
                            PicaLoadingIndicator()
                        }

                        vm.popularComics.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.popularComics,
                                    key = { index, item ->
                                        "${item.comicId ?: "popular"}_$index"
                                    }
                                ) { index, item ->
                                    LeaderboardPopularItem(
                                        item = item,
                                        index = index,
                                        time = vm.popularTime
                                    ) {
                                        item.comicId?.let(onComicClick)
                                    }
                                }
                            }
                        }
                    }
                } else {
                    when {
                        vm == null || (vm.knights.isEmpty() && vm.isLoadingKnight) -> {
                            PicaLoadingIndicator()
                        }

                        vm.knights.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.knights,
                                    key = { index, item ->
                                        "${item.leaderboardKnightId ?: "knight"}_$index"
                                    }
                                ) { index, item ->
                                    LeaderboardKnightItem(
                                        item = item,
                                        index = index
                                    ) {
                                        val id = item.leaderboardKnightId
                                        val name = item.name
                                        if (!id.isNullOrEmpty() && !name.isNullOrEmpty()) {
                                            onKnightClick(id, name)
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
}

@Composable
private fun LeaderboardPopularItem(
    item: LeaderboardComicListObject,
    index: Int,
    time: String,
    onClick: () -> Unit,
) {
    val layoutRes = when (index) {
        0 -> R.layout.item_leaderboard_popular_1st_recycler_view_cell
        1 -> R.layout.item_leaderboard_popular_2nd_recycler_view_cell
        2 -> R.layout.item_leaderboard_popular_3rd_recycler_view_cell
        else -> R.layout.item_leaderboard_popular_order_recycler_view_cell
    }

    AndroidView(
        factory = { context ->
            LayoutInflater.from(context).inflate(layoutRes, null, false)
        },
        modifier = Modifier.fillMaxWidth(),
        update = { view ->
            val binding = ItemLeaderboardPopularOrderRecyclerViewCellBinding.bind(view)
            binding.root.setOnClickListener { onClick() }
            binding.textViewLeaderboardPopularOrderRecyclerViewCellOrder.text = (index + 1).toString()
            binding.textViewLeaderboardPopularOrderRecyclerViewCellName.text = item.title.orEmpty()
            binding.textViewLeaderboardPopularOrderRecyclerViewCellAuthor.text = item.author.orEmpty()
            binding.textViewLeaderboardPopularOrderRecyclerViewCellCategory.text =
                item.categories?.toString().orEmpty()
            binding.textViewLeaderboardPopularOrderRecyclerViewCellViewCount.text =
                item.leaderboardCount.toString()
            when (time) {
                "D7" -> binding.textViewLeaderboardPopularOrderRecyclerViewCellViewCountTitle
                    .setText(R.string.leaderboard_view_count_title_7days)

                "D30" -> binding.textViewLeaderboardPopularOrderRecyclerViewCellViewCountTitle
                    .setText(R.string.leaderboard_view_count_title_30days)

                else -> binding.textViewLeaderboardPopularOrderRecyclerViewCellViewCountTitle
                    .setText(R.string.leaderboard_view_count_title_24hr)
            }
            Picasso.with(view.context)
                .load(g.b(item.thumb))
                .transform(PicassoTransformations.CARD_COVER)
                .placeholder(R.drawable.placeholder_avatar_2)
                .into(binding.imageViewLeaderboardPopularOrderRecyclerViewCellImage)
        }
    )
}

@Composable
private fun LeaderboardKnightItem(
    item: LeaderboardKnightObject,
    index: Int,
    onClick: () -> Unit,
) {
    val layoutRes = when (index) {
        0 -> R.layout.item_leaderboard_knight_1st_recycler_view_cell
        1 -> R.layout.item_leaderboard_knight_2nd_recycler_view_cell
        2 -> R.layout.item_leaderboard_knight_3rd_recycler_view_cell
        else -> R.layout.item_leaderboard_knight_order_recycler_view_cell
    }

    AndroidView(
        factory = { context ->
            LayoutInflater.from(context).inflate(layoutRes, null, false)
        },
        modifier = Modifier.fillMaxWidth(),
        update = { view ->
            val binding = ItemLeaderboardKnightOrderRecyclerViewCellBinding.bind(view)
            binding.root.setOnClickListener { onClick() }
            binding.textViewLeaderboardKnightOrderRecyclerViewCellOrder.text = (index + 1).toString()
            binding.textViewLeaderboardKnightOrderRecyclerViewCellLevel.text = item.level.toString()
            binding.textViewLeaderboardKnightOrderRecyclerViewCellName.text = item.name.orEmpty()
            binding.textViewLeaderboardKnightOrderRecyclerViewCellComic.text =
                item.comicsUploaded.toString()
            if (!item.character.isNullOrBlank()) {
                Picasso.with(view.context)
                    .load(item.character)
                    .into(binding.imageViewLeaderboardKnightOrderRecyclerViewCellUserThumbVerified)
                binding.imageViewLeaderboardKnightOrderRecyclerViewCellUserThumbVerified.visibility =
                    View.VISIBLE
            } else {
                binding.imageViewLeaderboardKnightOrderRecyclerViewCellUserThumbVerified.visibility =
                    View.GONE
            }
            Picasso.with(view.context)
                .load(g.b(item.avatar))
                .placeholder(R.drawable.placeholder_avatar_2)
                .into(binding.imageViewLeaderboardKnightOrderRecyclerViewCellAvatar)
        }
    )
}

@Composable
private fun LeaderboardTimeButton(
    text: String,
    selected: Boolean,
    onClick: () -> Unit
) {
    TextButton(
        onClick = onClick,
        modifier = Modifier
            .background(
                if (selected) MaterialTheme.colorScheme.primaryContainer
                else MaterialTheme.colorScheme.surfaceVariant,
                shape = MaterialTheme.shapes.small
            )
    ) {
        Text(text = text)
    }
}

@Preview(showBackground = true)
@Composable
private fun LeaderboardScreenPreview() {
    LeaderboardScreen(onBack = {})
}
