package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.runtime.remember

import androidx.compose.runtime.SideEffect
import androidx.compose.ui.graphics.toArgb
import com.google.android.material.color.MaterialColors
import com.google.android.material.R as MaterialR

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
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.Text
import androidx.compose.material3.MaterialTheme
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
import coil.imageLoader
import coil.compose.AsyncImage
import coil.request.CachePolicy
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.a_pkg.c
import com.picacomic.fregata.a_pkg.d
import com.picacomic.fregata.activities.ComicViewerActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.resolvePicaDarkTheme
import com.picacomic.fregata.utils.ThemeColorHelper
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.objects.ComicPageObject
import com.picacomic.fregata.utils.b
import com.picacomic.fregata.utils.c as DirectoryHelper
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import java.io.File
import java.util.ArrayList
import kotlinx.coroutines.flow.distinctUntilChanged

private class ReaderScrollRequest(val pageIndex: Int)

class ComicViewerComposeHostView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : FrameLayout(context, attrs), c {
    private val testingListMode = e.w(context)
    private val performanceMode = e.x(context)
    private val pages = mutableStateListOf<ComicPageObject>()
    internal var readerTheme by mutableStateOf(ThemeColorHelper.resolveStoredThemeIndex(context) to e.L(context))

    private var basePageOffset by mutableIntStateOf(0)
    private var scrollTarget by mutableStateOf<ReaderScrollRequest?>(null)
    private var verticalScroll by mutableStateOf(true)
    private var isOfflineReader by mutableStateOf(false)
    private var currentComicId by mutableStateOf<String?>(null)
    private var callback: d? = context as? d
    private var lastLoadedOffset = 0

    init {
        setBackgroundColor(MaterialColors.getColor(this, MaterialR.attr.colorSurface))
        addView(
            ComposeView(context).apply {
                consumeWindowInsets = false
                setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnDetachedFromWindow)
                setContent {
                    val (themeIndex, forceNightMode) = readerTheme
                    PicaComposeTheme(
                        darkTheme = resolvePicaDarkTheme(forceNightMode, themeIndex),
                        themeColorIndex = themeIndex,
                    ) {
                        val surfaceColor = MaterialTheme.colorScheme.surface.toArgb()
                        SideEffect { this@ComicViewerComposeHostView.setBackgroundColor(surfaceColor) }
                        ComicViewerScreen(
                            pages = pages,
                            basePageOffset = basePageOffset,
                            verticalScroll = verticalScroll,
                            testingListMode = testingListMode,
                            performanceMode = performanceMode,
                            offlineMode = isOfflineReader,
                            comicId = currentComicId,
                            scrollTarget = scrollTarget,
                            onScrollTargetConsumed = { request ->
                                if (scrollTarget === request) scrollTarget = null
                            },
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
            scrollTarget = ReaderScrollRequest(0)
        } else if (prepended) {
            pages.addAll(0, arrayList)
            scrollTarget = ReaderScrollRequest(arrayList.size.coerceAtMost(pages.lastIndex.coerceAtLeast(0)))
        } else {
            pages.addAll(arrayList)
        }
        lastLoadedOffset = i
        basePageOffset = (i / ComicViewerActivity.hq) * ComicViewerActivity.hq
        if (z) {
            scrollTarget = ReaderScrollRequest((i - basePageOffset).coerceAtLeast(0))
        }
        prefetch(arrayList)
    }

    override fun b(i: Int, z: Boolean) {
        if (pages.isNotEmpty()) {
            scrollTarget = ReaderScrollRequest(i.coerceIn(pages.indices))
        }
    }

    override fun M(i: Int) {
        f.D(TAG, "Orientation signal = $i")
    }

    override fun B(z: Boolean) {
        verticalScroll = z
    }

    fun release() {
        callback = null
        scrollTarget = null
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

    companion object {
        private const val TAG = "ComicViewerComposeHostView"
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
    scrollTarget: ReaderScrollRequest?,
    onScrollTargetConsumed: (ReaderScrollRequest) -> Unit,
    onPageChanged: (Int) -> Unit,
) {
    val listState = rememberLazyListState()
    val effectiveVerticalScroll = if (testingListMode) true else verticalScroll
    val itemCount = virtualItemCount(pages.size)

    LaunchedEffect(scrollTarget, effectiveVerticalScroll, itemCount) {
        val target = scrollTarget ?: return@LaunchedEffect
        if (pages.isEmpty()) return@LaunchedEffect
        listState.scrollToItem(pageIndexToVirtualIndex(target.pageIndex.coerceIn(pages.indices)))
        onScrollTargetConsumed(target)
    }

    LaunchedEffect(listState, effectiveVerticalScroll, itemCount, scrollTarget) {
        if (scrollTarget != null) return@LaunchedEffect
        snapshotFlow {
            val visiblePages = listState.layoutInfo.visibleItemsInfo.filter {
                it.size > 0 && !isAdvertisementItem(it.index, pages.size)
            }
            val first = visiblePages.firstOrNull() ?: return@snapshotFlow null
            val visiblePage = if (first.index == 0 && listState.canScrollForward) {
                first
            } else {
                visiblePages.last()
            }
            virtualIndexToPageIndex(visiblePage.index).takeIf { it in pages.indices }
        }
            .distinctUntilChanged()
            .collect { page -> if (page != null) onPageChanged(page) }
    }

    ZoomableReaderLayer(
        verticalContent = effectiveVerticalScroll,
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
            val isTabletWidth = maxWidth >= 600.dp
            val verticalPageMaxWidth = if (isTabletWidth) TABLET_VERTICAL_PAGE_MAX_WIDTH else maxWidth
            if (effectiveVerticalScroll) {
                LazyColumn(
                    state = listState,
                    modifier = Modifier.fillMaxSize(),
                    horizontalAlignment = Alignment.CenterHorizontally,
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
                            maxPageWidth = verticalPageMaxWidth,
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
                    verticalAlignment = Alignment.CenterVertically,
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
                            maxPageWidth = maxWidth,
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
            .background(MaterialTheme.colorScheme.surface)
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
    maxPageWidth: androidx.compose.ui.unit.Dp,
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
        maxPageWidth = maxPageWidth,
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
    maxPageWidth: androidx.compose.ui.unit.Dp,
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
            Modifier
                .widthIn(max = maxPageWidth)
                .fillMaxWidth()
        } else {
            Modifier
                .fillMaxHeight()
                .width(maxPageWidth)
        },
        contentAlignment = Alignment.Center,
    ) {
        if (imageSource == null) {
            Column(
                modifier = Modifier.padding(24.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
            ) {
                Text(
                    text = pageNumber.toString(),
                    style = MaterialTheme.typography.displayMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                )
                Text(
                    text = stringResource(R.string.comic_viewer_page_image_unavailable),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        } else {
            var loadFailed by remember(imageSource) { mutableStateOf(false) }
            if (!loadFailed) {
                Text(
                    text = pageNumber.toString(),
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    style = MaterialTheme.typography.displayMedium,
                    modifier = Modifier.align(Alignment.Center).clearAndSetSemantics {},
                )
            }
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
                contentDescription = if (loadFailed) null else stringResource(R.string.comic_viewer_page_label, pageNumber),
                onLoading = { loadFailed = false },
                onSuccess = { loadFailed = false },
                onError = { loadFailed = true },
                contentScale = if (vertical) ContentScale.FillWidth else ContentScale.Fit,
                modifier = if (vertical) Modifier.fillMaxWidth() else Modifier.fillMaxSize(),
            )
            if (loadFailed) {
                Text(
                    text = stringResource(R.string.comic_viewer_page_image_load_failed, pageNumber),
                    modifier = Modifier.align(Alignment.Center)
                        .background(MaterialTheme.colorScheme.surface, MaterialTheme.shapes.medium)
                        .padding(12.dp),
                    color = MaterialTheme.colorScheme.error,
                    style = MaterialTheme.typography.bodyMedium,
                )
            }
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
private val TABLET_VERTICAL_PAGE_MAX_WIDTH = 720.dp
