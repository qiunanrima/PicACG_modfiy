package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.viewmodels.AnnouncementListViewModel
import com.picacomic.fregata.objects.AnnouncementObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter

@Composable
fun AnnouncementListScreen(
    onBack: () -> Unit,
    viewModel: AnnouncementListViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val listState = rememberLazyListState()
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewAnnouncements = if (inPreview) announcementPreviewItems() else emptyList()

    LaunchedEffect(inPreview) {
        if (!inPreview) {
            screenViewModel?.loadInitial()
        }
    }

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, vm.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    LaunchedEffect(screenViewModel?.openAnnouncementEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.openAnnouncementEvent <= 0) return@LaunchedEffect
        val announcement = vm.selectedAnnouncement ?: return@LaunchedEffect
        AlertDialogCenter.showAnnouncementAlertDialog(
            context,
            g.b(announcement.thumb),
            announcement.title,
            announcement.content,
            announcement.createdAt,
            null
        )
        vm.clearSelectedAnnouncement()
    }

    if (!inPreview) {
        RememberListLoadMore(
            state = listState,
            enabled = screenViewModel?.canLoadMore() == true,
        ) {
            screenViewModel?.loadMore()
        }
    }

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_announcement),
            onBack = onBack
        ) {
            Box(modifier = Modifier.weight(1f)) {
                if (inPreview) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp)
                    ) {
                        PreviewListPanel(
                            title = stringResource(R.string.title_announcement),
                            items = previewAnnouncements.map {
                                "${it.title} · ${it.createdAt?.substringBefore('T').orEmpty()}"
                            }
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.announcements.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.announcements.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                state = listState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.announcements,
                                    key = { index, item ->
                                        item.announcementId ?: "announcement_$index"
                                    }
                                ) { _, item ->
                                    AnnouncementListItem(
                                        item = item,
                                        onClick = { vm.onAnnouncementClick(item) }
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

private fun announcementPreviewItems(): List<AnnouncementObject> {
    val cover = ThumbnailObject(
        "https://storage1.picacomic.com",
        "announcement-preview.jpg",
        "announcement-preview.jpg"
    )
    return listOf(
        AnnouncementObject("ann-1", "系统维护公告", "今晚 23:00 - 24:00 短暂维护", "2026-04-25T10:00:00.000Z", cover),
        AnnouncementObject("ann-2", "版本更新", "Compose 页面预览已补齐", "2026-04-24T08:00:00.000Z", cover),
        AnnouncementObject("ann-3", "活动提醒", "本周热门榜单已刷新", "2026-04-23T12:00:00.000Z", cover)
    )
}

@Composable
private fun AnnouncementListItem(
    item: AnnouncementObject,
    onClick: () -> Unit,
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 8.dp, vertical = 4.dp)
            .clickable(onClick = onClick),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        ),
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            AnnouncementThumb(
                imageUrl = g.b(item.thumb),
                size = 88.dp
            )
            Column(
                modifier = Modifier
                    .weight(1f)
                    .padding(start = 12.dp)
            ) {
                Text(
                    text = item.title.orEmpty(),
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurface,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                Text(
                    text = item.content.orEmpty(),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(top = 4.dp)
                )
            }
        }
    }
}

@Composable
private fun AnnouncementThumb(
    imageUrl: String?,
    size: Dp,
) {
    val context = LocalContext.current
    AsyncImage(
        model = ImageRequest.Builder(context)
            .data(imageUrl)
            .placeholder(R.drawable.placeholder_avatar_2)
            .error(R.drawable.placeholder_avatar_2)
            .fallback(R.drawable.placeholder_avatar_2)
            .allowHardware(false)
            .crossfade(true)
            .build(),
        contentDescription = null,
        modifier = Modifier.size(size),
        contentScale = ContentScale.Crop
    )
}

@Preview(showBackground = true)
@Composable
private fun AnnouncementListScreenPreview() {
    AnnouncementListScreen(onBack = {})
}
