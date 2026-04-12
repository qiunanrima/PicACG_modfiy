package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.view.View
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
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.GameDetailViewModel

@Composable
fun GameDetailScreen(
    gameId: String,
    onBack: () -> Unit,
    viewModel: GameDetailViewModel = viewModel()
) {
    LaunchedEffect(gameId) {
        viewModel.loadGame(gameId, force = true)
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
                        .padding(horizontal = 8.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = onBack) {
                        Icon(imageVector = Icons.Filled.ArrowBack, contentDescription = "Back")
                    }
                    Text(
                        text = stringResource(R.string.title_game_detail),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context ->
                        LayoutInflater.from(context).inflate(R.layout.fragment_game_detail, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                        view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE
                        val detail = viewModel.gameDetail
                        if (detail != null) {
                            try {
                                view.findViewById<android.widget.TextView>(R.id.textView_game_detail_title)?.text = detail.title
                                view.findViewById<android.widget.TextView>(R.id.textView_game_detail_publisher)?.text = detail.publisher
                                view.findViewById<android.widget.TextView>(R.id.textView_game_detail_description)?.text = detail.description
                                
                                val iconView = view.findViewById<android.widget.ImageView>(R.id.imageView_game_detail_icon)
                                if (iconView != null && detail.icon != null) {
                                    com.squareup.picasso.Picasso.with(view.context).load(com.picacomic.fregata.utils.g.b(detail.icon)).into(iconView)
                                }
                            } catch (e: Exception) {
                                e.printStackTrace()
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
private fun GameDetailScreenPreview() {
    GameDetailScreen(
        gameId = "preview",
        onBack = {}
    )
}

