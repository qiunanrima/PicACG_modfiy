package com.picacomic.fregata.compose.screens

import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.widget.ImageButton
import android.widget.ImageView
import android.widget.MediaController
import android.widget.TextView
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
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
import com.picacomic.fregata.adapters.GameScreenShotRecyclerViewAdapter
import com.picacomic.fregata.adapters.GameScreenShotViewPagerAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.GameDetailViewModel
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
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
fun GameDetailScreen(
    gameId: String,
    onBack: () -> Unit,
    onCommentClick: (String) -> Unit = {},
    viewModel: GameDetailViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(gameId) {
        if (!inPreview) {
            screenViewModel?.loadGame(gameId, force = true)
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
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = screenViewModel?.gameDetail?.title ?: stringResource(R.string.title_game_detail),
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
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        PreviewListPanel(
                            title = stringResource(R.string.title_game_detail),
                            items = listOf("游戏标题", "版本更新内容", "截图 / 视频 / 评论入口")
                        )
                    }
                } else {
                    AndroidView(
                        factory = { context ->
                            LayoutInflater.from(context).inflate(R.layout.fragment_game_detail, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val vm = screenViewModel ?: return@AndroidView
                            view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                            view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE
                            val detail = vm.gameDetail
                            if (detail != null) {
                                try {
                                val screenWidth = view.resources.displayMetrics.widthPixels
                                view.findViewById<View>(R.id.frameLayout_game_detail_banner)?.layoutParams?.height =
                                    (screenWidth * 9) / 16
                                view.findViewById<View>(R.id.recyclerView_game_detail_screenshots)?.layoutParams?.height =
                                    (screenWidth * 9) / 16

                                view.findViewById<TextView>(R.id.textView_game_detail_title)?.text = detail.title
                                view.findViewById<TextView>(R.id.textView_game_detail_publisher)?.text = detail.publisher
                                view.findViewById<TextView>(R.id.textView_game_detail_description)?.text = detail.description
                                view.findViewById<TextView>(R.id.textView_game_detail_version_description)?.text = detail.updateContent
                                view.findViewById<TextView>(R.id.textView_game_detail_version_title)?.text = detail.version
                                view.findViewById<TextView>(R.id.textView_game_detail_size)?.text =
                                    detail.androidSize.toString()
                                view.findViewById<TextView>(R.id.textView_game_detail_comment_count)?.text =
                                    detail.commentsCount.toString()
                                view.findViewById<TextView>(R.id.textView_game_detail_like_count)?.text =
                                    detail.likesCount.toString()
                                view.findViewById<TextView>(R.id.textView_game_detail_downloaded)?.text =
                                    detail.downloadsCount.toString()

                                view.findViewById<ImageView>(R.id.imageView_game_detail_recommend)?.visibility =
                                    if (detail.isSuggest) View.VISIBLE else View.GONE
                                view.findViewById<ImageView>(R.id.imageView_game_detail_adult)?.visibility =
                                    if (detail.isAdult) View.VISIBLE else View.GONE
                                view.findViewById<ImageView>(R.id.imageView_game_detail_android)?.visibility =
                                    if (detail.isAndroid) View.VISIBLE else View.GONE
                                view.findViewById<ImageView>(R.id.imageView_game_detail_ios)?.visibility =
                                    if (detail.isIos) View.VISIBLE else View.GONE

                                val iconView = view.findViewById<ImageView>(R.id.imageView_game_detail_icon)
                                if (iconView != null && detail.icon != null) {
                                    Picasso.with(view.context).load(g.b(detail.icon)).into(iconView)
                                }

                                val bannerView = view.findViewById<ImageView>(R.id.imageView_game_detail_banner)
                                vm.bannerScreenshot?.let {
                                    Picasso.with(view.context).load(g.b(it)).into(bannerView)
                                }

                                val playButton = view.findViewById<ImageButton>(R.id.imageButton_game_detail_play)
                                playButton?.visibility =
                                    if (detail.videoLink.isNullOrBlank()) View.GONE else View.VISIBLE
                                playButton?.setOnClickListener { vm.openVideoPopup() }

                                view.findViewById<ImageButton>(R.id.imageButton_game_detail_gift)?.setOnClickListener {
                                    AlertDialogCenter.giftNotReady(view.context)
                                }

                                view.findViewById<android.widget.Button>(R.id.button_game_detail_download)?.setOnClickListener {
                                    val link = detail.androidLinks?.firstOrNull()
                                    if (link.isNullOrBlank()) {
                                        AlertDialogCenter.downloadNotReady(view.context)
                                    } else {
                                        g.A(view.context, link)
                                    }
                                }

                                view.findViewById<ImageButton>(R.id.imageButton_game_detail_comment)?.setOnClickListener {
                                    onCommentClick(gameId)
                                }

                                view.findViewById<ImageButton>(R.id.imageButton_game_detail_like)?.apply {
                                    setImageResource(
                                        if (detail.isLiked) R.drawable.icon_bookmark_on else R.drawable.icon_bookmark_off
                                    )
                                    isEnabled = !vm.isActionLoading
                                    setOnClickListener { vm.toggleLike() }
                                }

                                val descriptionView =
                                    view.findViewById<TextView>(R.id.textView_game_detail_description)
                                val descriptionToggle =
                                    view.findViewById<ImageButton>(R.id.imageButton_game_detail_description_height_control)
                                descriptionToggle?.setOnClickListener {
                                    val collapsed =
                                        (descriptionView?.getTag(R.id.textView_game_detail_description) as? Boolean) == true
                                    if (collapsed) {
                                        descriptionView?.setSingleLine(false)
                                        descriptionView?.setTag(R.id.textView_game_detail_description, false)
                                        descriptionToggle.setImageResource(R.drawable.icon_expand)
                                    } else {
                                        descriptionView?.setSingleLine()
                                        descriptionView?.setTag(R.id.textView_game_detail_description, true)
                                        descriptionToggle.setImageResource(R.drawable.icon_collapse)
                                    }
                                }

                                val versionDescriptionView =
                                    view.findViewById<TextView>(R.id.textView_game_detail_version_description)
                                val versionToggle =
                                    view.findViewById<ImageButton>(R.id.imageButton_game_detail_version_description_height_control)
                                versionToggle?.setOnClickListener {
                                    val collapsed =
                                        (versionDescriptionView?.getTag(R.id.textView_game_detail_version_description) as? Boolean) == true
                                    if (collapsed) {
                                        versionDescriptionView?.setSingleLine(false)
                                        versionDescriptionView?.setTag(R.id.textView_game_detail_version_description, false)
                                        versionToggle.setImageResource(R.drawable.icon_expand)
                                    } else {
                                        versionDescriptionView?.setSingleLine()
                                        versionDescriptionView?.setTag(R.id.textView_game_detail_version_description, true)
                                        versionToggle.setImageResource(R.drawable.icon_collapse)
                                    }
                                }

                                val screenshotsRv =
                                    view.findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.recyclerView_game_detail_screenshots)
                                val screenshotKey =
                                    vm.screenshots.joinToString("|") { g.b(it) }
                                val oldScreenshotKey =
                                    screenshotsRv?.getTag(R.id.recyclerView_game_detail_screenshots) as? String
                                if (screenshotsRv != null && oldScreenshotKey != screenshotKey) {
                                    if (screenshotsRv.layoutManager == null) {
                                        screenshotsRv.layoutManager =
                                            androidx.recyclerview.widget.LinearLayoutManager(view.context, androidx.recyclerview.widget.LinearLayoutManager.HORIZONTAL, false)
                                    }
                                    screenshotsRv.adapter = GameScreenShotRecyclerViewAdapter(
                                        view.context,
                                        ArrayList(vm.screenshots),
                                        object : com.picacomic.fregata.a_pkg.k {
                                            override fun C(i: Int) {
                                                vm.openScreenshot(i)
                                            }
                                        }
                                    )
                                    screenshotsRv.setTag(R.id.recyclerView_game_detail_screenshots, screenshotKey)
                                }

                                val popupLayout = view.findViewById<View>(R.id.relativeLayout_game_detail_popup)
                                val viewPager =
                                    view.findViewById<androidx.viewpager.widget.ViewPager>(R.id.viewPager_game_detail_screenShot)
                                val videoView =
                                    view.findViewById<android.widget.VideoView>(R.id.videoView_game_detail)
                                val popupClose =
                                    view.findViewById<ImageButton>(R.id.imageButton_game_detail_close_popup)
                                popupClose?.setOnClickListener { vm.closePopup() }
                                popupLayout?.visibility =
                                    if (vm.popupVisible) View.VISIBLE else View.GONE
                                if (vm.popupVisible) {
                                    if (vm.showVideoInPopup) {
                                        viewPager?.visibility = View.GONE
                                        videoView?.visibility = View.VISIBLE
                                        val videoLink = detail.videoLink.orEmpty()
                                        if (videoLink.isNotBlank()) {
                                            val oldVideo = videoView?.getTag(R.id.videoView_game_detail) as? String
                                            if (oldVideo != videoLink) {
                                                videoView?.setVideoPath(videoLink)
                                                videoView?.setTag(R.id.videoView_game_detail, videoLink)
                                                val controller = MediaController(view.context)
                                                controller.setAnchorView(videoView)
                                                videoView?.setMediaController(controller)
                                            }
                                            videoView?.start()
                                        }
                                    } else {
                                        videoView?.pause()
                                        videoView?.visibility = View.GONE
                                        viewPager?.visibility = View.VISIBLE
                                        val pagerKey = screenshotKey
                                        val oldPagerKey =
                                            viewPager?.getTag(R.id.viewPager_game_detail_screenShot) as? String
                                        if (viewPager != null && oldPagerKey != pagerKey) {
                                            viewPager.adapter = GameScreenShotViewPagerAdapter(
                                                view.context,
                                                ArrayList(vm.screenshots)
                                            )
                                            viewPager.setTag(R.id.viewPager_game_detail_screenShot, pagerKey)
                                        }
                                        viewPager?.currentItem = vm.selectedScreenshotIndex
                                    }
                                } else {
                                    videoView?.pause()
                                    videoView?.visibility = View.GONE
                                    viewPager?.visibility = View.GONE
                                }
                                } catch (e: Exception) {
                                    e.printStackTrace()
                                }
                            }
                        }
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun GameDetailScreenPreview() {
    GameDetailScreen(
        gameId = "preview",
        onBack = {}
    )
}

