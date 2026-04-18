package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
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
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.recyclerview.widget.LinearLayoutManager
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.LeaderboardKnightRecyclerViewAdapter
import com.picacomic.fregata.adapters.LeaderboardPopularRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.LeaderboardViewModel

@Composable
fun LeaderboardScreen(
    onBack: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onKnightClick: (knightId: String, knightName: String) -> Unit = { _, _ -> },
    viewModel: LeaderboardViewModel = viewModel()
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    var selectedTab by remember { mutableIntStateOf(0) }

    LaunchedEffect(Unit) {
        if (!inPreview) {
            viewModel.loadPopular("H24")
            viewModel.loadKnights()
        }
    }

    LaunchedEffect(selectedTab) {
        if (inPreview) return@LaunchedEffect
        if (selectedTab == 0 && viewModel.popularComics.isEmpty()) {
            viewModel.loadPopular(viewModel.popularTime, force = true)
        } else if (selectedTab == 1 && viewModel.knights.isEmpty()) {
            viewModel.loadKnights(force = true)
        }
    }

    LaunchedEffect(viewModel.errorEvent) {
        if (inPreview || viewModel.errorEvent <= 0) return@LaunchedEffect
        val code = viewModel.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, viewModel.errorBody).dN()
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
                                selected = viewModel.popularTime == "H24"
                            ) {
                                viewModel.loadPopular("H24", force = true)
                            }
                            LeaderboardTimeButton(
                                text = stringResource(R.string.leaderboard_tab_popular_7days),
                                selected = viewModel.popularTime == "D7"
                            ) {
                                viewModel.loadPopular("D7", force = true)
                            }
                            LeaderboardTimeButton(
                                text = stringResource(R.string.leaderboard_tab_popular_30days),
                                selected = viewModel.popularTime == "D30"
                            ) {
                                viewModel.loadPopular("D30", force = true)
                            }
                        }
                    }
                }
            }

            Box(modifier = Modifier.weight(1f)) {
                if (inPreview) {
                    Box(modifier = Modifier.fillMaxSize())
                } else {
                    AndroidView(
                        factory = { context ->
                            LayoutInflater.from(context)
                                .inflate(R.layout.layout_compose_recycler_content, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val recyclerView = view.findViewById<androidx.recyclerview.widget.RecyclerView>(
                                R.id.recyclerView_compose_content
                            )
                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager = LinearLayoutManager(view.context)
                            }
                            val currentMode = if (selectedTab == 0) "popular" else "knight"
                            val oldMode = recyclerView.getTag(R.id.recyclerView_compose_content) as? String

                            if (selectedTab == 0) {
                                val oldKey = recyclerView.getTag(R.id.recyclerView_leaderboard_popular) as? String
                                val newKey = "${viewModel.popularTime}_${viewModel.popularComics.size}"
                                if (recyclerView.adapter == null || oldMode != currentMode || oldKey != newKey) {
                                    val adapter = LeaderboardPopularRecyclerViewAdapter(
                                        view.context,
                                        ArrayList(viewModel.popularComics),
                                        object : com.picacomic.fregata.a_pkg.k {
                                            override fun C(i: Int) {
                                                val item = viewModel.popularComics.getOrNull(i) ?: return
                                                if (!item.comicId.isNullOrEmpty()) {
                                                    onComicClick(item.comicId)
                                                }
                                            }
                                        }
                                    )
                                    adapter.H(viewModel.popularTime)
                                    recyclerView.adapter = adapter
                                    recyclerView.setTag(R.id.recyclerView_leaderboard_popular, newKey)
                                    recyclerView.setTag(R.id.recyclerView_compose_content, currentMode)
                                }
                            } else {
                                val oldKey = recyclerView.getTag(R.id.recyclerView_leaderboard_knight) as? Int
                                val newKey = viewModel.knights.size
                                if (recyclerView.adapter == null || oldMode != currentMode || oldKey != newKey) {
                                    recyclerView.adapter = LeaderboardKnightRecyclerViewAdapter(
                                        view.context,
                                        ArrayList(viewModel.knights),
                                        object : com.picacomic.fregata.a_pkg.k {
                                            override fun C(i: Int) {
                                                val item = viewModel.knights.getOrNull(i) ?: return
                                                val id = item.leaderboardKnightId
                                                val name = item.name
                                                if (!id.isNullOrEmpty() && !name.isNullOrEmpty()) {
                                                    onKnightClick(id, name)
                                                }
                                            }
                                        }
                                    )
                                    recyclerView.setTag(R.id.recyclerView_leaderboard_knight, newKey)
                                    recyclerView.setTag(R.id.recyclerView_compose_content, currentMode)
                                }
                            }
                        }
                    )
                }
            }
        }
    }
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
