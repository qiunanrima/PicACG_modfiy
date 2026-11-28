package com.picacomic.fregata.compose.screens

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.widget.Toast
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Comment
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.Comment
import androidx.compose.material.icons.filled.Download
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.ComicViewerActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaActionItem
import com.picacomic.fregata.compose.components.PicaActionRow
import com.picacomic.fregata.compose.components.PicaCardSection
import com.picacomic.fregata.compose.components.PicaEpisodeGrid
import com.picacomic.fregata.compose.components.PicaEpisodeGridItem
import com.picacomic.fregata.compose.components.PicaEpisodeGridItemState
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaImageUrl
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaRecommendationCard
import com.picacomic.fregata.compose.components.compactCount
import com.picacomic.fregata.compose.components.PicaSectionHeader
import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.Surface
import androidx.compose.material3.TextButton
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import com.picacomic.fregata.compose.components.PicaTag
import com.picacomic.fregata.compose.viewmodels.ComicDetailViewModel
import com.picacomic.fregata.objects.ComicDetailObject
import com.picacomic.fregata.objects.ComicEpisodeObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.CreatorObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.utils.g

/**
 * Comic Detail screen.
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun ComicDetailScreen(
    comicId: String,
    offlineMode: Boolean = false,
    onBack: () -> Unit,
    onComicClick: (String) -> Unit,
    onCommentClick: (String) -> Unit,
    onComicListClick: (
        category: String?,
        tag: String?,
        author: String?,
        translate: String?,
        creatorId: String?,
        creatorName: String?
    ) -> Unit,
    onCreatorProfileClick: (String) -> Unit = {},
    onShowImage: (String) -> Unit = {},
    onDownloadClick: (String, String?) -> Unit = { _, _ -> },
    viewModel: ComicDetailViewModel? = null
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewState = if (inPreview) comicDetailPreviewState() else null
    val previewDetail = previewState?.comicDetail

    LaunchedEffect(comicId, inPreview) {
        if (!inPreview) {
            screenViewModel?.loadComic(comicId, offlineMode = offlineMode)
        }
    }

    DisposableEffect(lifecycleOwner, screenViewModel, inPreview) {
        val observer = LifecycleEventObserver { _, event ->
            if (!inPreview && event == Lifecycle.Event.ON_RESUME) {
                screenViewModel?.refreshEpisodeLocalState()
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
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
        val res = vm.messageRes ?: return@LaunchedEffect
        Toast.makeText(context, res, Toast.LENGTH_SHORT).show()
    }

    PicaComposeTheme {
        // MD3: 使用 pinnedScrollBehavior 让 TopAppBar 在滚动时保持固定
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()

        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                // MD3 标准 TopAppBar
                TopAppBar(
                    title = { Text(stringResource(R.string.title_comic_detail_default)) },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(
                                // MD3: 使用 AutoMirrored 变体支持 RTL 布局
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back)
                            )
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                        actionIconContentColor = MaterialTheme.colorScheme.onSurface
                    ),
                    scrollBehavior = scrollBehavior
                )
            },
            // MD3: Scaffold 自动处理背景色，无需手动 background modifier
            containerColor = MaterialTheme.colorScheme.surface
        ) { innerPadding ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
                    .consumeWindowInsets(innerPadding)
            ) {
                val detail = if (inPreview) previewDetail else screenViewModel?.comicDetail
                val episodes = if (inPreview) previewState?.episodes.orEmpty() else screenViewModel?.episodes.orEmpty()
                val recommendations = if (inPreview) {
                    previewState?.recommendations.orEmpty()
                } else {
                    screenViewModel?.recommendations.orEmpty()
                }
                val totalEpisodes = if (inPreview) {
                    previewState?.episodeTotal ?: detail?.episodeCount ?: 0
                } else {
                    val vmTotal = screenViewModel?.episodeTotal ?: 0
                    if (vmTotal > 0) vmTotal else detail?.episodeCount ?: 0
                }
                val hasMoreEpisodes = if (inPreview) {
                    previewState?.hasMoreEpisodes == true
                } else {
                    screenViewModel?.hasMoreEpisodes == true
                }

                ComicDetailContent(
                    comicId = comicId,
                    detail = detail,
                    episodes = episodes,
                    totalEpisodes = totalEpisodes,
                    hasMoreEpisodes = hasMoreEpisodes,
                    recommendations = recommendations,
                    previewState = previewState,
                    isLoading = screenViewModel?.isLoading == true,
                    isActionLoading = screenViewModel?.isActionLoading == true,
                    offlineMode = offlineMode,
                    onComicClick = onComicClick,
                    onCommentClick = onCommentClick,
                    onComicListClick = onComicListClick,
                    onShowImage = onShowImage,
                    onLoadMoreEpisodes = { screenViewModel?.loadMoreEpisodes() },
                    onToggleFavourite = { screenViewModel?.toggleFavourite() },
                    onToggleLike = { screenViewModel?.toggleLike() },
                    onDownloadClick = onDownloadClick,
                )

            }
        }
    }
    }

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ComicDetailContent(
    comicId: String,
    detail: ComicDetailObject?,
    episodes: List<ComicEpisodeObject>,
    totalEpisodes: Int,
    hasMoreEpisodes: Boolean,
    recommendations: List<ComicListObject>,
    previewState: ComicDetailPreviewState?,
    isLoading: Boolean,
    isActionLoading: Boolean,
    offlineMode: Boolean,
    onComicClick: (String) -> Unit,
    onCommentClick: (String) -> Unit,
    onComicListClick: (
        category: String?,
        tag: String?,
        author: String?,
        translate: String?,
        creatorId: String?,
        creatorName: String?
    ) -> Unit,
    onShowImage: (String) -> Unit,
    onLoadMoreEpisodes: () -> Unit,
    onToggleFavourite: () -> Unit,
    onToggleLike: () -> Unit,
    onDownloadClick: (String, String?) -> Unit,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val historyRecord = if (inPreview) null else com.picacomic.fregata.utils.b.ax(comicId)
    val canComment = detail?.isAllowComment == true
    val categories = detail?.categories.orEmpty().map(String::trim).filter(String::isNotEmpty).distinct()
    val tags = detail?.tags.orEmpty().map(String::trim).filter(String::isNotEmpty).distinct()
    var tagsExpanded by remember(tags) { mutableStateOf(false) }
    var descriptionExpanded by remember(detail?.comicId) { mutableStateOf(false) }
    val shownTags = if (tagsExpanded || tags.size <= 4) tags else tags.take(4)

    BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
        val useTwoPaneLayout = maxWidth >= 840.dp
        Row(modifier = Modifier.fillMaxSize()) {
            LazyColumn(
                modifier = Modifier
                    .weight(1.35f)
                    .fillMaxSize(),
                contentPadding = if (useTwoPaneLayout) {
                    PaddingValues(start = 16.dp, top = 16.dp, end = 8.dp, bottom = 16.dp)
                } else {
                    PaddingValues(16.dp)
                },
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                item(key = "hero") {
                    if (detail == null) {
                        PicaLoadingIndicator()
                    } else {
                        Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                            val credits: @Composable () -> Unit = {
                                Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                    Text(
                                        text = detail.title.orEmpty(),
                                        style = MaterialTheme.typography.headlineSmall.copy(fontWeight = FontWeight.Bold, letterSpacing = 0.sp),
                                        modifier = Modifier.clickable { copyComicTitle(context, detail.title) },
                                    )
                                    detail.author?.takeIf(String::isNotBlank)?.let { name ->
                                        CreditChip("作者", name, Icons.Filled.Person) { onComicListClick(null, null, name, null, null, null) }
                                    }
                                    detail.chineseTeam?.takeIf(String::isNotBlank)?.let { name ->
                                        CreditChip("汉化", name, Icons.Filled.Translate) { onComicListClick(null, null, null, name, null, null) }
                                    }
                                    detail.creator?.let { creator ->
                                        creator.name?.takeIf(String::isNotBlank)?.let { name ->
                                            CreditChip("骑士", name, Icons.Filled.Badge, !creator.creatorId.isNullOrBlank()) {
                                                onComicListClick(null, null, null, null, creator.creatorId, name)
                                            }
                                        }
                                    }
                                }
                            }
                            BoxWithConstraints(Modifier.fillMaxWidth()) {
                                if (maxWidth < 280.dp * LocalDensity.current.fontScale) {
                                    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                                        ComicCoverPreview(detail.thumb, detail.title, onShowImage)
                                        credits()
                                    }
                                } else {
                                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                                        ComicCoverPreview(detail.thumb, detail.title, onShowImage)
                                        Column(Modifier.weight(1f)) { credits() }
                                    }
                                }
                            }
                            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                DetailMetric(detail.pagesCount.toString(), "页数", Modifier.weight(1f))
                                DetailMetric(compactCount(detail.viewsCount), "浏览", Modifier.weight(1f))
                            }
                        }
                    }
                }

                item {
                    val fromHistory = historyRecord != null || previewState?.fromHistory == true
                    val primarySupportingText = when {
                        historyRecord != null -> "从 ${historyRecord.episodeTitle} P.${historyRecord.page} 开始"
                        previewState?.fromHistory == true -> "从 ${previewState.historyEpisodeTitle} P.${previewState.historyPage} 开始"
                        offlineMode && episodes.isEmpty() -> "暂无可离线阅读的缓存章节"
                        else -> "从第 ${episodes.firstOrNull()?.order ?: 1} 话开始"
                    }
                    PicaActionRow(
                        primaryText = if (fromHistory) "继续阅读" else "开始阅读",
                        primarySupportingText = primarySupportingText,
                        primaryEnabled = detail != null && (!offlineMode || fromHistory || episodes.isNotEmpty()),
                        onPrimaryClick = {
                            val currentDetail = detail ?: return@PicaActionRow
                            if (inPreview) return@PicaActionRow
                            val episodeTotal = if (totalEpisodes > 0) totalEpisodes else currentDetail.episodeCount
                            val record = com.picacomic.fregata.utils.b.ax(comicId)
                            if (record != null) {
                                openComicViewer(
                                    context = context,
                                    comicId = comicId,
                                    title = currentDetail.title,
                                    episodeOrder = record.episodeOrder,
                                    page = record.page,
                                    episodeTotal = if (record.episodeTotal > 0) record.episodeTotal else episodeTotal,
                                    fromRecord = true,
                                    offlineMode = offlineMode,
                                )
                            } else {
                                openComicViewer(
                                    context = context,
                                    comicId = comicId,
                                    title = currentDetail.title,
                                    episodeOrder = episodes.firstOrNull()?.order ?: 1,
                                    page = 1,
                                    episodeTotal = episodeTotal,
                                    fromRecord = false,
                                    offlineMode = offlineMode,
                                )
                            }
                        },
                        actions = listOf(
                            PicaActionItem(
                                icon = Icons.AutoMirrored.Filled.Comment,
                                contentDescription = stringResource(R.string.comic_viewer_setting_panel_comment),
                                count = if (canComment) compactCount(detail?.commentsCount ?: 0) else "禁",
                                enabled = canComment && !offlineMode,
                                onClick = { if (canComment && !offlineMode) onCommentClick(comicId) },
                            ),
                            PicaActionItem(
                                icon = Icons.Filled.Favorite,
                                contentDescription = stringResource(R.string.comic_action_like),
                                count = compactCount(detail?.likesCount ?: 0),
                                selected = detail?.isLiked == true,
                                enabled = detail != null && !isActionLoading && !offlineMode,
                                onClick = onToggleLike,
                                reportsSelection = true,
                            ),
                            PicaActionItem(
                                icon = Icons.Filled.Bookmark,
                                contentDescription = stringResource(R.string.comic_action_bookmark),
                                selected = detail?.isFavourite == true,
                                enabled = detail != null && !isActionLoading && !offlineMode,
                                onClick = onToggleFavourite,
                                reportsSelection = true,
                            ),
                            PicaActionItem(
                                icon = Icons.Filled.Download,
                                contentDescription = stringResource(R.string.download),
                                enabled = detail != null && !offlineMode,
                                onClick = {
                                    val currentDetail = detail ?: return@PicaActionItem
                                    onDownloadClick(comicId, currentDetail.title)
                                },
                            ),
                        ),
                    )
                }

                if (categories.isNotEmpty() || tags.isNotEmpty()) {
                    item(key = "genres") {
                        Column(Modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(12.dp)) {
                            if (categories.isNotEmpty()) {
                                DetailTagGroup("分类", categories) { name ->
                                    onComicListClick(name, null, null, null, null, null)
                                }
                            }
                            if (shownTags.isNotEmpty()) {
                                Column(Modifier.fillMaxWidth().animateContentSize(MaterialTheme.motionScheme.defaultSpatialSpec())) {
                                    DetailTagGroup("标签", shownTags) { tag ->
                                        onComicListClick(null, tag, null, null, null, null)
                                    }
                                    if (tags.size > 4) {
                                        TextButton(onClick = { tagsExpanded = !tagsExpanded }, modifier = Modifier.align(Alignment.End)) {
                                            Text(if (tagsExpanded) "收起标签" else "更多标签")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                detail?.description?.takeIf(String::isNotBlank)?.let { description ->
                    item(key = "description") { CollapsibleDescriptionRow(description, descriptionExpanded) { descriptionExpanded = !descriptionExpanded } }
                }
                if (episodes.isNotEmpty()) {
                    item {
                        PicaCardSection {
                            PicaSectionHeader(
                                title = "章节",
                                supportingText = "已加载 ${episodes.size} / 共 $totalEpisodes 话",
                                actionLabel = if (hasMoreEpisodes) "更多" else null,
                                onActionClick = onLoadMoreEpisodes,
                            )
                            PicaEpisodeGrid(episodes) { _, episode, cellModifier ->
                                val state = when {
                                    episode.isSelected -> PicaEpisodeGridItemState.Selected
                                    episode.status == 1 -> PicaEpisodeGridItemState.Downloading
                                    episode.status == 2 -> PicaEpisodeGridItemState.Downloaded
                                    else -> PicaEpisodeGridItemState.Default
                                }
                                PicaEpisodeGridItem(
                                    title = episode.title?.takeIf { it.isNotBlank() } ?: "第 ${episode.order} 话",
                                    subtitle = listOfNotNull(
                                        if (episode.isSelected) stringResource(R.string.comic_episode_last_read) else null,
                                        when (episode.status) {
                                            1 -> stringResource(R.string.comic_episode_downloading)
                                            2 -> stringResource(R.string.downloaded)
                                            else -> null
                                        },
                                    ).joinToString("\n"),
                                    state = state,
                                    onClick = {
                                        val currentDetail = detail ?: return@PicaEpisodeGridItem
                                        if (inPreview) return@PicaEpisodeGridItem
                                        openComicViewer(
                                            context = context,
                                            comicId = comicId,
                                            title = currentDetail.title,
                                            episodeOrder = episode.order,
                                            page = 1,
                                            episodeTotal = if (totalEpisodes > 0) totalEpisodes else currentDetail.episodeCount,
                                            fromRecord = false,
                                            offlineMode = offlineMode,
                                        )
                                    },
                                    modifier = cellModifier,
                                )
                            }
                        }
                    }
                }

                if (recommendations.isNotEmpty() && !useTwoPaneLayout) {
                    item {
                        PicaCardSection(contentPadding = PaddingValues(horizontal = 12.dp, vertical = 16.dp)) {
                            PicaSectionHeader(title = "猜你喜欢")
                            ComicRecommendationRow(recommendations, onComicClick)
                        }
                    }
                }
            }

            if (useTwoPaneLayout) {
                LazyColumn(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxSize(),
                    contentPadding = PaddingValues(start = 8.dp, top = 16.dp, end = 16.dp, bottom = 16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    item {
                        PicaCardSection(contentPadding = PaddingValues(horizontal = 12.dp, vertical = 16.dp)) {
                            PicaSectionHeader(title = "猜你喜欢")
                            when {
                                recommendations.isNotEmpty() -> {
                                    ComicRecommendationRow(recommendations, onComicClick)
                                }

                                isLoading -> PicaLoadingIndicator()

                                else -> PicaEmptyState(message = "暂无推荐")
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun CreditChip(role: String, name: String, icon: ImageVector, enabled: Boolean = true, onClick: () -> Unit) {
    Surface(onClick = onClick, enabled = enabled, shape = CircleShape, color = MaterialTheme.colorScheme.surfaceContainerHigh) {
        Row(Modifier.padding(horizontal = 12.dp, vertical = 7.dp), horizontalArrangement = Arrangement.spacedBy(6.dp), verticalAlignment = Alignment.CenterVertically) {
            Icon(icon, contentDescription = role, modifier = Modifier.size(16.dp))
            Text(name, style = MaterialTheme.typography.labelLarge)
        }
    }
}

@Composable
private fun DetailMetric(value: String, label: String, modifier: Modifier) {
    Surface(modifier = modifier, shape = RoundedCornerShape(16.dp), color = MaterialTheme.colorScheme.surfaceContainerLow) {
        Column(Modifier.padding(12.dp)) {
            Text(value, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.SemiBold)
            Text(label, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
    }
}

@Composable
private fun DetailTagGroup(title: String, labels: List<String>, onClick: (String) -> Unit) {
    Column(Modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(4.dp)) {
        Text(title, style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp),
        ) {
            labels.forEach { label ->
                Surface(onClick = { onClick(label) }, shape = CircleShape, color = MaterialTheme.colorScheme.secondaryContainer) {
                    Text(label, Modifier.padding(horizontal = 14.dp, vertical = 8.dp), maxLines = 1,
                        overflow = TextOverflow.Ellipsis, style = MaterialTheme.typography.labelLarge)
                }
            }
        }
    }
}

@Composable
private fun CollapsibleDescriptionRow(description: String, expanded: Boolean, onToggle: () -> Unit) {
    var overflows by remember(description) { mutableStateOf(false) }
    Surface(shape = RoundedCornerShape(28.dp), color = MaterialTheme.colorScheme.surfaceContainer) {
        Column(Modifier.fillMaxWidth().animateContentSize(MaterialTheme.motionScheme.defaultSpatialSpec()).padding(18.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Text("简介", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.SemiBold)
            Text(
                text = description,
                style = MaterialTheme.typography.bodyMedium.copy(lineHeight = 22.sp),
                textAlign = androidx.compose.ui.text.style.TextAlign.Start,
                maxLines = if (expanded) Int.MAX_VALUE else 4,
                overflow = TextOverflow.Ellipsis,
                onTextLayout = { if (!expanded) overflows = it.hasVisualOverflow },
            )
            if (expanded || overflows) TextButton(onClick = onToggle, modifier = Modifier.align(Alignment.End)) { Text(if (expanded) "收起" else "展开全部") }
        }
    }
}

@Composable
private fun ComicCoverPreview(
    thumbnail: ThumbnailObject?,
    title: String?,
    onShowImage: (String) -> Unit,
) {
    val imageUrl = thumbnail?.let { g.b(it) }.orEmpty()
    Box(
        modifier = Modifier
            .width(112.dp)
            .height(156.dp)
            .clip(RoundedCornerShape(24.dp))
            .clickable(enabled = imageUrl.isNotBlank()) { onShowImage(imageUrl) },
        contentAlignment = Alignment.Center,
    ) {
        if (imageUrl.isBlank()) {
            Icon(
                imageVector = Icons.Filled.Category,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        } else {
            PicaImageUrl(
                imageUrl = imageUrl,
                contentDescription = title,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize(),
            )
        }
    }
}

@Composable
internal fun ComicRecommendationRow(
    recommendations: List<ComicListObject>,
    onComicClick: (String) -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        recommendations.chunked(2).forEach { pair ->
            Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                pair.forEach { comic ->
                    ComicRecommendationPoster(comic, onComicClick, Modifier.weight(1f))
                }
                if (pair.size == 1) androidx.compose.foundation.layout.Spacer(Modifier.weight(1f))
            }
        }
    }
}

@Composable
internal fun ComicRecommendationPoster(comic: ComicListObject, onComicClick: (String) -> Unit, modifier: Modifier = Modifier) {
    PicaRecommendationCard(
        title = comic.title.orEmpty(),
        categories = comic.categories.orEmpty(),
        onClick = { comic.comicId?.takeIf(String::isNotBlank)?.let(onComicClick) },
        modifier = modifier,
        thumbnail = { ComicRecommendationPreview(comic.thumb) },
    )
}

@Composable
private fun ComicRecommendationPreview(thumbnail: ThumbnailObject?) {
    val imageUrl = thumbnail?.let { g.b(it) }.orEmpty()
    if (imageUrl.isBlank()) {
        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = Icons.Filled.Category,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(20.dp),
            )
        }
    } else {
        PicaImageUrl(
            imageUrl = imageUrl,
            contentDescription = null,
            contentScale = ContentScale.Crop,
            modifier = Modifier.fillMaxSize(),
        )
    }
}

private fun copyComicTitle(context: Context, title: String?) {
    val safeTitle = title?.takeIf { it.isNotBlank() } ?: return
    val clipboard = context.getSystemService(Context.CLIPBOARD_SERVICE) as? ClipboardManager ?: return
    clipboard.setPrimaryClip(ClipData.newPlainText("comic_title", safeTitle))
    Toast.makeText(context, "已复制漫画名称", Toast.LENGTH_SHORT).show()
}

internal fun openComicViewer(
    context: Context,
    comicId: String,
    title: String?,
    episodeOrder: Int,
    page: Int,
    episodeTotal: Int,
    fromRecord: Boolean,
    offlineMode: Boolean,
) {
    val intent = Intent(context, ComicViewerActivity::class.java).apply {
        putExtra("EXTRA_KEY_COMIC_ID", comicId)
        putExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", episodeOrder)
        putExtra("EXTRA_KEY_LAST_VIEW_PAGE", page)
        putExtra("EXTRA_KEY_EPISODE_TOTAL", episodeTotal)
        putExtra("EXTRA_KEY_COMIC_TITLE", title ?: "")
        putExtra("EXTRA_KEY_VIEW_FROM_RECORD", fromRecord)
        putExtra("EXTRA_KEY_OFFLINE_MODE", offlineMode)
    }
    context.startActivity(intent)
}

private data class ComicDetailPreviewState(
    val comicDetail: ComicDetailObject,
    val episodes: List<ComicEpisodeObject>,
    val episodeTotal: Int,
    val hasMoreEpisodes: Boolean,
    val recommendations: List<ComicListObject>,
    val fromHistory: Boolean,
    val historyEpisodeTitle: String,
    val historyPage: Int,
)

private fun comicDetailPreviewState(): ComicDetailPreviewState {
    val creatorAvatar = ThumbnailObject(
        "https://storage1.picacomic.com",
        "bf30b2bc-5127-4144-86f0-b496b102c6d3.jpg",
        "avatar.jpg"
    )
    val creator = CreatorObject(
        "593019d53f532059f297efa7",
        "黎欧",
        "m",
        creatorAvatar
    )
    val cover = ThumbnailObject(
        "https://storage1.picacomic.com",
        "tobeimg/IrEYXQ_4J8Iq7JRpV9kMOYEqfhk15lxR7i9LmEbeU6U/fill/300/400/sm/0/aHR0cHM6Ly9zdG9yYWdlMS5waWNhY29taWMuY29tL3N0YXRpYy8xZDFkYjBhMC04NzY0LTQ5ZWEtYmUwYS0zMTRiZWUyYzQ1ZDcuanBn.jpg",
        "01.jpg"
    )
    val comicDetail = ComicDetailObject(
        "5d56e4370bcf57397e60576b",
        "(C94)  ホカホカJS温泉 [中国翻訳]",
        "アカタマ (桜吹雪ねる)",
        "这猥琐大叔",
        "D.E練習漢化",
        creator,
        cover,
        arrayListOf("短篇", "妹妹系"),
        arrayListOf("C94", "温泉", "中国翻訳", "短篇"),
        31,
        26,
        24,
        316,
        31020,
        true,
        false,
        false,
        true,
        true,
        "2019-08-16T17:13:27.191Z",
        "2019-08-16T16:52:17.433Z"
    )

    val episodes = listOf(
        ComicEpisodeObject("ep-1", "第1話", 1, "2019-08-16T16:56:04.516Z").apply {
            setStatus(1)
        },
        ComicEpisodeObject("ep-2", "第2話", 2, "2019-08-17T16:56:04.516Z").apply {
            setSelected(true)
        },
        ComicEpisodeObject("ep-3", "第3話", 3, "2019-08-18T16:56:04.516Z"),
        ComicEpisodeObject("ep-4", "第4話", 4, "2019-08-19T16:56:04.516Z"),
        ComicEpisodeObject("ep-5", "第5話", 5, "2019-08-20T16:56:04.516Z"),
    )

    val recommendations = listOf(
        ComicListObject(
            "5d09f7701edbf52f24b2819d",
            "【明日方舟】凛冬の拘束调教（上篇）",
            "大阿卡纳XIV",
            4779,
            18,
            1,
            false,
            arrayListOf("短篇"),
            cover
        ),
        ComicListObject(
            "rec-2",
            "大家都在看・夏日温泉",
            "匿名作者",
            1024,
            32,
            2,
            true,
            arrayListOf("校园", "恋爱"),
            cover
        ),
        ComicListObject(
            "rec-3",
            "嗶咔漢化精选",
            "翻译组联合",
            680,
            20,
            1,
            true,
            arrayListOf("推荐作品"),
            cover
        )
    )

    return ComicDetailPreviewState(
        comicDetail = comicDetail,
        episodes = episodes,
        episodeTotal = 24,
        hasMoreEpisodes = true,
        recommendations = recommendations,
        fromHistory = true,
        historyEpisodeTitle = "第2話",
        historyPage = 8
    )
}

@Preview(showBackground = true)
@Composable
private fun ComicDetailScreenPreview() {
    ComicDetailScreen(
        comicId = "preview",
        onBack = {},
        onComicClick = {},
        onCommentClick = {},
        onComicListClick = { _, _, _, _, _, _ -> }
    )
}
