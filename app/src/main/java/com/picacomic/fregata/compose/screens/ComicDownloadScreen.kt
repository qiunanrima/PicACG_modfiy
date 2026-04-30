package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Download
import androidx.compose.material.icons.filled.Folder
import androidx.compose.material.icons.filled.HourglassBottom
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaCardSection
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaEpisodeGridItem
import com.picacomic.fregata.compose.components.PicaEpisodeGridItemState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.viewmodels.ComicDownloadViewModel
import com.picacomic.fregata.objects.ComicEpisodeObject

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicDownloadScreen(
    comicId: String,
    title: String?,
    onBack: () -> Unit,
    viewModel: ComicDownloadViewModel? = null,
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    var showDeleteConfirm by remember { mutableStateOf(false) }
    val previewState = if (inPreview) comicDownloadPreviewState() else null

    LaunchedEffect(comicId, title, inPreview) {
        if (!inPreview) {
            screenViewModel?.init(comicId, title)
        }
    }

    DisposableEffect(screenViewModel, inPreview) {
        if (!inPreview) {
            screenViewModel?.cP()
        }
        onDispose {
            if (!inPreview) {
                screenViewModel?.cQ()
            }
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

    LaunchedEffect(screenViewModel?.messageEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.messageEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, vm.messageText.orEmpty(), Toast.LENGTH_SHORT).show()
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        val episodes = if (inPreview) previewState?.episodes.orEmpty() else screenViewModel?.episodes.orEmpty()
        val total = if (inPreview) previewState?.total ?: 0 else screenViewModel?.episodeTotal ?: 0
        val isLoading = if (inPreview) false else screenViewModel?.nu == true
        val hasMore = if (inPreview) false else screenViewModel?.nk == true
        val progressText = if (inPreview) previewState?.progressText.orEmpty() else screenViewModel?.progressText.orEmpty()
        val selectedCount = episodes.count { it.isSelected }

        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = "${stringResource(R.string.download)} ${title.orEmpty()}".trim(),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = stringResource(R.string.back))
                        }
                    },
                    actions = {
                        IconButton(onClick = { showDeleteConfirm = true }) {
                            Icon(Icons.Filled.Delete, contentDescription = stringResource(R.string.alert_delete_downloaded_comic_title))
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            bottomBar = {
                ComicDownloadBottomBar(
                    selectedCount = selectedCount,
                    onDownloadClick = { screenViewModel?.downloadSelected() },
                    onManageClick = {
                        Toast.makeText(context, "功能暫未開放", Toast.LENGTH_SHORT).show()
                    },
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            ComicDownloadContent(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                episodes = episodes,
                total = total,
                isLoading = isLoading,
                hasMore = hasMore,
                progressText = progressText,
                onEpisodeClick = { index -> screenViewModel?.C(index) },
                onLoadMore = { screenViewModel?.bN() },
            )
        }

        if (showDeleteConfirm) {
            AlertDialog(
                onDismissRequest = { showDeleteConfirm = false },
                title = { Text(stringResource(R.string.alert_delete_downloaded_comic_title)) },
                text = { Text(stringResource(R.string.alert_delete_downloaded_comic)) },
                confirmButton = {
                    TextButton(
                        onClick = {
                            screenViewModel?.cO()
                            showDeleteConfirm = false
                        }
                    ) {
                        Text(stringResource(android.R.string.ok))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showDeleteConfirm = false }) {
                        Text(stringResource(android.R.string.cancel))
                    }
                },
            )
        }
    }
}

@Composable
private fun ComicDownloadContent(
    episodes: List<ComicEpisodeObject>,
    total: Int,
    isLoading: Boolean,
    hasMore: Boolean,
    progressText: String,
    onEpisodeClick: (Int) -> Unit,
    onLoadMore: () -> Unit,
    modifier: Modifier = Modifier,
) {
    LazyColumn(
        modifier = modifier,
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        if (progressText.isNotBlank()) {
            item {
                PicaCardSection {
                    PicaSectionHeader(title = "下载进度")
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(10.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(
                            Icons.Filled.HourglassBottom,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.primary,
                        )
                        Text(
                            text = progressText,
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                            modifier = Modifier.weight(1f),
                        )
                    }
                }
            }
        }

        item {
            PicaCardSection {
                PicaSectionHeader(
                    title = "下载章节",
                    supportingText = if (total > 0) "已加载 ${episodes.size} / 共 $total 话" else "已加载 ${episodes.size} 话",
                    actionLabel = if (hasMore && !isLoading) "更多" else null,
                    onActionClick = onLoadMore,
                )

                if (episodes.isEmpty() && !isLoading) {
                    PicaEmptyState(message = "还没有可下载的章节")
                } else {
                    episodes.chunked(4).forEachIndexed { rowIndex, rowEpisodes ->
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(10.dp),
                        ) {
                            rowEpisodes.forEachIndexed { columnIndex, episode ->
                                val index = rowIndex * 4 + columnIndex
                                PicaEpisodeGridItem(
                                    title = episode.title?.takeIf { it.isNotBlank() } ?: "第 ${episode.order} 话",
                                    subtitle = downloadStateLabel(episode),
                                    state = downloadState(episode),
                                    onClick = { onEpisodeClick(index) },
                                    modifier = Modifier.weight(1f),
                                )
                            }
                            repeat(4 - rowEpisodes.size) {
                                Box(modifier = Modifier.weight(1f))
                            }
                        }
                    }
                }
            }
        }

        if (isLoading) {
            item {
                PicaLoadingIndicator(modifier = Modifier.fillMaxWidth())
            }
        }

        if (hasMore && episodes.isNotEmpty() && !isLoading) {
            item {
                LaunchedEffect(episodes.size) {
                    onLoadMore()
                }
            }
        }
    }
}

@Composable
private fun ComicDownloadBottomBar(
    selectedCount: Int,
    onDownloadClick: () -> Unit,
    onManageClick: () -> Unit,
) {
    Surface(
        modifier = Modifier
            .fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Button(
                onClick = onDownloadClick,
                enabled = selectedCount > 0,
                modifier = Modifier.weight(1f),
                contentPadding = ButtonDefaults.ButtonWithIconContentPadding,
            ) {
                Icon(Icons.Filled.Download, contentDescription = null)
                Text(if (selectedCount > 0) "下载 $selectedCount 话" else stringResource(R.string.download))
            }
            OutlinedButton(
                onClick = onManageClick,
                modifier = Modifier.weight(1f),
            ) {
                Icon(Icons.Filled.Folder, contentDescription = null)
                Text("管理")
            }
        }
    }
}

private fun downloadState(episode: ComicEpisodeObject): PicaEpisodeGridItemState {
    return when {
        episode.isSelected -> PicaEpisodeGridItemState.Selected
        episode.status == 1 -> PicaEpisodeGridItemState.Downloading
        episode.status == 2 -> PicaEpisodeGridItemState.Downloaded
        else -> PicaEpisodeGridItemState.Default
    }
}

@Composable
private fun downloadStateLabel(episode: ComicEpisodeObject): String? {
    return when {
        episode.isSelected -> "已选择"
        episode.status == 1 -> "下载中"
        episode.status == 2 -> stringResource(R.string.downloaded)
        else -> null
    }
}

private data class ComicDownloadPreviewState(
    val episodes: List<ComicEpisodeObject>,
    val total: Int,
    val progressText: String,
)

private fun comicDownloadPreviewState(): ComicDownloadPreviewState {
    return ComicDownloadPreviewState(
        episodes = listOf(
            ComicEpisodeObject("ep-1", "第一话", 1, "").apply { setStatus(2) },
            ComicEpisodeObject("ep-2", "2/18", 2, "").apply { setStatus(1) },
            ComicEpisodeObject("ep-3", "第三话", 3, "").apply { setSelected(true) },
            ComicEpisodeObject("ep-4", "第四话", 4, ""),
            ComicEpisodeObject("ep-5", "第五话", 5, ""),
        ),
        total = 24,
        progressText = "示例漫画\n第二话\n2 / 18",
    )
}

@Preview(showBackground = true)
@Composable
private fun ComicDownloadScreenPreview() {
    ComicDownloadScreen(
        comicId = "preview",
        title = "示例漫画",
        onBack = {},
    )
}
