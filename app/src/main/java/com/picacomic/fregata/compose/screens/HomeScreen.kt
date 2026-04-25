package com.picacomic.fregata.compose.screens

import android.view.View
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import com.picacomic.fregata.compose.viewmodels.HomeViewModel
import com.picacomic.fregata.holders.AnnouncementContainerView
import com.picacomic.fregata.holders.ComicCollectionView

import androidx.compose.material3.Badge
import androidx.compose.material3.BadgedBox
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.objects.AnnouncementObject
import com.picacomic.fregata.objects.CollectionObject
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.ThumbnailObject
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow
import java.util.ArrayList

/**
 * Home screen. The legacy XML scrollable content (announcements, comic collections)
 * is embedded via [AndroidView]. A Compose top-bar with notification badge sits above.
 *
 * @param legacyContentView  Inflated [R.layout.layout_home_compose_content].
 * @param hasNotification    Whether to show the notification badge dot.
 * @param onNotification     Called when the notification button is tapped.
 */

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeScreen(
    viewModel: HomeViewModel? = null,
    onNotification: () -> Unit,
    onComicClick: (String) -> Unit,
    onMoreClick: (String) -> Unit, // category name
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val contentBg = MaterialTheme.colorScheme.surface.toArgb()
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewState = if (inPreview) homePreviewState() else null

    LaunchedEffect(Unit) {
        if (!inPreview &&
            screenViewModel?.announcements?.isEmpty() == true &&
            screenViewModel?.collections?.isEmpty() == true
        ) {
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

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_home),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    actions = {
                        BadgedBox(
                            badge = { if (screenViewModel?.hasNotification == true) Badge() }
                        ) {
                            TextButton(onClick = onNotification) {
                                Text(text = stringResource(R.string.title_notification))
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer
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
                            title = stringResource(R.string.title_notification),
                            items = previewState?.announcements?.map { it.title ?: "" }.orEmpty()
                        )
                        previewState?.collections?.forEach { collection ->
                            PreviewListPanel(
                                title = collection.title ?: "",
                                items = collection.comics?.take(3)?.map { it.title ?: "" }.orEmpty()
                            )
                        }
                    }
                } else {
                    AndroidView(
                        factory = { context ->
                            android.view.LayoutInflater.from(context).inflate(R.layout.layout_home_compose_content, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val vm = screenViewModel ?: return@AndroidView
                            val scrollView = view as? androidx.core.widget.NestedScrollView
                            scrollView?.setBackgroundColor(contentBg)
                            (scrollView?.getChildAt(0) as? android.view.ViewGroup)?.setBackgroundColor(contentBg)

                            val announcementsContainer = view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_announcements)
                            val collectionContainers = listOf(
                                view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_1),
                                view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_2),
                                view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_3),
                                view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_4),
                                view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_5)
                            )

                            // Render Announcements
                            announcementsContainer?.removeAllViews()
                            if (vm.announcements.isNotEmpty() && announcementsContainer != null) {
                                val announcementView = AnnouncementContainerView(view.context, ArrayList(vm.announcements), 0, { onNotification() }, { onNotification() })
                                announcementView.textView_title?.setText(R.string.title_notification)
                                announcementsContainer.addView(announcementView)
                                announcementsContainer.visibility = View.GONE//这里别动
                            } else {
                                announcementsContainer?.visibility = View.GONE
                            }

                            // Render Collections
                            collectionContainers.forEach { it?.removeAllViews() }
                            vm.collections.take(5).forEachIndexed { index, collection ->
                                try {
                                    val baseTag = (index * 10) + 10000
                                    val collectionView = ComicCollectionView(
                                        view.context, 
                                        ArrayList(collection.comics), 
                                        baseTag, 
                                        { v ->
                                            val tag = v.tag as? Int ?: return@ComicCollectionView
                                            val comicIndex = tag - baseTag
                                            if (comicIndex >= 0 && comicIndex < collection.comics.size) {
                                                onComicClick(collection.comics[comicIndex].comicId)
                                            }
                                        }, 
                                        { onMoreClick(collection.title) }
                                    )
                                    collectionView.textView_title?.text = collection.title
                                    collectionContainers[index]?.addView(collectionView)
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

private data class HomePreviewState(
    val announcements: List<AnnouncementObject>,
    val collections: List<CollectionObject>
)

private fun homePreviewState(): HomePreviewState {
    val cover = ThumbnailObject(
        "https://storage1.picacomic.com",
        "home-preview.jpg",
        "home-preview.jpg"
    )
    val comics = arrayListOf(
        ComicListObject("comic-1", "(C94)  ホカホカJS温泉 [中国翻訳]", "アカタマ", 316, 26, 1, true, arrayListOf("短篇"), cover),
        ComicListObject("comic-2", "【明日方舟】凛冬の拘束调教（上篇）", "大阿卡纳XIV", 4779, 18, 1, false, arrayListOf("短篇"), cover),
        ComicListObject("comic-3", "嗶咔漢化精选", "翻译组联合", 680, 20, 1, true, arrayListOf("推荐作品"), cover)
    )
    return HomePreviewState(
        announcements = listOf(
            AnnouncementObject("ann-1", "系统维护公告", "今晚 23:00 - 24:00 短暂维护", "2026-04-24T10:00:00.000Z", cover),
            AnnouncementObject("ann-2", "版本更新", "新增 Compose 页面预览", "2026-04-23T08:00:00.000Z", cover),
            AnnouncementObject("ann-3", "活动提醒", "本周热门榜单已刷新", "2026-04-22T12:00:00.000Z", cover)
        ),
        collections = listOf(
            CollectionObject("最新更新", ArrayList(comics)),
            CollectionObject("本周热门", ArrayList(comics.reversed())),
            CollectionObject("猜你喜欢", ArrayList(comics))
        )
    )
}

@Preview(showBackground = true)
@Composable
private fun HomeScreenPreview() {
    HomeScreen(
        onNotification = {},
        onComicClick = {},
        onMoreClick = {}
    )
}
