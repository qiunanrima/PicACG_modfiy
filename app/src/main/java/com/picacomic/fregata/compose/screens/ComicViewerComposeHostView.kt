package com.picacomic.fregata.compose.screens

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.gestures.calculateCentroid
import androidx.compose.foundation.gestures.calculatePan
import androidx.compose.foundation.gestures.calculateZoom
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.rememberLazyListState
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
import androidx.compose.ui.graphics.TransformOrigin
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.imageLoader
import coil.compose.AsyncImage
import coil.request.CachePolicy
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.a_pkg.c
import com.picacomic.fregata.a_pkg.d
import com.picacomic.fregata.activities.ComicViewerActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.objects.ComicPageObject
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.c as DirectoryHelper
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import java.io.File
import java.util.ArrayList
import kotlinx.coroutines.flow.distinctUntilChanged

class ComicViewerComposeHostView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : FrameLayout(context, attrs), c {
    private val testingListMode = e.w(context)
    private val performanceMode = e.x(context)
    private val pages = mutableStateListOf<ComicPageObject>()
    private var basePageOffset by mutableIntStateOf(0)
    private var scrollTarget by mutableStateOf<Int?>(null)
    private var verticalScroll by mutableStateOf(true)
    private var isOfflineReader by mutableStateOf(false)
    private var currentComicId by mutableStateOf<String?>(null)
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
                            testingListMode = testingListMode,
                            performanceMode = performanceMode,
                            offlineMode = isOfflineReader,
                            comicId = currentComicId,
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

    fun setOfflineMode(value: Boolean) {
        isOfflineReader = value
    }

    fun setComicId(value: String?) {
        currentComicId = value
    }

    override fun a(arrayList: ArrayList<ComicPageObject>, i: Int, z: Boolean, z2: Boolean) {
        f.D(TAG, "Load pages: offset=$i restore=$z reset=$z2 size=${arrayList.size}")
        val prepended = lastLoadedOffset != i && !z && !z2
        if (z2) {
            pages.clear()
            pages.addAll(arrayList)
            scrollTarget = 0
        } else if (prepended) {
            pages.addAll(0, arrayList)
            scrollTarget = arrayList.size.coerceAtMost(pages.lastIndex.coerceAtLeast(0))
        } else {
            pages.addAll(arrayList)
        }
        lastLoadedOffset = i
        basePageOffset = (i / ComicViewerActivity.hq) * ComicViewerActivity.hq
        if (z) {
            scrollTarget = (i - basePageOffset).coerceAtLeast(0)
        }
        prefetch(arrayList)
    }

    override fun b(i: Int, z: Boolean) {
        scrollTarget = i.coerceIn(0, pages.lastIndex.coerceAtLeast(0))
    }

    override fun M(i: Int) {
        f.D(TAG, "Orientation signal = $i")
    }

    override fun B(z: Boolean) {
        verticalScroll = z
    }

    fun release() {
        callback = null
        pages.clear()
    }

    private fun prefetch(arrayList: List<ComicPageObject>) {
        val prefetchLimit = if (performanceMode) PERFORMANCE_PREFETCH_PAGE_LIMIT else PREFETCH_PAGE_LIMIT
        arrayList.take(prefetchLimit).forEach { page ->
            val imageSource = resolveComicPageImageSource(currentComicId, page)
            if (imageSource != null) {
                context.imageLoader.enqueue(
                    buildComicPageImageRequest(
                        context = context,
                        page = page,
                        imageSource = imageSource,
                        offlineMode = isOfflineReader,
                    ).build()
                )
            }
        }
    }

    private fun virtualItemCount(): Int {
        return pages.size + (pages.size / AD_INTERVAL) + 1
    }

    companion object {
        private const val TAG = "ComicViewerComposeHostView"
        private const val AD_INTERVAL = 20
        private const val PREFETCH_PAGE_LIMIT = 12
        private const val PERFORMANCE_PREFETCH_PAGE_LIMIT = 6
    }
}

@Composable
private fun ComicViewerScreen(
    pages: List<ComicPageObject>,
    basePageOffset: Int,
    verticalScroll: Boolean,
    testingListMode: Boolean,
    performanceMode: Boolean,
    offlineMode: Boolean,
    comicId: String?,
    scrollTarget: Int?,
    onScrollTargetConsumed: () -> Unit,
    onPageChanged: (Int) -> Unit,
) {
    val listState = rememberLazyListState()
    val effectiveVerticalScroll = if (testingListMode) true else verticalScroll
    val itemCount = virtualItemCount(pages.size)

    LaunchedEffect(effectiveVerticalScroll) {
        onScrollTargetConsumed()
    }

    LaunchedEffect(scrollTarget, itemCount) {
        val target = scrollTarget ?: return@LaunchedEffect
        if (itemCount > 0) {
            listState.scrollToItem(
                pageIndexToVirtualIndex(target).coerceIn(0, itemCount.lastIndexCoerceAtLeastZero())
            )
        }
        onScrollTargetConsumed()
    }

    LaunchedEffect(listState, effectiveVerticalScroll, itemCount) {
        snapshotFlow {
            val visibleItems = listState.layoutInfo.visibleItemsInfo.filter { it.size > 0 }
            val firstVisiblePageIndex = visibleItems
                .firstOrNull { !isAdvertisementItem(it.index, pages.size) }
                ?.index
                ?.let(::virtualIndexToPageIndex)
            val lastVisibleIndex = visibleItems
                .lastOrNull()
                ?.index
                ?: listState.firstVisibleItemIndex
            if (firstVisiblePageIndex == 0) {
                pageIndexToVirtualIndex(0)
            } else {
                lastVisibleIndex
            }
        }
            .distinctUntilChanged()
            .collect { virtualIndex ->
                onPageChanged(
                    virtualIndexToPageIndex(virtualIndex).coerceIn(0, pages.lastIndex.coerceAtLeast(0))
                )
            }
    }

    ZoomableReaderLayer(
        verticalContent = effectiveVerticalScroll,
    ) {
        if (effectiveVerticalScroll) {
            LazyColumn(
                state = listState,
                modifier = Modifier.fillMaxSize(),
            ) {
                items(
                    count = itemCount,
                    key = { index -> itemKey(pages, index) },
                ) { index ->
                    ComicViewerItem(
                        pages = pages,
                        virtualIndex = index,
                        basePageOffset = basePageOffset,
                        vertical = true,
                        testingListMode = testingListMode,
                        performanceMode = performanceMode,
                        offlineMode = offlineMode,
                        comicId = comicId,
                    )
                }
            }
        } else {
            LazyRow(
                state = listState,
                modifier = Modifier.fillMaxSize(),
            ) {
                items(
                    count = itemCount,
                    key = { index -> itemKey(pages, index) },
                ) { index ->
                    ComicViewerItem(
                        pages = pages,
                        virtualIndex = index,
                        basePageOffset = basePageOffset,
                        vertical = false,
                        testingListMode = testingListMode,
                        performanceMode = performanceMode,
                        offlineMode = offlineMode,
                        comicId = comicId,
                    )
                }
            }
        }
    }
}

@Composable
private fun ZoomableReaderLayer(
    verticalContent: Boolean,
    content: @Composable () -> Unit,
) {
    var scale by androidx.compose.runtime.remember { mutableStateOf(1f) }
    var offsetX by androidx.compose.runtime.remember { mutableStateOf(0f) }
    var offsetY by androidx.compose.runtime.remember { mutableStateOf(0f) }
    var size by androidx.compose.runtime.remember { mutableStateOf(IntSize.Zero) }

    LaunchedEffect(verticalContent) {
        scale = 1f
        offsetX = 0f
        offsetY = 0f
    }

    fun clampOffsets() {
        if (scale <= 1f) {
            offsetX = 0f
            offsetY = 0f
            return
        }
        val minX = -size.width * (scale - 1f)
        val minY = -size.height * (scale - 1f)
        offsetX = offsetX.coerceIn(minX, 0f)
        offsetY = offsetY.coerceIn(minY, 0f)
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
            .onSizeChanged {
                size = it
                clampOffsets()
            }
            .graphicsLayer {
                transformOrigin = TransformOrigin(0f, 0f)
                scaleX = scale
                scaleY = scale
                translationX = offsetX
                translationY = offsetY
            }
            .pointerInput(verticalContent) {
                awaitEachGesture {
                    awaitFirstDown(requireUnconsumed = false)
                    var hasPressedPointers: Boolean
                    do {
                        val event = awaitPointerEvent(PointerEventPass.Initial)
                        val pressedPointers = event.changes.count { it.pressed }
                        hasPressedPointers = pressedPointers > 0
                        val shouldHandle = pressedPointers > 1 || scale > 1f
                        if (shouldHandle) {
                            val oldScale = scale
                            val zoomChange = if (pressedPointers > 1) event.calculateZoom() else 1f
                            val newScale = (oldScale * zoomChange).coerceIn(1f, 3f)
                            val appliedZoom = if (oldScale == 0f) 1f else newScale / oldScale
                            val centroid = event.calculateCentroid(useCurrent = false)
                            val pan = event.calculatePan()
                            if (pressedPointers > 1) {
                                scale = newScale
                                offsetX = (offsetX + pan.x) * appliedZoom +
                                    centroid.x * (1f - appliedZoom)
                                offsetY = (offsetY + pan.y) * appliedZoom +
                                    centroid.y * (1f - appliedZoom)
                            } else {
                                offsetX += pan.x
                                offsetY += pan.y
                            }
                            clampOffsets()
                            event.changes.forEach { it.consume() }
                        }
                    } while (hasPressedPointers)
                }
            },
    ) {
        content()
    }
}

@Composable
private fun ComicViewerItem(
    pages: List<ComicPageObject>,
    virtualIndex: Int,
    basePageOffset: Int,
    vertical: Boolean,
    testingListMode: Boolean,
    performanceMode: Boolean,
    offlineMode: Boolean,
    comicId: String?,
) {
    if (isAdvertisementItem(virtualIndex, pages.size)) {
        Spacer(modifier = Modifier.size(0.dp))
        return
    }

    val pageIndex = g.ac(virtualIndex)
    val page = pages.getOrNull(pageIndex) ?: return
    ComicViewerPage(
        page = page,
        pageNumber = basePageOffset + pageIndex + 1,
        vertical = vertical,
        testingListMode = testingListMode,
        performanceMode = performanceMode,
        offlineMode = offlineMode,
        comicId = comicId,
    )
}

@Composable
private fun ComicViewerPage(
    page: ComicPageObject,
    pageNumber: Int,
    vertical: Boolean,
    testingListMode: Boolean,
    performanceMode: Boolean,
    offlineMode: Boolean,
    comicId: String?,
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val imageSource = resolveComicPageImageSource(comicId, page)
    val placeholderRes = if (testingListMode || performanceMode) {
        R.drawable.placeholder_transparent_low
    } else {
        R.drawable.placeholder_transparent
    }
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
        if (imageSource == null) {
            Text(
                text = page.comicPageId.orEmpty(),
                color = Color.White,
                fontSize = 60.sp,
                modifier = Modifier.padding(24.dp),
            )
        } else {
            Text(
                text = pageNumber.toString(),
                color = Color.White.copy(alpha = 0.48f),
                fontSize = 60.sp,
                modifier = Modifier.align(Alignment.Center),
            )
            AsyncImage(
                model = buildComicPageImageRequest(
                    context = context,
                    page = page,
                    imageSource = imageSource,
                    offlineMode = offlineMode,
                )
                    .placeholder(placeholderRes)
                    .error(placeholderRes)
                    .fallback(placeholderRes)
                    .build(),
                contentDescription = pageNumber.toString(),
                contentScale = if (vertical) ContentScale.FillWidth else ContentScale.Fit,
                modifier = if (vertical) Modifier.fillMaxWidth() else Modifier.fillMaxSize(),
            )
        }
    }
}

private sealed class ComicPageImageSource {
    data class LocalFile(val file: File) : ComicPageImageSource()
    data class RemoteUrl(val url: String) : ComicPageImageSource()
}

private fun resolveComicPageImageSource(comicId: String?, page: ComicPageObject): ComicPageImageSource? {
    val media = page.media ?: return null
    val downloaded = b.az(comicId, page.comicPageId)
    if (downloaded != null) {
        val storageFolder = downloaded.storageFolder?.takeIf { it.isNotBlank() } ?: DirectoryHelper.ec()
        val file = File(storageFolder, downloaded.episodeId + "/" + downloaded.mediaPath)
        if (file.exists() && file.canRead() && file.length() > 0L) {
            return ComicPageImageSource.LocalFile(file)
        }
    }
    return g.b(media)?.takeIf { it.isNotBlank() }?.let { ComicPageImageSource.RemoteUrl(it) }
}

private fun buildComicPageImageRequest(
    context: Context,
    page: ComicPageObject,
    imageSource: ComicPageImageSource,
    offlineMode: Boolean,
    stableCacheKey: Boolean = true,
): ImageRequest.Builder {
    val isLocalFile = imageSource is ComicPageImageSource.LocalFile
    val requestData = when (imageSource) {
        is ComicPageImageSource.LocalFile -> imageSource.file
        is ComicPageImageSource.RemoteUrl -> imageSource.url
    }
    val builder = ImageRequest.Builder(context)
        .data(requestData)
        .allowHardware(false)
        .skipNetworkIfDiskCacheExists(!isLocalFile)
        .applyComicCachePolicy(offlineMode, isLocalFile)
    if (stableCacheKey && !isLocalFile) {
        val cacheKey = comicPageCacheKey(page, requestData.toString())
        builder.memoryCacheKey(cacheKey)
        builder.diskCacheKey(cacheKey)
    }
    return builder
}

private fun comicPageCacheKey(page: ComicPageObject, imageUrl: String): String {
    val mediaPath = page.media?.path
    return "comic_page:" + when {
        !mediaPath.isNullOrBlank() -> mediaPath
        !page.comicPageId.isNullOrBlank() -> page.comicPageId
        else -> imageUrl
    }
}

private fun ImageRequest.Builder.applyComicCachePolicy(
    offlineMode: Boolean,
    localFile: Boolean
): ImageRequest.Builder {
    memoryCachePolicy(CachePolicy.ENABLED)
    if (localFile) {
        diskCachePolicy(CachePolicy.DISABLED)
        networkCachePolicy(CachePolicy.DISABLED)
    } else if (offlineMode) {
        diskCachePolicy(CachePolicy.READ_ONLY)
        networkCachePolicy(CachePolicy.DISABLED)
    } else {
        diskCachePolicy(CachePolicy.ENABLED)
        networkCachePolicy(CachePolicy.ENABLED)
    }
    return this
}

private fun virtualItemCount(pageCount: Int): Int {
    return pageCount + (pageCount / AD_INTERVAL) + 1
}

private fun isAdvertisementItem(index: Int, pageCount: Int): Boolean {
    val adCount = (pageCount / AD_INTERVAL) + 1
    return (index != 0 && (index + 1) % (AD_INTERVAL + 1) == 0) || index == pageCount + adCount - 1
}

private fun itemKey(pages: List<ComicPageObject>, virtualIndex: Int): String {
    if (isAdvertisementItem(virtualIndex, pages.size)) {
        return "ad_$virtualIndex"
    }
    val pageIndex = virtualIndexToPageIndex(virtualIndex)
    return stableLazyKey("page", virtualIndex, pages.getOrNull(pageIndex)?.comicPageId)
}

private fun pageIndexToVirtualIndex(pageIndex: Int): Int {
    return pageIndex + (pageIndex / AD_INTERVAL)
}

private fun virtualIndexToPageIndex(virtualIndex: Int): Int {
    return virtualIndex - ((virtualIndex + 1) / (AD_INTERVAL + 1))
}

private const val AD_INTERVAL = 20

private fun Int.lastIndexCoerceAtLeastZero(): Int {
    return (this - 1).coerceAtLeast(0)
}
