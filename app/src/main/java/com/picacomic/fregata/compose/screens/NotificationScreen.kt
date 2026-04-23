package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.view.View
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.viewmodels.NotificationViewModel
import com.picacomic.fregata.databinding.ItemNotificationCellBinding
import com.picacomic.fregata.objects.NotificationObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.PicassoTransformations
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso
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
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
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
                            items = listOf("系统通知", "游戏更新", "漫画评论提醒")
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

@Composable
private fun NotificationListItem(
    item: NotificationObject,
    onItemClick: () -> Unit,
    onSenderClick: () -> Unit,
    onCoverClick: () -> Unit,
) {
    AndroidView(
        factory = { context ->
            LayoutInflater.from(context).inflate(R.layout.item_notification_cell, null, false)
        },
        modifier = Modifier.fillMaxWidth(),
        update = { view ->
            val binding = ItemNotificationCellBinding.bind(view)
            binding.root.setOnClickListener { onItemClick() }
            binding.imageViewChatroomRecyclerViewCellAvatar.setOnClickListener { onSenderClick() }
            binding.imageViewChatroomRecyclerViewCellVerified.setOnClickListener { onSenderClick() }
            binding.imageViewNotificationImage.setOnClickListener { onCoverClick() }

            val sender = item.sender
            if (sender != null) {
                if (!sender.character.isNullOrBlank()) {
                    Picasso.with(view.context)
                        .load(sender.character)
                        .into(binding.imageViewChatroomRecyclerViewCellVerified)
                    binding.imageViewChatroomRecyclerViewCellVerified.visibility = View.VISIBLE
                } else {
                    binding.imageViewChatroomRecyclerViewCellVerified.visibility = View.GONE
                }

                Picasso.with(view.context)
                    .load(g.b(sender.avatar))
                    .placeholder(R.drawable.placeholder_avatar_2)
                    .into(binding.imageViewChatroomRecyclerViewCellAvatar)
            } else {
                binding.imageViewChatroomRecyclerViewCellVerified.visibility = View.GONE
                binding.imageViewChatroomRecyclerViewCellAvatar.setImageResource(R.drawable.placeholder_avatar_2)
            }

            if (item.cover != null) {
                Picasso.with(view.context)
                    .load(g.b(item.cover))
                    .transform(PicassoTransformations.SMALL_COVER)
                    .placeholder(R.drawable.placeholder_avatar_2)
                    .into(binding.imageViewNotificationImage)
                binding.imageViewNotificationImage.visibility = View.VISIBLE
            } else {
                binding.imageViewNotificationImage.visibility = View.GONE
                binding.imageViewNotificationImage.setImageDrawable(null)
            }

            binding.textViewNotificationContent.text = item.content.orEmpty()
            binding.textViewNotificationTimestamp.text = g.B(view.context, item.createdAt)
        }
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
