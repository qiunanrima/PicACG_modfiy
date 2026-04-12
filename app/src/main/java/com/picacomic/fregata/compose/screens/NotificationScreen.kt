package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import androidx.compose.foundation.background
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
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.NotificationRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.NotificationViewModel

@Composable
fun NotificationScreen(
    onBack: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onGameClick: (String) -> Unit = {},
    onCommentClick: (String) -> Unit = {},
    onPicaAppClick: (title: String, link: String) -> Unit = { _, _ -> },
    viewModel: NotificationViewModel = viewModel()
) {
    val inPreview = LocalInspectionMode.current

    LaunchedEffect(Unit) {
        if (!inPreview && viewModel.notifications.isEmpty()) {
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
                        text = stringResource(R.string.title_notification),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
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
                                recyclerView.layoutManager =
                                    androidx.recyclerview.widget.LinearLayoutManager(view.context)
                            }

                            val oldSize = recyclerView.getTag(R.id.recyclerView_compose_content) as? Int
                            if (recyclerView.adapter == null || oldSize != viewModel.notifications.size) {
                                recyclerView.adapter = NotificationRecyclerViewAdapter(
                                    view.context,
                                    ArrayList(viewModel.notifications),
                                    object : com.picacomic.fregata.a_pkg.h {
                                        override fun W(i: Int) {
                                            val item = viewModel.notifications.getOrNull(i) ?: return
                                            val redirectType = item.redirectType ?: return
                                            val redirectId = item.redirectId
                                            when {
                                                redirectType.equals("comic", ignoreCase = true) && !redirectId.isNullOrEmpty() -> {
                                                    onComicClick(redirectId)
                                                }

                                                redirectType.equals("game", ignoreCase = true) && !redirectId.isNullOrEmpty() -> {
                                                    onGameClick(redirectId)
                                                }

                                                redirectType.equals("comment", ignoreCase = true) && !redirectId.isNullOrEmpty() -> {
                                                    onCommentClick(redirectId)
                                                }

                                                (redirectType.equals("app", ignoreCase = true) ||
                                                    redirectType.equals("web", ignoreCase = true)) && !item.link.isNullOrEmpty() -> {
                                                    onPicaAppClick(item.title ?: "", item.link)
                                                }
                                            }
                                        }

                                        override fun X(i: Int) {
                                        }

                                        override fun Y(i: Int) {
                                        }
                                    }
                                )
                                recyclerView.setTag(
                                    R.id.recyclerView_compose_content,
                                    viewModel.notifications.size
                                )
                            }

                            if (recyclerView.getTag(R.id.composeView_notification) != true) {
                                recyclerView.addOnScrollListener(object :
                                    androidx.recyclerview.widget.RecyclerView.OnScrollListener() {
                                    override fun onScrollStateChanged(
                                        recyclerView: androidx.recyclerview.widget.RecyclerView,
                                        newState: Int
                                    ) {
                                        super.onScrollStateChanged(recyclerView, newState)
                                        val lm = recyclerView.layoutManager as?
                                            androidx.recyclerview.widget.LinearLayoutManager ?: return
                                        if (lm.findLastVisibleItemPosition() == lm.itemCount - 1) {
                                            viewModel.loadData()
                                        }
                                    }
                                })
                                recyclerView.setTag(R.id.composeView_notification, true)
                            }
                        }
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun NotificationScreenPreview() {
    NotificationScreen(onBack = {})
}
