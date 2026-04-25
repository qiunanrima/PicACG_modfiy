package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.viewmodels.ApkVersionListViewModel
import com.picacomic.fregata.objects.ApkObject
import com.picacomic.fregata.objects.LatestApplicationObject
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter

@Composable
fun ApkVersionListScreen(
    onBack: () -> Unit,
    viewModel: ApkVersionListViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val listState = rememberLazyListState()
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewVersions = if (inPreview) apkVersionPreviewItems() else emptyList()

    LaunchedEffect(inPreview) {
        if (!inPreview) {
            screenViewModel?.loadMore()
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

    if (!inPreview) {
        RememberListLoadMore(
            state = listState,
            enabled = screenViewModel?.versions?.isNotEmpty() == true &&
                screenViewModel?.isLoading != true &&
                (screenViewModel?.page ?: 0) < (screenViewModel?.totalPage ?: 0),
        ) {
            screenViewModel?.loadMore()
        }
    }

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_apk_version),
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
                            title = stringResource(R.string.title_apk_version),
                            items = previewVersions.map {
                                "Ver. ${it.version} · ${it.updateContent}"
                            }
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.versions.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.versions.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                state = listState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.versions,
                                    key = { index, item ->
                                        item.latestApplicationId ?: "apk_version_$index"
                                    }
                                ) { _, item ->
                                    ApkVersionListItem(item = item) {
                                        AlertDialogCenter.showUpdateApkAlertDialog(
                                            context,
                                            item,
                                            false
                                        )
                                    }
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

private fun apkVersionPreviewItems(): List<LatestApplicationObject> {
    val apk = ApkObject(
        "picacomic.apk",
        "release/picacomic.apk",
        "https://download.picacomic.com"
    )
    return listOf(
        LatestApplicationObject("apk-1", "2.2.1.3.3.4", "修复 Compose 页面预览和若干崩溃。", "https://download.picacomic.com/app.apk", apk, "2026-04-25T09:00:00.000Z", "2026-04-25T09:00:00.000Z"),
        LatestApplicationObject("apk-2", "2.2.1.3.3.3", "优化游戏详情与评论页渲染。", "https://download.picacomic.com/app-old.apk", apk, "2026-04-20T09:00:00.000Z", "2026-04-20T09:00:00.000Z"),
        LatestApplicationObject("apk-3", "2.2.1.3.3.2", "基础问题修复。", "https://download.picacomic.com/app-older.apk", apk, "2026-04-15T09:00:00.000Z", "2026-04-15T09:00:00.000Z")
    )
}

@Composable
private fun ApkVersionListItem(
    item: LatestApplicationObject,
    onClick: () -> Unit,
) {
    val context = LocalContext.current
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp, vertical = 6.dp)
            .clickable(onClick = onClick),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp)
        ) {
            Text(
                text = stringResource(R.string.apk_version_prefix) + item.version.orEmpty(),
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.primary,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            Text(
                text = item.updateContent.orEmpty(),
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurface,
                maxLines = 3,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.padding(top = 8.dp)
            )
            Text(
                text = stringResource(R.string.comic_detail_update_time_title) +
                    g.B(context, item.createdAt),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.padding(top = 8.dp)
            )
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ApkVersionListScreenPreview() {
    ApkVersionListScreen(onBack = {})
}
