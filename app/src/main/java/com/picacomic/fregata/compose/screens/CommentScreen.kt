package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.widget.Toast
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
import androidx.compose.ui.platform.LocalContext
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
    val context = LocalContext.current

    LaunchedEffect(comicId, gameId, commentId) {
        if (!inPreview) {
            viewModel.loadComments(comicId, gameId, commentId, page = 1, force = true)
        }
    }

    LaunchedEffect(viewModel.errorEvent) {
        if (inPreview || viewModel.errorEvent == 0) return@LaunchedEffect
        val code = viewModel.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, viewModel.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    LaunchedEffect(viewModel.messageEvent) {
        if (inPreview || viewModel.messageEvent == 0) return@LaunchedEffect
        val text = viewModel.messageText ?: viewModel.messageRes?.let(context::getString) ?: return@LaunchedEffect
        Toast.makeText(context, text, Toast.LENGTH_SHORT).show()
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

                            val displayItems = ArrayList(viewModel.commentItems)
                            val replyStateKey = displayItems.joinToString("|") { item ->
                                "${item.commentId}:${item.currentPage}:${item.totalPage}:${item.arrayList?.size ?: 0}:${item.isTop}:${item.isLiked}:${item.isHide}"
                            }
                            val dataKey =
                                "${viewModel.currentPage}_${displayItems.size}_${viewModel.topCommentCount}_${viewModel.expandedCommentIndex}_$replyStateKey"
                            val oldKey = recyclerView.getTag(R.id.recyclerView_comments) as? String
                            if (recyclerView.adapter == null || oldKey != dataKey) {
                                var adapterRef: CommentRecyclerViewAdapter? = null
                                val callback = object : com.picacomic.fregata.a_pkg.e {
                                    override fun A(i: Int) {
                                        adapterRef?.A(i)
                                    }

                                    override fun C(i: Int) {
                                        viewModel.beginReply(i)
                                    }

                                    override fun N(i: Int) {
                                        viewModel.loadReplies(i, reset = false)
                                    }

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

                                    override fun P(i: Int) = Unit

                                    override fun Q(i: Int) {
                                        viewModel.toggleCommentLike(i)
                                    }

                                    override fun R(i: Int) = Unit
                                    override fun S(i: Int) {
                                        viewModel.hideComment(i)
                                    }

                                    override fun T(i: Int) {
                                        viewModel.toggleTop(i)
                                    }

                                    override fun U(i: Int) {
                                        viewModel.toggleDirtyAvatarForComment(i)
                                    }

                                    override fun V(i: Int) {
                                        viewModel.reportComment(i)
                                    }

                                    override fun f(i: Int, i2: Int) {}

                                    override fun g(i: Int, i2: Int) {
                                        viewModel.toggleReplyLike(i, i2)
                                    }

                                    override fun h(i: Int, i2: Int) {}
                                    override fun i(i: Int, i2: Int) {
                                        viewModel.hideReply(i, i2)
                                    }

                                    override fun j(i: Int, i2: Int) {
                                        viewModel.reportReply(i, i2)
                                    }
                                }
                                val adapter = CommentRecyclerViewAdapter(
                                    view.context,
                                    viewModel.profileUser,
                                    "",
                                    displayItems,
                                    callback
                                )
                                adapterRef = adapter
                                adapter.B(viewModel.topCommentCount)
                                adapter.z(viewModel.displayFloorCount)
                                adapter.a(
                                    viewModel.expandedCommentIndex,
                                    displayItems.getOrNull(viewModel.expandedCommentIndex)?.arrayList,
                                    displayItems.getOrNull(viewModel.expandedCommentIndex)?.let {
                                        it.currentPage < it.totalPage
                                    } == true
                                )
                                recyclerView.adapter = adapter
                                recyclerView.setTag(R.id.recyclerView_comments, dataKey)
                            }

                            if (recyclerView.getTag(R.id.linearLayout_comment_page) != true) {
                                recyclerView.addOnScrollListener(object : RecyclerView.OnScrollListener() {
                                    override fun onScrollStateChanged(recyclerView: RecyclerView, newState: Int) {
                                        super.onScrollStateChanged(recyclerView, newState)
                                        val lm = recyclerView.layoutManager as? LinearLayoutManager ?: return
                                        if (lm.findLastVisibleItemPosition() == lm.itemCount - 1 && viewModel.hasMore && !viewModel.isLoading) {
                                            viewModel.loadComments(comicId, gameId, commentId, page = viewModel.currentPage + 1)
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
