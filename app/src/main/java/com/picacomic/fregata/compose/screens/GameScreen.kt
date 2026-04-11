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
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.PreviewParameter
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.GameListRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.GameViewModel

@Preview
@Composable
fun GameScreen(
    viewModel: GameViewModel = viewModel(),
    onGameClick: (String) -> Unit
) {
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
                        LayoutInflater.from(context).inflate(R.layout.fragment_game, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        val headerView = view.findViewById<com.picacomic.fregata.compose.views.PicaHeaderRecyclerComposeView>(R.id.composeView_game)
                        val recyclerView = headerView?.getRecyclerView()
                        
                        recyclerView?.let { rv ->
                             if (rv.adapter == null) {
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
                             } else {
                                (rv.adapter as GameListRecyclerViewAdapter).notifyDataSetChanged()
                             }
                        }
                    }
                )
            }
        }
    }
}
