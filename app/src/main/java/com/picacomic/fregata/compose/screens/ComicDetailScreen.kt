package com.picacomic.fregata.compose.screens

import android.content.Context
import android.content.Intent
import android.widget.Toast
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
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
import androidx.compose.material.icons.filled.Comment
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
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
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.ComicViewerActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaActionItem
import com.picacomic.fregata.compose.components.PicaActionRow
import com.picacomic.fregata.compose.components.PicaCardSection
import com.picacomic.fregata.compose.components.PicaEpisodeGridItem
import com.picacomic.fregata.compose.components.PicaEpisodeGridItemState
import com.picacomic.fregata.compose.components.PicaRecommendationCard
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.components.PicaStatRow
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
    viewModel: ComicDetailViewModel? = null
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewState = if (inPreview) comicDetailPreviewState() else null
    val previewDetail = previewState?.comicDetail

    LaunchedEffect(comicId, inPreview) {
        if (!inPreview) {
            screenViewModel?.loadComic(comicId)
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
                    title = {
                        Text(
                            text = screenViewModel?.comicDetail?.title
                                ?: previewDetail?.title
                                ?: stringResource(R.string.title_comic_detail_default),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(
                                // MD3: 使用 AutoMirrored 变体支持 RTL 布局
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back)
                            )
                        }
                    },
                    // MD3: TopAppBar 颜色跟随 colorScheme，滚动后自动显示 surfaceContainer 背景
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface
                    ),
                    scrollBehavior = scrollBehavior
                )
            },
            // MD3: Scaffold 自动处理背景色，无需手动 background modifier
            containerColor = MaterialTheme.colorScheme.background
        ) { innerPadding ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
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
                    onComicClick = onComicClick,
                    onCommentClick = onCommentClick,
                    onComicListClick = onComicListClick,
                    onShowImage = onShowImage,
                    onLoadMoreEpisodes = { screenViewModel?.loadMoreEpisodes() },
                    onToggleLike = { screenViewModel?.toggleLike() },
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
    onToggleLike: () -> Unit,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val historyRecord = if (inPreview) null else com.picacomic.fregata.utils.b.ax(comicId)
    val canComment = detail?.isAllowComment == true
    val categories = detail?.categories.orEmpty()
    val tags = detail?.tags.orEmpty()
    var tagsExpanded by remember(tags) { mutableStateOf(false) }
    val shownTags = if (tagsExpanded || tags.size <= 4) tags else tags.take(4)

    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        item {
            PicaCardSection {
                PicaSectionHeader(
                    title = "漫画信息",
                    supportingText = if (detail == null && isLoading) "加载中" else "README info response + ComicDetailViewModel state",
                )

                if (detail == null) {
                    Text(
                        text = "正在获取漫画信息",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                } else {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(14.dp),
                        verticalAlignment = Alignment.Top,
                    ) {
                        ComicCoverPreview(
                            thumbnail = detail.thumb,
                            title = detail.title,
                            onShowImage = onShowImage,
                        )
                        Column(
                            modifier = Modifier.weight(1f),
                            verticalArrangement = Arrangement.spacedBy(2.dp),
                        ) {
                            PicaStatRow(
                                label = "作者",
                                value = detail.author.orEmpty(),
                                onClick = {
                                    if (!detail.author.isNullOrBlank()) {
                                        onComicListClick(null, null, detail.author, null, null, null)
                                    }
                                },
                            )
                            PicaStatRow(
                                label = "汉化",
                                value = detail.chineseTeam.orEmpty(),
                                onClick = {
                                    if (!detail.chineseTeam.isNullOrBlank()) {
                                        onComicListClick(null, null, null, detail.chineseTeam, null, null)
                                    }
                                },
                            )
                            PicaStatRow(
                                label = "骑士",
                                value = detail.creator?.name.orEmpty(),
                                onClick = {
                                    val creator = detail.creator
                                    if (!creator?.creatorId.isNullOrBlank() && !creator?.name.isNullOrBlank()) {
                                        onComicListClick(null, null, null, null, creator?.creatorId, creator?.name)
                                    }
                                },
                            )
                        }
                    }

                    PicaStatRow(
                        label = "分类",
                        value = categories.joinToString(" "),
                        supportingText = "页数 ${detail.pagesCount} / 浏览 ${detail.viewsCount}",
                        onClick = {
                            val firstCategory = categories.firstOrNull()
                            if (!firstCategory.isNullOrBlank()) {
                                onComicListClick(firstCategory, null, null, null, null, null)
                            }
                        },
                    )
                    PicaStatRow(
                        label = "简介",
                        value = detail.description.orEmpty(),
                        supportingText = "点赞 ${detail.likesCount} / 评论 ${if (canComment) detail.commentsCount else "禁"}",
                    )
                }
            }
        }

        if (tags.isNotEmpty()) {
            item {
                PicaCardSection {
                    PicaSectionHeader(
                        title = "标签",
                        actionLabel = if (tags.size > 4) {
                            if (tagsExpanded) "收起" else "展开"
                        } else {
                            null
                        },
                        onActionClick = { tagsExpanded = !tagsExpanded },
                    )
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(10.dp),
                    ) {
                        shownTags.forEachIndexed { index, tag ->
                            PicaTag(
                                text = tag,
                                onClick = { onComicListClick(null, tag, null, null, null, null) },
                                selected = index == 0,
                            )
                        }
                    }
                }
            }
        }

        item {
            val fromHistory = historyRecord != null || previewState?.fromHistory == true
            val primarySupportingText = when {
                historyRecord != null -> "从 ${historyRecord.episodeTitle} P.${historyRecord.page} 开始"
                previewState?.fromHistory == true -> "从 ${previewState.historyEpisodeTitle} P.${previewState.historyPage} 开始"
                else -> "从第 ${episodes.firstOrNull()?.order ?: 1} 话开始"
            }
            PicaActionRow(
                primaryText = if (fromHistory) "继续阅读" else "开始阅读",
                primarySupportingText = primarySupportingText,
                primaryEnabled = detail != null,
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
                        )
                    }
                },
                actions = listOf(
                    PicaActionItem(
                        icon = Icons.AutoMirrored.Filled.Comment,
                        contentDescription = "comments",
                        count = if (canComment) (detail?.commentsCount ?: 0).toString() else "禁",
                        enabled = canComment,
                        onClick = { if (canComment) onCommentClick(comicId) },
                    ),
                    PicaActionItem(
                        icon = Icons.Filled.Favorite,
                        contentDescription = "likes",
                        count = (detail?.likesCount ?: 0).toString(),
                        enabled = detail != null && !isActionLoading,
                        onClick = onToggleLike,
                    ),
                ),
            )
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
                    episodes.chunked(3).forEach { rowEpisodes ->
                        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                            rowEpisodes.forEach { episode ->
                                val state = when {
                                    episode.isSelected -> PicaEpisodeGridItemState.Selected
                                    episode.status > 0 -> PicaEpisodeGridItemState.Downloaded
                                    else -> PicaEpisodeGridItemState.Default
                                }
                                PicaEpisodeGridItem(
                                    title = episode.title?.takeIf { it.isNotBlank() } ?: "第 ${episode.order} 话",
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
                                        )
                                    },
                                    modifier = Modifier.weight(1f),
                                )
                            }
                            repeat(3 - rowEpisodes.size) {
                                Box(modifier = Modifier.weight(1f))
                            }
                        }
                    }
                }
            }
        }

        if (recommendations.isNotEmpty()) {
            item {
                PicaCardSection {
                    PicaSectionHeader(title = "猜你喜欢")
                    recommendations.chunked(3).forEach { rowRecommendations ->
                        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                            rowRecommendations.forEach { item ->
                                PicaRecommendationCard(
                                    title = item.title ?: "",
                                    supportingText = item.categories?.joinToString(" ").orEmpty(),
                                    onClick = {
                                        val targetComicId = item.comicId
                                        if (!targetComicId.isNullOrBlank()) {
                                            onComicClick(targetComicId)
                                        }
                                    },
                                    modifier = Modifier.weight(1f),
                                    thumbnail = {
                                        ComicRecommendationPreview(thumbnail = item.thumb)
                                    },
                                )
                            }
                            repeat(3 - rowRecommendations.size) {
                                Box(modifier = Modifier.weight(1f))
                            }
                        }
                    }
                }
            }
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
            .width(92.dp)
            .height(128.dp)
            .clip(RoundedCornerShape(8.dp))
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
            AsyncImage(
                model = imageUrl,
                contentDescription = title,
                placeholder = painterResource(R.drawable.placeholder_avatar_2),
                error = painterResource(R.drawable.placeholder_avatar_2),
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize(),
            )
        }
    }
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
        AsyncImage(
            model = imageUrl,
            contentDescription = null,
            placeholder = painterResource(R.drawable.placeholder_avatar_2),
            error = painterResource(R.drawable.placeholder_avatar_2),
            contentScale = ContentScale.Crop,
            modifier = Modifier.fillMaxSize(),
        )
    }
}

private fun openComicViewer(
    context: Context,
    comicId: String,
    title: String?,
    episodeOrder: Int,
    page: Int,
    episodeTotal: Int,
    fromRecord: Boolean
) {
    val intent = Intent(context, ComicViewerActivity::class.java).apply {
        putExtra("EXTRA_KEY_COMIC_ID", comicId)
        putExtra("EXTRA_KEY_LAST_VIEW_EPISODE_ORDER", episodeOrder)
        putExtra("EXTRA_KEY_LAST_VIEW_PAGE", page)
        putExtra("EXTRA_KEY_EPISODE_TOTAL", episodeTotal)
        putExtra("EXTRA_KEY_COMIC_TITLE", title ?: "")
        putExtra("EXTRA_KEY_VIEW_FROM_RECORD", fromRecord)
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
