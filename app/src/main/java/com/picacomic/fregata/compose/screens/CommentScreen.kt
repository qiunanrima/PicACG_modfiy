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
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.CommentRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.CommentViewModel
import com.picacomic.fregata.objects.CommentWithReplyObject

@Composable
fun CommentScreen(
    comicId: String? = null,
    gameId: String? = null,
    commentId: String? = null,
    onBack: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onGameClick: (String) -> Unit = {},
    viewModel: CommentViewModel = viewModel()
) {
    val inPreview = LocalInspectionMode.current

    LaunchedEffect(comicId, gameId, commentId) {
        if (!inPreview) {
            viewModel.loadComments(comicId, gameId, commentId, page = 1, force = true)
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
                        text = stringResource(R.string.title_comment),
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
                            val recyclerView = view.findViewById<RecyclerView>(R.id.recyclerView_compose_content)
                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager = LinearLayoutManager(view.context)
                            }

                            val displayItems = ArrayList<CommentWithReplyObject>()
                            viewModel.topComments.forEach { top ->
                                displayItems.add(CommentWithReplyObject(top).apply { setTop(true) })
                            }
                            viewModel.comments.forEach { normal ->
                                displayItems.add(CommentWithReplyObject(normal))
                            }

                            val dataKey = "${viewModel.currentPage}_${displayItems.size}_${viewModel.topComments.size}"
                            val oldKey = recyclerView.getTag(R.id.recyclerView_comments) as? String
                            if (recyclerView.adapter == null || oldKey != dataKey) {
                                var adapterRef: CommentRecyclerViewAdapter? = null
                                val callback = object : com.picacomic.fregata.a_pkg.e {
                                    override fun A(i: Int) {
                                        adapterRef?.A(i)
                                    }

                                    override fun C(i: Int) {
                                        val current = displayItems.getOrNull(i) ?: return
                                        val expanded =
                                            recyclerView.getTag(R.id.textView_comment_total_page) as? Int
                                        if (expanded == i) {
                                            adapterRef?.a(-1, null, false)
                                            recyclerView.setTag(R.id.textView_comment_total_page, -1)
                                        } else {
                                            adapterRef?.a(i, current.arrayList, false)
                                            recyclerView.setTag(R.id.textView_comment_total_page, i)
                                        }
                                    }

                                    override fun N(i: Int) {}

                                    override fun O(i: Int) {
                                        val current = displayItems.getOrNull(i) ?: return
                                        val comic = current.comicId?.comicId
                                        val game = current.gameId?.gameId
                                        if (!comic.isNullOrEmpty()) {
                                            onComicClick(comic)
                                        } else if (!game.isNullOrEmpty()) {
                                            onGameClick(game)
                                        }
                                    }

                                    override fun P(i: Int) {}

                                    override fun Q(i: Int) {
                                        val current = displayItems.getOrNull(i) ?: return
                                        if (current.isLiked) {
                                            current.likesCount = (current.likesCount - 1).coerceAtLeast(0)
                                            current.isLiked = false
                                        } else {
                                            current.likesCount += 1
                                            current.isLiked = true
                                        }
                                        adapterRef?.notifyItemChanged(i)
                                    }

                                    override fun R(i: Int) {}
                                    override fun S(i: Int) {}
                                    override fun T(i: Int) {}
                                    override fun U(i: Int) {}
                                    override fun V(i: Int) {}
                                    override fun f(i: Int, i2: Int) {}

                                    override fun g(i: Int, i2: Int) {
                                        val reply = displayItems.getOrNull(i)?.arrayList?.getOrNull(i2) ?: return
                                        if (reply.isLiked) {
                                            reply.likesCount = (reply.likesCount - 1).coerceAtLeast(0)
                                            reply.isLiked = false
                                        } else {
                                            reply.likesCount += 1
                                            reply.isLiked = true
                                        }
                                        adapterRef?.notifyItemChanged(i)
                                    }

                                    override fun h(i: Int, i2: Int) {}
                                    override fun i(i: Int, i2: Int) {}
                                    override fun j(i: Int, i2: Int) {}
                                }
                                val adapter = CommentRecyclerViewAdapter(
                                    view.context,
                                    null,
                                    "",
                                    displayItems,
                                    callback
                                )
                                adapterRef = adapter
                                adapter.B(viewModel.topComments.size)
                                adapter.z(displayItems.size)
                                recyclerView.adapter = adapter
                                recyclerView.setTag(R.id.recyclerView_comments, dataKey)
                            }

                            if (recyclerView.getTag(R.id.linearLayout_comment_page) != true) {
                                recyclerView.addOnScrollListener(object : RecyclerView.OnScrollListener() {
                                    override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                                        super.onScrollStateChanged(recyclerView, newState)
                                        val lm = recyclerView.layoutManager as? LinearLayoutManager ?: return
                                        if (lm.findLastVisibleItemPosition() == lm.itemCount - 1 && viewModel.hasMore && !viewModel.isLoading) {
                                            viewModel.loadComments(
                                                comicId = comicId,
                                                gameId = gameId,
                                                commentId = commentId,
                                                page = (viewModel.currentPage + 1).coerceAtLeast(1)
                                            )
                                        }
                                    }
                                })
                                recyclerView.setTag(R.id.linearLayout_comment_page, true)
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
private fun CommentScreenPreview() {
    CommentScreen(
        comicId = "preview",
        onBack = {}
    )
}
