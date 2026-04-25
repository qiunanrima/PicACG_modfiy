package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.CommentRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.CommentViewModel
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Button
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.Alignment
import androidx.compose.ui.focus.FocusManager
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CommentScreen(
    comicId: String? = null,
    gameId: String? = null,
    commentId: String? = null,
    onBack: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onGameClick: (String) -> Unit = {},
    viewModel: CommentViewModel? = null
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val focusManager = LocalFocusManager.current
    var inputText by rememberSaveable(comicId, gameId, commentId) { mutableStateOf("") }
    val previewState = if (inPreview) commentPreviewState(gameId != null) else null

    LaunchedEffect(comicId, gameId, commentId) {
        if (!inPreview) {
            screenViewModel?.loadComments(comicId, gameId, commentId, page = 1, force = true)
        }
    }

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent == 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, vm.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    LaunchedEffect(screenViewModel?.messageEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.messageEvent == 0) return@LaunchedEffect
        val text = vm.messageText ?: vm.messageRes?.let(context::getString) ?: return@LaunchedEffect
        Toast.makeText(context, text, Toast.LENGTH_SHORT).show()
    }

    LaunchedEffect(screenViewModel?.submitSuccessEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.submitSuccessEvent == 0) return@LaunchedEffect
        inputText = ""
        focusManager.clearFocus()
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_comment),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back)
                            )
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface
                    ),
                    scrollBehavior = scrollBehavior
                )
            },
            bottomBar = {
                if (inPreview) {
                    CommentInputBar(
                        value = "这本不错",
                        onValueChange = {},
                        replyMode = previewState?.replyMode == true,
                        isPosting = false,
                        onCancelReply = {},
                        onSubmit = {},
                        focusManager = focusManager
                    )
                } else if (screenViewModel?.inputBarVisible == true) {
                    CommentInputBar(
                        value = inputText,
                        onValueChange = { inputText = it.take(100) },
                        replyMode = screenViewModel.replyMode,
                        isPosting = screenViewModel.isPosting,
                        onCancelReply = {
                            screenViewModel.cancelReplyMode()
                            focusManager.clearFocus()
                        },
                        onSubmit = {
                            screenViewModel.submitComment(inputText)
                        },
                        focusManager = focusManager
                    )
                }
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
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        PreviewListPanel(
                            title = if (gameId != null) "游戏评论" else "漫画评论",
                            items = previewState?.items.orEmpty()
                        )
                    }
                } else {
                    AndroidView(
                        factory = { context ->
                            LayoutInflater.from(context)
                                .inflate(R.layout.layout_compose_recycler_content, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val vm = screenViewModel ?: return@AndroidView
                            val recyclerView = view.findViewById<RecyclerView>(R.id.recyclerView_compose_content)
                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager = LinearLayoutManager(view.context)
                            }

                            val displayItems = ArrayList(vm.commentItems)
                            val replyStateKey = displayItems.joinToString("|") { item ->
                                "${item.commentId}:${item.currentPage}:${item.totalPage}:${item.arrayList?.size ?: 0}:${item.isTop}:${item.isLiked}:${item.isHide}"
                            }
                            val dataKey =
                                "${vm.currentPage}_${displayItems.size}_${vm.topCommentCount}_${vm.expandedCommentIndex}_$replyStateKey"
                            val oldKey = recyclerView.getTag(R.id.recyclerView_comments) as? String
                            if (recyclerView.adapter == null || oldKey != dataKey) {
                                var adapterRef: CommentRecyclerViewAdapter? = null
                                val callback = object : com.picacomic.fregata.a_pkg.e {
                                    override fun A(i: Int) {
                                        adapterRef?.A(i)
                                    }

                                    override fun C(i: Int) {
                                        vm.selectComment(i)
                                    }

                                    override fun N(i: Int) {
                                        vm.loadReplies(i, reset = false)
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
                                        vm.toggleCommentLike(i)
                                    }

                                    override fun R(i: Int) = Unit
                                    override fun S(i: Int) {
                                        vm.hideComment(i)
                                    }

                                    override fun T(i: Int) {
                                        vm.toggleTop(i)
                                    }

                                    override fun U(i: Int) {
                                        vm.toggleDirtyAvatarForComment(i)
                                    }

                                    override fun V(i: Int) {
                                        vm.reportComment(i)
                                    }

                                    override fun f(i: Int, i2: Int) {}

                                    override fun g(i: Int, i2: Int) {
                                        vm.toggleReplyLike(i, i2)
                                    }

                                    override fun h(i: Int, i2: Int) {}
                                    override fun i(i: Int, i2: Int) {
                                        vm.hideReply(i, i2)
                                    }

                                    override fun j(i: Int, i2: Int) {
                                        vm.reportReply(i, i2)
                                    }
                                }
                                val adapter = CommentRecyclerViewAdapter(
                                    view.context,
                                    vm.profileUser,
                                    "",
                                    displayItems,
                                    callback
                                )
                                adapterRef = adapter
                                adapter.B(vm.topCommentCount)
                                adapter.z(vm.displayFloorCount)
                                adapter.a(
                                    vm.expandedCommentIndex,
                                    displayItems.getOrNull(vm.expandedCommentIndex)?.arrayList,
                                    displayItems.getOrNull(vm.expandedCommentIndex)?.let {
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
                                        if (lm.findLastVisibleItemPosition() == lm.itemCount - 1 && vm.hasMore && !vm.isLoading) {
                                            vm.loadComments(comicId, gameId, commentId, page = vm.currentPage + 1)
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

private data class CommentPreviewState(
    val replyMode: Boolean,
    val items: List<String>
)

private fun commentPreviewState(isGame: Boolean): CommentPreviewState {
    val items = if (isGame) {
        listOf(
            "LittleMA: 这作流程好长但是值回票价 · 258赞 · 12回复",
            "南裡裡: 京阿尼纪念作，建议配合动画一起补 · 98赞 · 4回复",
            "游客: 安卓链接还能下吗 · 3赞 · 0回复"
        )
    } else {
        listOf(
            "LittleMA: 看的我键盘侠想把她妈大腿塞那男的马眼里 · 0赞 · 0回复",
            "嗶咔骑士: 汉化质量不错，封面有欺诈感 · 12赞 · 3回复",
            "匿名用户: 第2话开始节奏才起来 · 4赞 · 1回复"
        )
    }
    return CommentPreviewState(
        replyMode = true,
        items = items
    )
}

@Preview(showBackground = true)
@Composable
private fun CommentScreenPreview() {
    CommentScreen(
        comicId = "preview",
        onBack = {}
    )
}

@Composable
private fun CommentInputBar(
    value: String,
    onValueChange: (String) -> Unit,
    replyMode: Boolean,
    isPosting: Boolean,
    onCancelReply: () -> Unit,
    onSubmit: () -> Unit,
    focusManager: FocusManager
) {
    val submitText = stringResource(if (replyMode) R.string.comment_reply else R.string.comment_send)
    val hintText = stringResource(if (replyMode) R.string.comment_reply_edit_hint else R.string.comment_edit_hint)
    Surface(
        color = MaterialTheme.colorScheme.surface,
        tonalElevation = 2.dp,
        shadowElevation = 2.dp
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (replyMode) {
                TextButton(
                    onClick = onCancelReply,
                    enabled = !isPosting
                ) {
                    Text(text = stringResource(R.string.comment_reply_cancel))
                }
            }
            OutlinedTextField(
                value = value,
                onValueChange = onValueChange,
                modifier = Modifier
                    .weight(1f)
                    .heightIn(min = 56.dp),
                enabled = !isPosting,
                placeholder = {
                    Text(text = hintText)
                },
                maxLines = 4,
                keyboardOptions = KeyboardOptions(imeAction = ImeAction.Send),
                keyboardActions = KeyboardActions(
                    onSend = {
                        onSubmit()
                        focusManager.clearFocus()
                    }
                )
            )
            Spacer(modifier = Modifier.width(4.dp))
            Button(
                onClick = {
                    onSubmit()
                    focusManager.clearFocus()
                },
                enabled = !isPosting
            ) {
                Text(text = submitText)
            }
        }
    }
}
