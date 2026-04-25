package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Comment
import androidx.compose.material.icons.filled.Download
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaInfoChip
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaMetricRow
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.viewmodels.GameDetailViewModel
import com.picacomic.fregata.objects.GameDetailObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun GameDetailScreen(
    gameId: String,
    onBack: () -> Unit,
    onCommentClick: (String) -> Unit = {},
    viewModel: GameDetailViewModel? = null,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewState = if (inPreview) gameDetailPreviewState() else null

    LaunchedEffect(gameId) {
        if (!inPreview) screenViewModel?.loadGame(gameId, force = true)
    }

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) com.picacomic.fregata.b.c(context, code, vm.errorBody).dN() else com.picacomic.fregata.b.c(context).dN()
    }

    LaunchedEffect(screenViewModel?.messageEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.messageEvent <= 0) return@LaunchedEffect
        val res = vm.messageRes ?: return@LaunchedEffect
        Toast.makeText(context, res, Toast.LENGTH_SHORT).show()
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = screenViewModel?.gameDetail?.title ?: previewState?.detail?.title ?: stringResource(R.string.title_game_detail),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = stringResource(R.string.back))
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            val detail = if (inPreview) previewState?.detail else screenViewModel?.gameDetail
            val screenshots = if (inPreview) previewState?.screenshots.orEmpty() else screenViewModel?.screenshots.orEmpty()
            when {
                !inPreview && screenViewModel?.isLoading == true && detail == null -> PicaLoadingIndicator()
                detail == null -> PicaEmptyState(message = "No game detail")
                else -> {
                    GameDetailContent(
                        detail = detail,
                        screenshots = screenshots,
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(innerPadding),
                        onDownload = {
                            val link = detail.androidLinks?.firstOrNull()
                            if (link.isNullOrBlank()) AlertDialogCenter.downloadNotReady(context) else g.A(context, link)
                        },
                        onComment = { onCommentClick(gameId) },
                        onLike = { screenViewModel?.toggleLike() },
                        onVideo = {
                            val link = detail.videoLink
                            if (!link.isNullOrBlank()) g.A(context, link)
                        },
                    )
                }
            }
        }
    }
}

@Composable
private fun GameDetailContent(
    detail: GameDetailObject,
    screenshots: List<ThumbnailObject>,
    modifier: Modifier,
    onDownload: () -> Unit,
    onComment: () -> Unit,
    onLike: () -> Unit,
    onVideo: () -> Unit,
) {
    LazyColumn(
        modifier = modifier,
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        item {
            PicaRemoteImage(
                thumbnail = screenshots.firstOrNull() ?: detail.icon,
                contentDescription = detail.title,
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(16f / 9f)
                    .clip(MaterialTheme.shapes.large),
            )
        }
        item {
            Surface(
                color = MaterialTheme.colorScheme.surface,
                shape = MaterialTheme.shapes.large,
                tonalElevation = 1.dp,
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                        PicaRemoteImage(
                            thumbnail = detail.icon,
                            contentDescription = detail.title,
                            modifier = Modifier
                                .size(72.dp)
                                .clip(MaterialTheme.shapes.medium),
                        )
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = detail.title.orEmpty(),
                                style = MaterialTheme.typography.headlineSmall,
                                fontWeight = FontWeight.Bold,
                            )
                            Text(
                                text = "${detail.publisher.orEmpty()} · ${detail.version.orEmpty()}",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                                if (detail.isAndroid) PicaInfoChip("Android")
                                if (detail.isIos) PicaInfoChip("iOS")
                                if (detail.isAdult) PicaInfoChip("Adult")
                            }
                        }
                    }
                    PicaMetricRow(
                        metrics = listOf(
                            "Likes" to detail.likesCount.toString(),
                            "Comments" to detail.commentsCount.toString(),
                            "Downloads" to detail.downloadsCount.toString(),
                        ),
                    )
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Button(onClick = onDownload, modifier = Modifier.weight(1f)) {
                            Icon(Icons.Filled.Download, contentDescription = null)
                            Text("Download")
                        }
                        IconButton(onClick = onComment) {
                            Icon(Icons.Filled.Comment, contentDescription = stringResource(R.string.title_comment))
                        }
                        IconButton(onClick = onLike) {
                            Icon(Icons.Filled.Favorite, contentDescription = "Like")
                        }
                        if (!detail.videoLink.isNullOrBlank()) {
                            IconButton(onClick = onVideo) {
                                Icon(Icons.Filled.PlayArrow, contentDescription = "Video")
                            }
                        }
                    }
                }
            }
        }
        item {
            Surface(
                color = MaterialTheme.colorScheme.surface,
                shape = MaterialTheme.shapes.large,
                tonalElevation = 1.dp,
            ) {
                Column(
                    modifier = Modifier.padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(10.dp),
                ) {
                    PicaSectionHeader(title = "Description")
                    Text(text = detail.description.orEmpty(), style = MaterialTheme.typography.bodyMedium)
                    PicaSectionHeader(title = "Update")
                    Text(text = detail.updateContent.orEmpty(), style = MaterialTheme.typography.bodyMedium)
                }
            }
        }
        if (screenshots.isNotEmpty()) {
            item {
                Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    PicaSectionHeader(title = "Screenshots")
                    Row(
                        modifier = Modifier.horizontalScroll(rememberScrollState()),
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        screenshots.forEach { shot ->
                            PicaRemoteImage(
                                thumbnail = shot,
                                contentDescription = detail.title,
                                modifier = Modifier
                                    .width(220.dp)
                                    .aspectRatio(16f / 9f)
                                    .clip(MaterialTheme.shapes.medium)
                                    .clickable {},
                            )
                        }
                    }
                }
            }
        }
    }
}

private data class GameDetailPreviewState(
    val detail: GameDetailObject,
    val screenshots: List<ThumbnailObject>,
)

private fun gameDetailPreviewState(): GameDetailPreviewState {
    val icon = ThumbnailObject("https://storage1.picacomic.com", "icon.jpg", "icon.jpg")
    val screenshots = listOf(
        ThumbnailObject("https://storage1.picacomic.com", "shot1.jpg", "shot1.jpg"),
        ThumbnailObject("https://storage1.picacomic.com", "shot2.jpg", "shot2.jpg"),
    )
    val detail = GameDetailObject(
        "game-1",
        "CLANNAD",
        "1.0.0",
        "Key",
        icon,
        "Fixes and resource update.",
        "A visual novel classic.",
        "https://example.com/video.mp4",
        2205,
        258,
        2205,
        false,
        false,
        false,
        true,
        true,
        763f,
        763f,
        arrayListOf("https://example.com/ios"),
        arrayListOf("https://example.com/android"),
        ArrayList(screenshots),
    )
    return GameDetailPreviewState(detail, screenshots)
}

@Preview(showBackground = true)
@Composable
private fun GameDetailScreenPreview() {
    GameDetailScreen(gameId = "preview", onBack = {})
}
