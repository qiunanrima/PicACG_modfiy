package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.AssistChip
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaImageUrl
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.viewmodels.CommentViewModel
import com.picacomic.fregata.objects.CommentObject
import com.picacomic.fregata.objects.CommentWithReplyObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.objects.UserBasicObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.g
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Person
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
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight

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
    val listState = rememberLazyListState()
    var inputText by rememberSaveable(comicId, gameId, commentId) { mutableStateOf("") }
    var pendingAction by remember { mutableStateOf<CommentAction?>(null) }
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

    if (!inPreview) {
        val vm = screenViewModel
        RememberListLoadMore(
            state = listState,
            enabled = vm?.commentItems?.isNotEmpty() == true && !vm.isLoading && vm.hasMore,
        ) {
            vm?.loadComments(comicId, gameId, commentId, page = vm.currentPage + 1)
        }
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        pendingAction?.let { action ->
            CommentActionDialog(
                action = action,
                onDismiss = { pendingAction = null },
                onConfirm = {
                    val vm = screenViewModel ?: return@CommentActionDialog
                    when (action.kind) {
                        CommentActionKind.Report -> {
                            if (action.replyIndex >= 0) vm.j(action.rootIndex, action.replyIndex) else vm.V(action.rootIndex)
                        }
                        CommentActionKind.Hide -> {
                            if (action.replyIndex >= 0) vm.i(action.rootIndex, action.replyIndex) else vm.S(action.rootIndex)
                        }
                        CommentActionKind.Dirty -> {
                            if (action.replyIndex >= 0) {
                                vm.toggleDirtyAvatarForReply(action.rootIndex, action.replyIndex)
                            } else {
                                vm.U(action.rootIndex)
                            }
                        }
                        CommentActionKind.Top -> vm.T(action.rootIndex)
                    }
                    pendingAction = null
                }
            )
        }
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
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
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
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.commentItems.isEmpty() && vm.isLoading) -> PicaLoadingIndicator()
                        vm.commentItems.isEmpty() -> PicaEmptyState(message = "No comments")
                        else -> {
                            LazyColumn(
                                state = listState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(16.dp),
                                verticalArrangement = Arrangement.spacedBy(10.dp),
                            ) {
                                itemsIndexed(
                                    items = vm.commentItems,
                                    key = { index, item -> item.commentId ?: "comment_$index" },
                                ) { index, item ->
                                    CommentCard(
                                        context = context,
                                        item = item,
                                        index = index,
                                        floor = vm.displayFloorCount - index,
                                        expanded = vm.expandedCommentIndex == index,
                                        adminMode = vm.adminMode,
                                        profileUser = vm.profileUser,
                                        isProfileMode = vm.isProfileMode,
                                        onClick = { vm.C(index) },
                                        onOpenTarget = {
                                            when (val target = vm.O(index)) {
                                                is CommentViewModel.CommentTarget.Comic -> onComicClick(target.comicId)
                                                is CommentViewModel.CommentTarget.Game -> onGameClick(target.gameId)
                                                null -> Unit
                                            }
                                        },
                                        onLike = { vm.Q(index) },
                                        onHide = { pendingAction = CommentAction(CommentActionKind.Hide, index) },
                                        onTop = { pendingAction = CommentAction(CommentActionKind.Top, index) },
                                        onDirty = { pendingAction = CommentAction(CommentActionKind.Dirty, index) },
                                        onReport = { pendingAction = CommentAction(CommentActionKind.Report, index) },
                                        onLoadMoreReplies = { vm.N(index) },
                                        onReplyLike = { replyIndex -> vm.g(index, replyIndex) },
                                        onReplyHide = { replyIndex ->
                                            pendingAction = CommentAction(CommentActionKind.Hide, index, replyIndex)
                                        },
                                        onReplyReport = { replyIndex ->
                                            pendingAction = CommentAction(CommentActionKind.Report, index, replyIndex)
                                        },
                                        onReplyDirty = { replyIndex ->
                                            pendingAction = CommentAction(CommentActionKind.Dirty, index, replyIndex)
                                        },
                                    )
                                }
                                if (vm.isLoading) {
                                    item(key = "loading") { ListLoadingFooter() }
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
private fun CommentCard(
    context: android.content.Context,
    item: CommentWithReplyObject,
    index: Int,
    floor: Int,
    expanded: Boolean,
    adminMode: Boolean,
    profileUser: UserBasicObject?,
    isProfileMode: Boolean,
    onClick: () -> Unit,
    onOpenTarget: () -> Unit,
    onLike: () -> Unit,
    onHide: () -> Unit,
    onTop: () -> Unit,
    onDirty: () -> Unit,
    onReport: () -> Unit,
    onLoadMoreReplies: () -> Unit,
    onReplyLike: (Int) -> Unit,
    onReplyHide: (Int) -> Unit,
    onReplyReport: (Int) -> Unit,
    onReplyDirty: (Int) -> Unit,
) {
    val user = displayUser(item, profileUser, isProfileMode)
    var profileExpanded by rememberSaveable(item.commentId, user.name) { mutableStateOf(false) }
    val targetTitle = item.comicId?.title?.takeIf { it.isNotBlank() }
        ?: item.gameId?.title?.takeIf { it.isNotBlank() }
    val profileNoReply = if (item.comicId != null) {
        stringResource(R.string.comment_profile_no_reply_comic)
    } else {
        stringResource(R.string.comment_profile_no_reply_game)
    }
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = if (item.isTop) {
                MaterialTheme.colorScheme.primaryContainer
            } else {
                MaterialTheme.colorScheme.surface
            },
        ),
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp),
                verticalAlignment = Alignment.Top,
            ) {
                CommentAvatar(
                    thumbnail = user.avatar,
                    name = user.name,
                    character = user.character,
                    onClick = { profileExpanded = !profileExpanded },
                    modifier = Modifier.size(42.dp),
                )
                Column(modifier = Modifier.weight(1f)) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = user.name.ifBlank { "Anonymous" },
                            style = MaterialTheme.typography.titleSmall,
                            fontWeight = FontWeight.SemiBold,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier
                                .weight(1f, fill = false)
                                .clip(MaterialTheme.shapes.small)
                                .clickable { profileExpanded = !profileExpanded },
                        )
                        Text(
                            text = "#${floor.coerceAtLeast(0)}",
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.primary,
                        )
                    }
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                    ) {
                        if (user.title.isNotBlank()) {
                            Text(
                                text = user.title,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                        Text(
                            text = "Lv.${user.level}",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = g.B(context, item.createdAt),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }
                IconButton(onClick = onReport, modifier = Modifier.size(36.dp)) {
                    Icon(
                        imageVector = Icons.Filled.MoreVert,
                        contentDescription = stringResource(R.string.comment_option_title),
                    )
                }
            }
            if (profileExpanded) {
                CommentProfilePanel(user = user)
            }
            if (item.isTop || index < 0) {
                AssistChip(
                    onClick = {},
                    label = {
                        Text(
                            text = stringResource(R.string.comment_top_comment_title_prefix) +
                                floor.coerceAtLeast(0) +
                                stringResource(R.string.comment_top_comment_title_suffix),
                        )
                    },
                    border = BorderStroke(1.dp, MaterialTheme.colorScheme.primary.copy(alpha = 0.35f)),
                )
            }
            if (isProfileMode && !targetTitle.isNullOrBlank()) {
                TextButton(onClick = onOpenTarget) {
                    Text(
                        text = stringResource(R.string.comment_profile_view_content_prefix) +
                            targetTitle +
                            stringResource(R.string.comment_profile_view_content_suffix),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
            Text(
                text = item.content.orEmpty(),
                style = MaterialTheme.typography.bodyMedium,
                modifier = Modifier.fillMaxWidth(),
            )
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                CommentActionButton(
                    text = if (item.isLiked) "已赞 ${item.likesCount}" else "赞好 ${item.likesCount}",
                    onClick = onLike,
                    modifier = Modifier.weight(1f),
                )
                CommentActionButton(
                    text = "${stringResource(R.string.comment_reply)} ${item.childsCount}",
                    onClick = onClick,
                    modifier = Modifier.weight(1f),
                )
                CommentActionButton(
                    text = stringResource(R.string.more),
                    onClick = onOpenTarget,
                    enabled = !isProfileMode && (item.comicId != null || item.gameId != null),
                    modifier = Modifier.weight(1f),
                )
                CommentActionButton(
                    text = stringResource(R.string.comment_option_title),
                    onClick = onReport,
                    modifier = Modifier.weight(1f),
                )
            }
            if (adminMode) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    TextButton(onClick = onDirty) { Text(stringResource(R.string.comment_tool_dirty)) }
                    TextButton(onClick = onTop) { Text(stringResource(R.string.comment_tool_top)) }
                    if (!item.isHide) {
                        TextButton(onClick = onHide) { Text(stringResource(R.string.comment_tool_hide)) }
                    }
                }
            }
            if (expanded && item.arrayList?.isNotEmpty() == true) {
                HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant)
                item.arrayList.forEachIndexed { index, reply ->
                    ReplyRow(
                        context = context,
                        reply = reply,
                        floor = item.childsCount - index,
                        adminMode = adminMode,
                        onLike = { onReplyLike(index) },
                        onReport = { onReplyReport(index) },
                        onHide = { onReplyHide(index) },
                        onDirty = { onReplyDirty(index) },
                    )
                }
                if (item.currentPage < item.totalPage) {
                    TextButton(
                        onClick = onLoadMoreReplies,
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Text(stringResource(R.string.comment_view_more_reply))
                    }
                }
            } else if (expanded && item.childsCount > 0) {
                TextButton(
                    onClick = onLoadMoreReplies,
                    modifier = Modifier.fillMaxWidth(),
                ) {
                    Text(stringResource(R.string.comment_view_more_reply))
                }
            } else if (expanded && item.childsCount == 0) {
                Text(
                    text = if (isProfileMode) profileNoReply else stringResource(R.string.comment_no_reply),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.padding(vertical = 4.dp),
                )
            }
        }
    }
}

@Composable
private fun ReplyRow(
    context: android.content.Context,
    reply: CommentObject,
    floor: Int,
    adminMode: Boolean,
    onLike: () -> Unit,
    onReport: () -> Unit,
    onHide: () -> Unit,
    onDirty: () -> Unit,
) {
    val user = displayUser(reply.user)
    var profileExpanded by rememberSaveable(reply.commentId, user.name) { mutableStateOf(false) }
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.45f),
        shape = MaterialTheme.shapes.small,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                CommentAvatar(
                    thumbnail = user.avatar,
                    name = user.name,
                    character = user.character,
                    onClick = { profileExpanded = !profileExpanded },
                    modifier = Modifier.size(34.dp),
                )
                Column(modifier = Modifier.weight(1f)) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Text(
                            text = user.name.ifBlank { "Anonymous" },
                            style = MaterialTheme.typography.labelLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            modifier = Modifier
                                .weight(1f, fill = false)
                                .clip(MaterialTheme.shapes.small)
                                .clickable { profileExpanded = !profileExpanded },
                        )
                        Text(
                            text = "#${floor.coerceAtLeast(0)}",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary,
                        )
                    }
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                    ) {
                        if (user.title.isNotBlank()) {
                            Text(
                                text = user.title,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                        Text(
                            text = "Lv.${user.level}",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = g.B(context, reply.createdAt),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    }
                }
                IconButton(onClick = onReport, modifier = Modifier.size(32.dp)) {
                    Icon(
                        imageVector = Icons.Filled.MoreVert,
                        contentDescription = stringResource(R.string.comment_option_title),
                    )
                }
            }
            if (profileExpanded) {
                CommentProfilePanel(user = user)
            }
            Text(
                text = reply.content.orEmpty(),
                style = MaterialTheme.typography.bodySmall,
                modifier = Modifier.fillMaxWidth(),
            )
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                CommentActionButton(
                    text = if (reply.isLiked) "已赞 ${reply.likesCount}" else "赞好 ${reply.likesCount}",
                    onClick = onLike,
                    modifier = Modifier.weight(1f),
                )
                CommentActionButton(
                    text = stringResource(R.string.comment_option_title),
                    onClick = onReport,
                    modifier = Modifier.weight(1f),
                )
            }
            if (adminMode) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    TextButton(onClick = onDirty) { Text(stringResource(R.string.comment_tool_dirty)) }
                    if (!reply.isHide) {
                        TextButton(onClick = onHide) { Text(stringResource(R.string.comment_tool_hide)) }
                    }
                }
            }
        }
    }
}

@Composable
private fun CommentActionButton(
    text: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier,
        contentPadding = PaddingValues(horizontal = 4.dp, vertical = 8.dp),
    ) {
        Text(
            text = text,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

@Composable
private fun CommentAvatar(
    thumbnail: ThumbnailObject?,
    name: String,
    character: String?,
    onClick: (() -> Unit)? = null,
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .clip(MaterialTheme.shapes.small)
            .then(if (onClick != null) Modifier.clickable(onClick = onClick) else Modifier),
        contentAlignment = Alignment.Center,
    ) {
        PicaRemoteImage(
            thumbnail = thumbnail,
            contentDescription = name,
            modifier = Modifier
                .fillMaxSize()
                .clip(MaterialTheme.shapes.small),
            fallbackIcon = Icons.Filled.Person,
        )
        if (!character.isNullOrBlank()) {
            PicaImageUrl(
                imageUrl = character,
                contentDescription = null,
                modifier = Modifier.fillMaxSize(),
            )
        }
    }
}

@Composable
private fun CommentProfilePanel(user: CommentDisplayUser) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f),
        shape = MaterialTheme.shapes.medium,
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outline.copy(alpha = 0.16f)),
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Text(
                text = user.slogan.ifBlank { "暂无个人简介" },
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface,
            )
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = "昵称 ${user.name.ifBlank { "Anonymous" }}",
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                if (user.title.isNotBlank()) {
                    Text(
                        text = "称号 ${user.title}",
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
                Text(
                    text = "Lv.${user.level}",
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                if (user.activationDate.isNotBlank()) {
                    Text(
                        text = g.B(LocalContext.current, user.activationDate),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
        }
    }
}

private data class CommentDisplayUser(
    val name: String,
    val title: String,
    val slogan: String,
    val role: String,
    val activationDate: String,
    val level: Int,
    val avatar: ThumbnailObject?,
    val character: String?,
)

private fun displayUser(
    item: CommentWithReplyObject,
    profileUser: UserBasicObject?,
    profileMode: Boolean,
): CommentDisplayUser {
    if (profileMode && profileUser != null) {
        return CommentDisplayUser(
            name = profileUser.name.orEmpty(),
            title = "",
            slogan = "",
            role = "",
            activationDate = "",
            level = profileUser.level,
            avatar = profileUser.avatar,
            character = profileUser.character,
        )
    }
    return displayUser(item.user)
}

private fun displayUser(user: UserProfileObject?): CommentDisplayUser {
    return CommentDisplayUser(
        name = user?.name.orEmpty(),
        title = user?.title.orEmpty(),
        slogan = user?.slogan.orEmpty(),
        role = user?.role.orEmpty(),
        activationDate = user?.activationDate.orEmpty(),
        level = user?.level ?: 0,
        avatar = user?.avatar,
        character = user?.character,
    )
}

private enum class CommentActionKind {
    Report,
    Hide,
    Dirty,
    Top,
}

private data class CommentAction(
    val kind: CommentActionKind,
    val rootIndex: Int,
    val replyIndex: Int = -1,
)

@Composable
private fun CommentActionDialog(
    action: CommentAction,
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
) {
    val title = when (action.kind) {
        CommentActionKind.Report -> stringResource(R.string.alert_report_comment_title)
        CommentActionKind.Hide -> stringResource(R.string.alert_hide_comment_title)
        CommentActionKind.Dirty -> stringResource(R.string.comment_tool_dirty)
        CommentActionKind.Top -> stringResource(R.string.comment_tool_top)
    }
    val message = when (action.kind) {
        CommentActionKind.Report -> stringResource(R.string.alert_report_comment)
        CommentActionKind.Hide -> stringResource(R.string.alert_hide_comment)
        CommentActionKind.Dirty -> stringResource(R.string.comment_tool_dirty)
        CommentActionKind.Top -> stringResource(R.string.comment_tool_top)
    }
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(text = title) },
        text = { Text(text = message) },
        confirmButton = {
            TextButton(onClick = onConfirm) {
                Text(text = stringResource(R.string.ok))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(text = stringResource(R.string.cancel))
            }
        },
    )
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
            Button(
                onClick = {
                    onSubmit()
                    focusManager.clearFocus()
                },
                enabled = !isPosting,
                modifier = Modifier
                    .width(88.dp)
                    .heightIn(min = 56.dp),
            ) {
                Text(text = submitText)
            }
        }
    }
}
