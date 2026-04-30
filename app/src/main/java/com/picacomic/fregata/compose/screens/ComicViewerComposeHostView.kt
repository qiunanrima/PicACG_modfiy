package com.picacomic.fregata.compose.screens

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.a_pkg.c
import com.picacomic.fregata.a_pkg.d
import com.picacomic.fregata.activities.ComicViewerActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.objects.ComicPageObject
import com.picacomic.fregata.objects.databaseTable.DownloadComicPageObject
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.g
import java.io.File
import java.util.ArrayList

class ComicViewerComposeHostView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : FrameLayout(context, attrs), c {
    private val pages = mutableStateListOf<ComicPageObject>()
    private var basePageOffset by mutableIntStateOf(0)
    private var scrollTarget by mutableStateOf<Int?>(null)
    private var verticalScroll by mutableStateOf(true)
    private var callback: d? = context as? d
    private var lastLoadedOffset = 0

    init {
        setBackgroundColor(android.graphics.Color.BLACK)
        addView(
            ComposeView(context).apply {
                setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnDetachedFromWindow)
                setContent {
                    PicaComposeTheme {
                        ComicViewerScreen(
                            pages = pages,
                            basePageOffset = basePageOffset,
                            verticalScroll = verticalScroll,
                            scrollTarget = scrollTarget,
                            onScrollTargetConsumed = { scrollTarget = null },
                            onPageChanged = { page -> callback?.r(page) },
                        )
                    }
                }
            },
            LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT),
        )
    }

    override fun a(arrayList: ArrayList<ComicPageObject>, i: Int, z: Boolean, z2: Boolean) {
        val prepended = lastLoadedOffset != i && !z && !z2
        if (z2) {
            pages.clear()
            pages.addAll(arrayList)
            scrollTarget = 0
        } else if (prepended) {
            pages.addAll(0, arrayList)
            scrollTarget = ComicViewerActivity.hq.coerceAtMost(pages.lastIndex.coerceAtLeast(0))
        } else {
            pages.addAll(arrayList)
        }
        lastLoadedOffset = i
        basePageOffset = (i / ComicViewerActivity.hq) * ComicViewerActivity.hq
        if (z) {
            scrollTarget = (i - basePageOffset).coerceIn(0, pages.lastIndex.coerceAtLeast(0))
        }
    }

    override fun b(i: Int, z: Boolean) {
        scrollTarget = i.coerceIn(0, pages.lastIndex.coerceAtLeast(0))
    }

    override fun M(i: Int) {
        // Orientation is owned by ComicViewerActivity. The Compose reader only needs
        // the scroll-axis signal from B(), which is how the old fragments behaved.
    }

    override fun B(z: Boolean) {
        verticalScroll = z
    }
}

@Composable
private fun ComicViewerScreen(
    pages: List<ComicPageObject>,
    basePageOffset: Int,
    verticalScroll: Boolean,
    scrollTarget: Int?,
    onScrollTargetConsumed: () -> Unit,
    onPageChanged: (Int) -> Unit,
) {
    val listState = rememberLazyListState()

    LaunchedEffect(scrollTarget, pages.size) {
        val target = scrollTarget ?: return@LaunchedEffect
        if (pages.isNotEmpty()) {
            listState.scrollToItem(target.coerceIn(0, pages.lastIndex))
        }
        onScrollTargetConsumed()
    }

    LaunchedEffect(listState) {
        snapshotFlow { listState.firstVisibleItemIndex }
            .collect { onPageChanged(it) }
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black),
    ) {
        if (verticalScroll) {
            LazyColumn(
                state = listState,
                modifier = Modifier.fillMaxSize(),
                verticalArrangement = Arrangement.spacedBy(2.dp),
            ) {
                items(pages.size, key = { index -> pages[index].comicPageId ?: "page_$index" }) { index ->
                    ComicViewerPage(
                        page = pages[index],
                        pageNumber = basePageOffset + index + 1,
                        vertical = true,
                    )
                }
            }
        } else {
            LazyRow(
                state = listState,
                modifier = Modifier.fillMaxSize(),
                horizontalArrangement = Arrangement.spacedBy(2.dp),
            ) {
                items(pages.size, key = { index -> pages[index].comicPageId ?: "page_$index" }) { index ->
                    ComicViewerPage(
                        page = pages[index],
                        pageNumber = basePageOffset + index + 1,
                        vertical = false,
                    )
                }
            }
        }
    }
}

@Composable
private fun ComicViewerPage(
    page: ComicPageObject,
    pageNumber: Int,
    vertical: Boolean,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val imageUrl = resolveComicPageImage(page)
    Box(
        modifier = if (vertical) {
            Modifier.fillMaxWidth()
        } else {
            Modifier
                .fillMaxHeight()
                .fillMaxWidth()
        },
        contentAlignment = Alignment.Center,
    ) {
        if (imageUrl.isNullOrBlank()) {
            Text(
                text = page.comicPageId.orEmpty(),
                color = Color.White,
                style = MaterialTheme.typography.bodyMedium,
                modifier = Modifier.padding(24.dp),
            )
        } else {
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(imageUrl)
                    .placeholder(R.drawable.placeholder_transparent)
                    .error(R.drawable.placeholder_transparent)
                    .fallback(R.drawable.placeholder_transparent)
                    .allowHardware(false)
                    .build(),
                contentDescription = pageNumber.toString(),
                contentScale = if (vertical) ContentScale.FillWidth else ContentScale.Fit,
                modifier = if (vertical) Modifier.fillMaxWidth() else Modifier.fillMaxSize(),
            )
        }
        Text(
            text = pageNumber.toString(),
            color = Color.White.copy(alpha = 0.75f),
            style = MaterialTheme.typography.labelSmall,
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .background(Color.Black.copy(alpha = 0.42f))
                .padding(horizontal = 8.dp, vertical = 3.dp),
        )
    }
}

private fun resolveComicPageImage(page: ComicPageObject): String? {
    val media = page.media ?: return null
    val downloaded = b.az(page.comicPageId)
    if (downloaded != null) {
        val file = File(downloaded.storageFolder, downloaded.episodeId + "/" + downloaded.mediaPath)
        if (file.exists() && file.canRead() && file.length() > 0L) {
            return file.toURI().toString()
        }
    }
    return g.b(media)
}
