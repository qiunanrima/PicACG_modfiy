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
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.GameListRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.GameViewModel

@Composable
fun GameScreen(
    viewModel: GameViewModel = viewModel(),
    onGameClick: (String) -> Unit
) {
    LaunchedEffect(Unit) {
        if (viewModel.games.isEmpty()) {
            viewModel.loadData()
        }
    }

    PicaComposeTheme {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 20.dp, vertical = 14.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.title_game_list),
                        style = MaterialTheme.typography.titleLarge
                    )
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context ->
                        LayoutInflater.from(context)
                            .inflate(R.layout.layout_compose_recycler_content, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        val recyclerView =
                            view.findViewById<RecyclerView>(R.id.recyclerView_compose_content)
                        
                        recyclerView?.let { rv ->
                            val oldSize = rv.getTag(R.id.composeView_game) as? Int
                            if (rv.adapter == null || oldSize != viewModel.games.size) {
                                rv.layoutManager = GridLayoutManager(view.context, 2)
                                rv.adapter = GameListRecyclerViewAdapter(
                                    view.context, 
                                    ArrayList(viewModel.games),
                                    object : com.picacomic.fregata.a_pkg.k {
                                        override fun C(i: Int) {
                                            if (i >= 0 && i < viewModel.games.size) {
                                                onGameClick(viewModel.games[i].gameId)
                                            }
                                        }
                                    }
                                )
                                rv.setTag(R.id.composeView_game, viewModel.games.size)
                            }

                            if (rv.getTag(R.id.textView_profile_level) != true) {
                                rv.addOnScrollListener(object : RecyclerView.OnScrollListener() {
                                    override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                                        super.onScrollStateChanged(recyclerView, newState)
                                        val layoutManager = recyclerView.layoutManager as? androidx.recyclerview.widget.LinearLayoutManager
                                            ?: return
                                        if (layoutManager.findLastVisibleItemPosition() == layoutManager.itemCount - 1) {
                                            viewModel.loadData()
                                        }
                                    }
                                })
                                rv.setTag(R.id.textView_profile_level, true)
                            }
                        }
                    }
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun GameScreenPreview() {
    GameScreen(onGameClick = {})
}
