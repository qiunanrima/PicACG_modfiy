package com.picacomic.fregata.compose.screens

import android.content.Context
import android.content.Intent
import android.util.TypedValue
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Category
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
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.a_pkg.b
import com.picacomic.fregata.a_pkg.k
import com.picacomic.fregata.activities.ComicViewerActivity
import com.picacomic.fregata.adapters.ComicRecommendationRecyclerViewAdapter
import com.picacomic.fregata.adapters.EpisodeRecyclerViewAdapter
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
import com.picacomic.fregata.utils.FullGridLayoutManager
import com.picacomic.fregata.utils.PicassoTransformations
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso

/**
 * Comic Detail screen. Wraps the legacy [R.layout.fragment_comic_detail].
 */
@OptIn(ExperimentalMaterial3Api::class)
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
                if (inPreview) {
                    val detail = previewDetail
                    val previewEpisodes = previewState?.episodes.orEmpty()
                    val previewRecommendations = previewState?.recommendations.orEmpty()
                    val categoryText = detail?.categories?.joinToString(" ").orEmpty()
                    val tagList = detail?.tags.orEmpty()
                    val creatorName = detail?.creator?.name.orEmpty()
                    val canComment = detail?.isAllowComment == true
                    val totalEpisodes = previewState?.episodeTotal ?: detail?.episodeCount ?: 0

                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        PicaCardSection {
                            PicaSectionHeader(
                                title = "漫画信息",
                                supportingText = "README info response + ComicDetailViewModel state"
                            )
                            PicaStatRow(label = "作者", value = detail?.author.orEmpty())
                            PicaStatRow(label = "汉化", value = detail?.chineseTeam.orEmpty())
                            PicaStatRow(label = "骑士", value = creatorName)
                            PicaStatRow(
                                label = "分类",
                                value = categoryText,
                                supportingText = "页数 ${detail?.pagesCount ?: 0} / 浏览 ${detail?.viewsCount ?: 0}"
                            )
                            PicaStatRow(
                                label = "简介",
                                value = detail?.description.orEmpty(),
                                supportingText = "点赞 ${detail?.likesCount ?: 0} / 评论 ${if (canComment) detail?.commentsCount ?: 0 else "禁"}"
                            )
                        }
                        if (tagList.isNotEmpty()) {
                            PicaCardSection {
                                PicaSectionHeader(
                                    title = "标签",
                                    actionLabel = if (tagList.size > 3) "展开" else null,
                                    onActionClick = {}
                                )
                                tagList.chunked(3).forEachIndexed { rowIndex, tags ->
                                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                        tags.forEachIndexed { index, tag ->
                                            PicaTag(
                                                text = tag,
                                                onClick = {},
                                                selected = rowIndex == 0 && index == 0
                                            )
                                        }
                                    }
                                }
                            }
                        }
                        PicaActionRow(
                            primaryText = if (previewState?.fromHistory == true) "继续阅读" else "开始阅读",
                            primarySupportingText = if (previewState?.fromHistory == true) {
                                "从 ${previewState.historyEpisodeTitle} P.${previewState.historyPage} 开始"
                            } else {
                                "从第 ${previewEpisodes.firstOrNull()?.order ?: 1} 话开始"
                            },
                            onPrimaryClick = {},
                            actions = listOf(
                                PicaActionItem(
                                    icon = Icons.Filled.Home,
                                    contentDescription = "comment",
                                    count = if (canComment) (detail?.commentsCount ?: 0).toString() else "禁",
                                    onClick = {}
                                ),
                                PicaActionItem(
                                    icon = Icons.Filled.Person,
                                    contentDescription = "like",
                                    count = (detail?.likesCount ?: 0).toString(),
                                    onClick = {}
                                )
                            )
                        )
                        PicaCardSection {
                            PicaSectionHeader(
                                title = "章节",
                                supportingText = "已加载 ${previewEpisodes.size} / 共 $totalEpisodes 话",
                                actionLabel = if (previewState?.hasMoreEpisodes == true) "更多" else null,
                                onActionClick = {}
                            )
                            previewEpisodes.chunked(3).forEach { rowEpisodes ->
                                Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                    rowEpisodes.forEach { episode ->
                                        val state = when {
                                            episode.isSelected -> PicaEpisodeGridItemState.Selected
                                            episode.status > 0 -> PicaEpisodeGridItemState.Downloaded
                                            else -> PicaEpisodeGridItemState.Default
                                        }
                                        val subtitle = when {
                                            episode.isSelected -> "阅读中"
                                            episode.status > 0 -> "已下载"
                                            else -> episode.title ?: "待阅读"
                                        }
                                        PicaEpisodeGridItem(
                                            title = "第 ${episode.order} 话",
                                            subtitle = subtitle,
                                            state = state,
                                            onClick = {},
                                            modifier = Modifier.weight(1f)
                                        )
                                    }
                                    repeat(3 - rowEpisodes.size) {
                                        Box(modifier = Modifier.weight(1f))
                                    }
                                }
                            }
                        }
                        if (previewRecommendations.isNotEmpty()) {
                            PicaCardSection {
                                PicaSectionHeader(title = "猜你喜欢")
                                previewRecommendations.chunked(3).forEach { rowRecommendations ->
                                    Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                                        rowRecommendations.forEachIndexed { index, item ->
                                            if (index == 1) {
                                                PicaRecommendationCard(
                                                    title = item.title ?: "",
                                                    supportingText = item.categories?.joinToString(" ").orEmpty(),
                                                    onClick = {},
                                                    modifier = Modifier.weight(1f),
                                                    thumbnail = {
                                                        Box(
                                                            modifier = Modifier.fillMaxSize(),
                                                            contentAlignment = Alignment.Center
                                                        ) {
                                                            Icon(
                                                                imageVector = Icons.Filled.Category,
                                                                contentDescription = null,
                                                                modifier = Modifier.padding(20.dp)
                                                            )
                                                        }
                                                    }
                                                )
                                            } else {
                                                PicaRecommendationCard(
                                                    title = item.title ?: "",
                                                    supportingText = item.categories?.joinToString(" ").orEmpty(),
                                                    onClick = {},
                                                    modifier = Modifier.weight(1f)
                                                )
                                            }
                                        }
                                        repeat(3 - rowRecommendations.size) {
                                            Box(modifier = Modifier.weight(1f))
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    AndroidView(
                        factory = { context ->
                            LayoutInflater.from(context)
                                .inflate(R.layout.fragment_comic_detail, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val vm = screenViewModel ?: return@AndroidView
                            view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                            view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE

                            val detail = vm.comicDetail ?: return@AndroidView
                            val context = view.context

                            val titleView = view.findViewById<TextView>(R.id.textView_comic_detail_title)
                            titleView?.let {
                                g.a(
                                    context,
                                    it,
                                    detail.title ?: "",
                                    detail.pagesCount,
                                    detail.isFinished
                                )
                            }

                            val authorView =
                                view.findViewById<TextView>(R.id.textView_comic_detail_author)
                            authorView?.text = detail.author ?: ""
                            authorView?.setOnClickListener {
                                onComicListClick(null, null, detail.author, null, null, null)
                            }

                            val translateView =
                                view.findViewById<TextView>(R.id.textView_comic_detail_translate)
                            translateView?.text = detail.chineseTeam ?: ""
                            translateView?.setOnClickListener {
                                onComicListClick(null, null, null, detail.chineseTeam, null, null)
                            }

                            view.findViewById<TextView>(R.id.textView_comic_detail_description)?.text =
                                detail.description ?: ""
                            view.findViewById<TextView>(R.id.textView_comic_detail_view_count)?.text =
                                detail.viewsCount.toString()
                            view.findViewById<TextView>(R.id.textView_comic_detail_like_count)?.text =
                                detail.likesCount.toString()
                            view.findViewById<TextView>(R.id.textView_comic_detail_comment_count)?.text =
                                if (detail.isAllowComment) detail.commentsCount.toString() else "禁"
                            view.findViewById<TextView>(R.id.textView_comic_detail_timestamp)?.text =
                                "${g.B(context, detail.updatedAt)} "

                            val categoryText = detail.categories?.joinToString(" ").orEmpty()
                            view.findViewById<TextView>(R.id.textView_comic_detail_category)?.text =
                                categoryText
                            view.findViewById<View>(R.id.linearLayout_comic_detail_category)?.setOnClickListener {
                                val firstCategory = detail.categories?.firstOrNull()
                                if (!firstCategory.isNullOrBlank()) {
                                    onComicListClick(firstCategory, null, null, null, null, null)
                                }
                            }

                            val creator = detail.creator
                            view.findViewById<TextView>(R.id.textView_comic_detail_knight)?.apply {
                                text = creator?.name ?: ""
                                setOnClickListener {
                                    if (!creator?.creatorId.isNullOrBlank() && !creator?.name.isNullOrBlank()) {
                                        onComicListClick(
                                            null, null, null, null,
                                            creator?.creatorId, creator?.name
                                        )
                                    }
                                }
                            }

                            val creatorAvatar =
                                view.findViewById<ImageView>(R.id.imageView_comic_detail_knight_avatar)
                            if (creatorAvatar != null && creator?.avatar != null) {
                                Picasso.with(context).load(g.b(creator.avatar))
                                    .placeholder(R.drawable.placeholder_avatar_2).into(creatorAvatar)
                            }
                            creatorAvatar?.setOnClickListener {
                                if (!creator?.creatorId.isNullOrBlank()) {
                                    onCreatorProfileClick(creator.creatorId)
                                }
                            }
                            view.findViewById<ImageView>(R.id.imageView_comic_detail_knight_verified)?.visibility =
                                View.GONE

                            val coverView =
                                view.findViewById<ImageView>(R.id.imageView_comic_detail_cover)
                            if (coverView != null && detail.thumb != null) {
                                Picasso.with(context).load(g.b(detail.thumb))
                                    .transform(PicassoTransformations.CARD_COVER)
                                    .placeholder(R.drawable.placeholder_avatar_2).into(coverView)
                            }
                            coverView?.setOnClickListener {
                                val thumb = detail.thumb ?: return@setOnClickListener
                                onShowImage(g.b(thumb))
                            }

                            val bookmarkButton =
                                view.findViewById<ImageButton>(R.id.imageButton_comic_detail_bookmark)
                            val likeButton =
                                view.findViewById<ImageButton>(R.id.imageButton_comic_detail_like)
                            bookmarkButton?.setImageResource(
                                if (detail.isFavourite) R.drawable.icon_like else R.drawable.icon_like_off
                            )
                            likeButton?.setImageResource(
                                if (detail.isLiked) R.drawable.icon_bookmark_on else R.drawable.icon_bookmark_off
                            )
                            bookmarkButton?.isEnabled = !vm.isActionLoading
                            likeButton?.isEnabled = !vm.isActionLoading
                            bookmarkButton?.setOnClickListener { vm.toggleFavourite() }
                            likeButton?.setOnClickListener { vm.toggleLike() }

                            val commentButton =
                                view.findViewById<ImageButton>(R.id.imageButton_comic_detail_comment)
                            commentButton?.isEnabled = detail.isAllowComment
                            commentButton?.setOnClickListener {
                                if (detail.isAllowComment) {
                                    onCommentClick(comicId)
                                }
                            }

                            val descView =
                                view.findViewById<TextView>(R.id.textView_comic_detail_description)
                            val descControl =
                                view.findViewById<ImageButton>(R.id.imageButton_comic_detail_description_height_control)
                            descView?.post {
                                if ((descView.lineCount) <= 1) {
                                    descControl?.visibility = View.GONE
                                } else {
                                    descControl?.visibility = View.VISIBLE
                                }
                            }
                            descControl?.setOnClickListener {
                                val isCollapsed =
                                    (descView?.getTag(R.id.textView_comic_detail_description) as? Boolean) == true
                                if (isCollapsed) {
                                    descView?.setSingleLine(false)
                                    descView?.setTag(R.id.textView_comic_detail_description, false)
                                    descControl.setImageResource(R.drawable.icon_expand)
                                } else {
                                    descView?.setSingleLine(true)
                                    descView?.setTag(R.id.textView_comic_detail_description, true)
                                    descControl.setImageResource(R.drawable.icon_collapse)
                                }
                            }

                            val tagContainer =
                                view.findViewById<LinearLayout>(R.id.linearLayout_comic_detail_tags)
                            val tagControl =
                                view.findViewById<ImageButton>(R.id.imageButton_comic_detail_tag_height_control)
                            val tagKey = detail.tags?.joinToString("|").orEmpty()
                            val oldTagKey =
                                tagContainer?.getTag(R.id.linearLayout_comic_detail_tags) as? String
                            if (tagContainer != null && oldTagKey != tagKey) {
                                val tagButtons = detail.tags?.map { tagName ->
                                    Button(context, null, R.style.TagButtonPink).apply {
                                        text = tagName
                                        setOnClickListener {
                                            onComicListClick(null, tagName, null, null, null, null)
                                        }
                                    }
                                }?.toTypedArray() ?: emptyArray()
                                if (tagButtons.isNotEmpty()) {
                                    val rows = g.a(tagContainer, tagButtons, context, tagControl)
                                    tagControl?.visibility = if (rows <= 1) View.GONE else View.VISIBLE
                                } else {
                                    tagContainer.removeAllViews()
                                    tagControl?.visibility = View.GONE
                                }
                                tagContainer.setTag(R.id.linearLayout_comic_detail_tags, tagKey)
                            }
                            tagControl?.setOnClickListener {
                                val isCollapsed =
                                    (tagContainer?.getTag(R.id.imageButton_comic_detail_tag_height_control) as? Boolean) == true
                                if (isCollapsed) {
                                    val layoutParams = tagContainer?.layoutParams
                                    layoutParams?.height = LinearLayout.LayoutParams.WRAP_CONTENT
                                    tagContainer?.layoutParams = layoutParams
                                    tagContainer?.setTag(
                                        R.id.imageButton_comic_detail_tag_height_control,
                                        false
                                    )
                                    tagControl.setImageResource(R.drawable.icon_expand)
                                } else {
                                    val firstRow = tagContainer?.getChildAt(0)
                                    val layoutParams = tagContainer?.layoutParams
                                    layoutParams?.height = firstRow?.measuredHeight
                                        ?: firstRow?.height
                                        ?: LinearLayout.LayoutParams.WRAP_CONTENT
                                    tagContainer?.layoutParams = layoutParams
                                    tagContainer?.setTag(
                                        R.id.imageButton_comic_detail_tag_height_control,
                                        true
                                    )
                                    tagControl.setImageResource(R.drawable.icon_collapse)
                                }
                            }

                            val startReadButton =
                                view.findViewById<Button>(R.id.button_comic_detail_start_read)
                            val historyRecord = com.picacomic.fregata.utils.b.ax(comicId)
                            if (historyRecord != null) {
                                startReadButton?.text =
                                    "从 ${historyRecord.episodeTitle}\nP.${historyRecord.page} 开始"
                                startReadButton?.setTextSize(
                                    TypedValue.COMPLEX_UNIT_PX,
                                    view.resources.getDimension(R.dimen.textsize_content_1)
                                )
                            } else {
                                startReadButton?.setText(R.string.comic_detail_start_read)
                                startReadButton?.setTextSize(
                                    TypedValue.COMPLEX_UNIT_PX,
                                    view.resources.getDimension(R.dimen.textsize_title_3)
                                )
                            }
                            startReadButton?.setOnClickListener {
                                val episodeTotal = if (vm.episodeTotal > 0) {
                                    vm.episodeTotal
                                } else {
                                    detail.episodeCount
                                }
                                val record = com.picacomic.fregata.utils.b.ax(comicId)
                                if (record != null) {
                                    openComicViewer(
                                        context = context,
                                        comicId = comicId,
                                        title = detail.title,
                                        episodeOrder = record.episodeOrder,
                                        page = record.page,
                                        episodeTotal = if (record.episodeTotal > 0) record.episodeTotal else episodeTotal,
                                        fromRecord = true
                                    )
                                } else {
                                    val firstEpisodeOrder = vm.episodes.firstOrNull()?.order ?: 1
                                    openComicViewer(
                                        context = context,
                                        comicId = comicId,
                                        title = detail.title,
                                        episodeOrder = firstEpisodeOrder,
                                        page = 1,
                                        episodeTotal = episodeTotal,
                                        fromRecord = false
                                    )
                                }
                            }

                            val episodesRv =
                                view.findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.recyclerView_comic_detail_episode)
                            val moreEpisodesButton =
                                view.findViewById<Button>(R.id.button_comic_detail_more_episode)
                            val episodesKey =
                                vm.episodes.joinToString("|") { "${it.episodeId}:${it.order}" }
                            val oldEpisodesKey =
                                episodesRv?.getTag(R.id.recyclerView_comic_detail_episode) as? String
                            if (episodesRv != null && oldEpisodesKey != episodesKey) {
                                episodesRv.layoutManager = FullGridLayoutManager(context, 4)
                                episodesRv.adapter = EpisodeRecyclerViewAdapter(
                                    context,
                                    ArrayList(vm.episodes),
                                    object : k {
                                        override fun C(i: Int) {
                                            val episode = vm.episodes.getOrNull(i) ?: return
                                            val episodeTotal = if (vm.episodeTotal > 0) {
                                                vm.episodeTotal
                                            } else {
                                                detail.episodeCount
                                            }
                                            openComicViewer(
                                                context = context,
                                                comicId = comicId,
                                                title = detail.title,
                                                episodeOrder = episode.order,
                                                page = 1,
                                                episodeTotal = episodeTotal,
                                                fromRecord = false
                                            )
                                        }
                                    }
                                )
                                episodesRv.setTag(R.id.recyclerView_comic_detail_episode, episodesKey)
                            }
                            moreEpisodesButton?.visibility =
                                if (vm.hasMoreEpisodes) View.VISIBLE else View.GONE
                            moreEpisodesButton?.setOnClickListener {
                                vm.loadMoreEpisodes()
                            }

                            val recommendationRv =
                                view.findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.recyclerView_recommendation)
                            val recKey =
                                vm.recommendations.joinToString("|") { it.comicId ?: "" }
                            val oldRecKey =
                                recommendationRv?.getTag(R.id.recyclerView_recommendation) as? String
                            if (recommendationRv != null && oldRecKey != recKey) {
                                if (recommendationRv.layoutManager == null) {
                                    recommendationRv.layoutManager =
                                        androidx.recyclerview.widget.LinearLayoutManager(
                                            context,
                                            androidx.recyclerview.widget.LinearLayoutManager.HORIZONTAL,
                                            false
                                        )
                                }
                                recommendationRv.adapter = ComicRecommendationRecyclerViewAdapter(
                                    context,
                                    ArrayList(vm.recommendations),
                                    object : b {
                                        override fun C(i: Int) {
                                            val item = vm.recommendations.getOrNull(i) ?: return
                                            val targetComicId = item.comicId ?: return
                                            onComicClick(targetComicId)
                                        }

                                        override fun I(i: Int) = Unit
                                    }
                                )
                                recommendationRv.setTag(R.id.recyclerView_recommendation, recKey)
                            }

                            val scrollView =
                                view.findViewById<androidx.core.widget.NestedScrollView>(R.id.scrollView)
                            if (scrollView?.getTag(R.id.scrollView) != true) {
                                scrollView?.setOnScrollChangeListener(
                                    androidx.core.widget.NestedScrollView.OnScrollChangeListener { nested, _, _, _, _ ->
                                        val child =
                                            nested.getChildAt(nested.childCount - 1)
                                                ?: return@OnScrollChangeListener
                                        if (child.bottom - (nested.height + nested.scrollY) == 0) {
                                            vm.loadMoreEpisodes()
                                        }
                                    }
                                )
                                scrollView?.setTag(R.id.scrollView, true)
                            }
                        }
                    )
                }
            }
        }
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
