package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.clickable
import androidx.compose.ui.draw.clip
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.components.PicaTwoLineCard
import com.picacomic.fregata.compose.components.PicaUserAvatar
import com.picacomic.fregata.compose.viewmodels.NotificationViewModel
import com.picacomic.fregata.objects.NotificationObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.g
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NotificationScreen(
    onBack: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onGameClick: (String) -> Unit = {},
    onCommentClick: (String) -> Unit = {},
    onPicaAppClick: (title: String, link: String) -> Unit = { _, _ -> },
    onSenderClick: (UserProfileObject) -> Unit = {},
    onCoverClick: (String) -> Unit = {},
    viewModel: NotificationViewModel? = null
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val listState = rememberLazyListState()
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewNotifications = if (inPreview) notificationPreviewItems() else emptyList()

    LaunchedEffect(Unit) {
        if (!inPreview && screenViewModel?.notifications?.isEmpty() == true) {
            screenViewModel?.loadData()
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

    if (!inPreview) {
        RememberListLoadMore(
            state = listState,
            enabled = screenViewModel?.notifications?.isNotEmpty() == true &&
                screenViewModel?.isLoading != true &&
                screenViewModel?.hasMore == true,
        ) {
            screenViewModel?.loadData()
        }
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_notification),
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
                            .padding(16.dp)
                    ) {
                        PreviewListPanel(
                            title = stringResource(R.string.title_notification),
                            items = previewNotifications.map {
                                "${it.title} · ${it.redirectType}"
                            }
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.notifications.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.notifications.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                state = listState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.notifications,
                                    key = { index, item ->
                                        item.notificationId ?: "notification_$index"
                                    }
                                ) { _, item ->
                                    NotificationListItem(
                                        item = item,
                                        onItemClick = {
                                            val redirectType = item.redirectType ?: return@NotificationListItem
                                            val redirectId = item.redirectId
                                            when {
                                                redirectType.equals("comic", ignoreCase = true) &&
                                                    !redirectId.isNullOrEmpty() -> {
                                                    onComicClick(redirectId)
                                                }

                                                redirectType.equals("game", ignoreCase = true) &&
                                                    !redirectId.isNullOrEmpty() -> {
                                                    onGameClick(redirectId)
                                                }

                                                redirectType.equals("comment", ignoreCase = true) &&
                                                    !redirectId.isNullOrEmpty() -> {
                                                    onCommentClick(redirectId)
                                                }

                                                (redirectType.equals("app", ignoreCase = true) ||
                                                    redirectType.equals("web", ignoreCase = true)) &&
                                                    !item.link.isNullOrEmpty() -> {
                                                    onPicaAppClick(item.title ?: "", item.link)
                                                }
                                            }
                                        },
                                        onSenderClick = {
                                            item.sender?.let(onSenderClick)
                                        },
                                        onCoverClick = {
                                            item.cover?.let { cover -> onCoverClick(g.b(cover)) }
                                        }
                                    )
                                }

                                if (vm.isLoading) {
                                    item(key = "loading") {
                                        ListLoadingFooter()
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

private fun notificationPreviewItems(): List<NotificationObject> {
    val cover = ThumbnailObject("https://storage1.picacomic.com", "notification-cover.jpg", "notification-cover.jpg")
    val senderAvatar = ThumbnailObject("https://storage1.picacomic.com", "sender-avatar.jpg", "sender-avatar.jpg")
    val sender = UserProfileObject().apply {
        setUserId("user-1")
        setName("系统管理员")
        setTitle("骑士")
        setLevel(9)
        setExp(1200)
        setVerified(true)
        setAvatar(senderAvatar)
    }
    return listOf(
        NotificationObject("noti-1", "系统通知", "今晚 23:00 进行维护。", null, "system", null, true, cover, sender, "2026-04-25T10:00:00.000Z"),
        NotificationObject("noti-2", "漫画评论提醒", "有人回复了你的评论。", "comment-1", "comment", null, false, cover, sender, "2026-04-25T09:30:00.000Z"),
        NotificationObject("noti-3", "游戏更新", "CLANNAD 资源已更新。", "game-1", "game", null, false, cover, sender, "2026-04-24T18:00:00.000Z")
    )
}

@Composable
private fun NotificationListItem(
    item: NotificationObject,
    onItemClick: () -> Unit,
    onSenderClick: () -> Unit,
    onCoverClick: () -> Unit,
) {
    val context = LocalContext.current
    PicaTwoLineCard(
        title = item.title.orEmpty(),
        body = item.content.orEmpty(),
        supporting = g.B(context, item.createdAt),
        onClick = onItemClick,
        leading = {
            PicaUserAvatar(
                thumbnail = item.sender?.avatar,
                name = item.sender?.name,
                modifier = Modifier.size(48.dp),
                onClick = onSenderClick,
            )
        },
        trailing = item.cover?.let {
            {
                PicaRemoteImage(
                    thumbnail = item.cover,
                    contentDescription = item.title,
                    modifier = Modifier
                        .size(64.dp)
                        .clip(MaterialTheme.shapes.small)
                        .clickable(onClick = onCoverClick),
                )
            }
        },
        modifier = Modifier.fillMaxWidth(),
    )
}

@Preview(showBackground = true)
@Composable
private fun NotificationScreenPreview() {
    NotificationScreen(
        onBack = {},
        onComicClick = {},
        onGameClick = {},
        onCommentClick = {}
    )
}
