package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Sort
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.ClearAll
import androidx.compose.material.icons.filled.FilterAlt
import androidx.compose.material.icons.filled.KeyboardDoubleArrowRight
import androidx.compose.material3.AssistChip
import com.picacomic.fregata.compose.components.PicaInfoChip
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import com.picacomic.fregata.compose.components.PicaTag
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.FilledTonalIconButton
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.TextField
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.produceState
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.repeatOnLifecycle
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.Dispatchers
import com.picacomic.fregata.objects.databaseTable.DownloadComicEpisodeObject
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.input.nestedscroll.NestedScrollSource
import androidx.compose.ui.geometry.Offset
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CheckboxDefaults
import androidx.compose.material3.TextButton
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.semantics.Role
import com.picacomic.fregata.compose.components.PicaConfirmDialog
import com.picacomic.fregata.compose.components.PicaSingleChoiceDialog
import com.picacomic.fregata.compose.components.picaSegmentShape
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaComicListCard
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.viewmodels.ComicListViewModel
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.ThumbnailObject

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun ComicListScreen(
    category: String? = null,
    offlineMode: Boolean = false,
    keywords: String? = null,
    tags: String? = null,
    author: String? = null,
    finished: String? = null,
    sorting: String? = null,
    translate: String? = null,
    creatorId: String? = null,
    creatorName: String? = null,
    onBack: () -> Unit,
    onComicClick: (String) -> Unit,
    viewModel: ComicListViewModel? = null,
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val listState = rememberLazyListState()
    val previousPageScroll = remember(listState, screenViewModel) {
        object : NestedScrollConnection {
            override fun onPreScroll(available: Offset, source: NestedScrollSource): Offset {
                if (source == NestedScrollSource.UserInput && available.y > 0f && listState.firstVisibleItemIndex <= 2) {
                    screenViewModel?.loadPreviousPage()
                }
                return Offset.Zero
            }
        }
    }
    var handledJump by rememberSaveable { androidx.compose.runtime.mutableIntStateOf(screenViewModel?.jumpEvent ?: 0) }
    LaunchedEffect(screenViewModel?.jumpEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (handledJump != vm.jumpEvent) {
            handledJump = vm.jumpEvent
            listState.scrollToItem(if (vm.comics.isEmpty()) 0 else 1)
        }
    }
    val scope = rememberCoroutineScope()
    val previewState = if (inPreview) comicListPreviewState(category, keywords, tags, author, translate, creatorName) else null
    val isFavourite = category == "CATEGORY_USER_FAVOURITE"
    val isRecent = category == "CATEGORY_RECENT_VIEW"
    val isDownloading = category == "CATEGORY_DOWNLOADING"
    val isDownloaded = category == "CATEGORY_DOWNLOADED"
    val isOfflineLocalList = isRecent || isDownloading || isDownloaded
    val effectiveCategory = if (offlineMode && !isOfflineLocalList) "CATEGORY_RECENT_VIEW" else category
    val isAdvancedSearch = !keywords.isNullOrBlank()
    val canSort = isFavourite || isAdvancedSearch

    LaunchedEffect(category, keywords, tags, author, finished, sorting, translate, creatorId, creatorName, inPreview) {
        if (!inPreview) {
            screenViewModel?.init(
                category = effectiveCategory,
                keywords = keywords,
                tags = tags,
                author = author,
                finished = finished,
                sorting = sorting,
                translate = translate,
                creatorId = creatorId,
                creatorName = creatorName,
            )
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

    if (!inPreview) {
        val vm = screenViewModel
        RememberListLoadMore(
            state = listState,
            enabled = vm?.comics?.isNotEmpty() == true && !vm.isLoading && vm.hasMore,
        ) {
            vm?.loadData()
        }
    }

    var showSorting by rememberSaveable { mutableStateOf(false) }
    var showCategories by rememberSaveable { mutableStateOf(false) }
    var categoryDraft by rememberSaveable { mutableStateOf(booleanArrayOf()) }
    var confirmClearRecent by rememberSaveable { mutableStateOf(false) }

    PicaComposeTheme {
        val vm = screenViewModel
        if (showSorting && vm != null) {
            PicaSingleChoiceDialog(
                title = stringResource(R.string.sorting_title),
                options = stringArrayResource(
                    if (isFavourite) R.array.sorting_favourite else R.array.sorting_advanced
                ).toList(),
                selectedIndex = if (isFavourite) vm.favouriteSortingIndex else vm.advancedSortingIndex,
                onSelect = { index ->
                    if (isFavourite) vm.setFavouriteSorting(index) else vm.setAdvancedSorting(index)
                },
                onDismiss = { showSorting = false },
            )
        }
        if (showCategories && vm != null) {
            val colors = MaterialTheme.colorScheme
            AlertDialog(
                onDismissRequest = { showCategories = false },
                title = { Text(stringResource(R.string.title_category)) },
                text = {
                    Column(
                        Modifier.verticalScroll(rememberScrollState()),
                        verticalArrangement = Arrangement.spacedBy(2.dp),
                    ) {
                        vm.advancedCategoryTitles.forEachIndexed { index, title ->
                            val checked = categoryDraft.getOrElse(index) { false }
                            Surface(
                                shape = picaSegmentShape(index, vm.advancedCategoryTitles.lastIndex),
                                color = colors.surfaceContainer,
                                contentColor = colors.onSurface,
                            ) {
                                Row(
                                    modifier = Modifier.fillMaxWidth().heightIn(min = 56.dp)
                                        .toggleable(value = checked, role = Role.Checkbox) { selected ->
                                            categoryDraft = BooleanArray(vm.advancedCategoryTitles.size) { item ->
                                                if (item == index) selected else categoryDraft.getOrElse(item) { false }
                                            }
                                        }
                                        .padding(horizontal = 12.dp, vertical = 8.dp),
                                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                                    verticalAlignment = Alignment.Top,
                                ) {
                                    Checkbox(
                                        checked = checked,
                                        onCheckedChange = null,
                                        colors = CheckboxDefaults.colors(
                                            checkedColor = colors.primary,
                                            checkmarkColor = colors.onPrimary,
                                            uncheckedColor = colors.onSurfaceVariant,
                                        ),
                                    )
                                    Text(title, modifier = Modifier.padding(top = 2.dp))
                                }
                            }
                        }
                    }
                },
                shape = MaterialTheme.shapes.extraLarge,
                containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
                tonalElevation = 0.dp,
                confirmButton = {
                    TextButton(onClick = {
                        vm.applyAdvancedCategorySelection(categoryDraft)
                        showCategories = false
                    }) { Text(stringResource(R.string.ok)) }
                },
                dismissButton = {
                    TextButton(onClick = { showCategories = false }) { Text(stringResource(R.string.cancel)) }
                },
            )
        }
        if (confirmClearRecent && vm != null) {
            PicaConfirmDialog(
                title = stringResource(R.string.alert_clear_recent_title),
                body = stringResource(R.string.alert_clear_recent_message),
                onConfirm = { vm.clearRecentView() },
                onDismiss = { confirmClearRecent = false },
            )
        }
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = screenViewModel?.title ?: previewState?.title ?: stringResource(R.string.title_search),
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
                    actions = {
                        if (canSort) {
                            IconButton(
                                onClick = { showSorting = true },
                            ) {
                                Icon(Icons.AutoMirrored.Filled.Sort, contentDescription = stringResource(R.string.sorting_title))
                            }
                        }
                        if (isAdvancedSearch && screenViewModel?.advancedCategoryTitles?.isNotEmpty() == true) {
                            IconButton(
                                onClick = {
                                    categoryDraft = screenViewModel.advancedCategorySelections.toBooleanArray()
                                    showCategories = true
                                },
                            ) {
                                Icon(Icons.Filled.FilterAlt, contentDescription = stringResource(R.string.title_category))
                            }
                        }
                        if (isRecent) {
                            IconButton(onClick = { confirmClearRecent = true }) {
                                Icon(Icons.Filled.ClearAll, contentDescription = stringResource(R.string.action_clear_recent))
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            bottomBar = {
                val pages = screenViewModel?.totalPage ?: previewState?.totalPage ?: 1
                if (pages > 1) {
                    val index = (listState.firstVisibleItemIndex - 1).coerceAtLeast(0)
                    val current = screenViewModel?.let { vm -> vm.comics.getOrNull(index)?.let(vm::comicPage) ?: vm.firstLoadedPage } ?: 1
                    PagePicker(current, pages, screenViewModel?.isLoading != true) { page ->
                        screenViewModel?.jumpToPage(page)
                    }
                }
            },
            containerColor = MaterialTheme.colorScheme.surface,
        ) { innerPadding ->
            val comics = if (inPreview) previewState?.comics.orEmpty() else screenViewModel?.comics.orEmpty()
            val owner = LocalLifecycleOwner.current
            val lastViewed by produceState(emptyMap<String, Long>(), screenViewModel, comics, owner) {
                val vm = screenViewModel ?: return@produceState
                owner.lifecycle.repeatOnLifecycle(Lifecycle.State.RESUMED) {
                    value = vm.lastViewedTimes(comics)
                }
            }
            LazyColumn(
                state = listState,
                modifier = Modifier
                    .nestedScroll(previousPageScroll)
                    .fillMaxSize()
                    .padding(innerPadding)
                    .consumeWindowInsets(innerPadding)
                    .imePadding(),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(2.dp),
            ) {
                item(key = "filters") {
                    ComicListControlPanel(
                        filterStates = screenViewModel?.filterStates.orEmpty(),
                        customBlockedWords = screenViewModel?.customBlockedWords.orEmpty(),
                        onToggleFilter = { screenViewModel?.toggleFilter(it) },
                        onAddCustomBlockedWord = { screenViewModel?.addCustomBlockedWord(it) },
                        onRemoveCustomBlockedWord = { screenViewModel?.removeCustomBlockedWord(it) },
                    )
                    if (screenViewModel?.selectedAdvancedCategories?.isNotEmpty() == true) {
                        FlowRow(
                            modifier = Modifier.padding(top = 6.dp),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp),
                        ) {
                            screenViewModel.selectedAdvancedCategories.forEach { category ->
                                PicaInfoChip(text = category)
                            }
                        }
                    }
                }

                when {
                    !inPreview && screenViewModel?.isLoading == true && comics.isEmpty() -> {
                        item(key = "loading") { PicaLoadingIndicator() }
                    }

                    comics.isEmpty() -> {
                        item(key = "empty") { PicaEmptyState(message = if (isDownloaded) "暂无下载" else "暂无漫画") }
                    }

                    else -> {
                        itemsIndexed(
                            items = comics,
                            key = { index, item -> screenViewModel?.comicKey(item, index) ?: stableLazyKey("comic", index, item.comicId, item.title) },
                        ) { index, item ->
                            val top = if (index == 0) 24.dp else 4.dp
                            val bottom = if (index == comics.lastIndex) 24.dp else 4.dp
                            PicaComicListCard(
                                lastViewedAt = lastViewed[item.comicId],
                                shape = RoundedCornerShape(top, top, bottom, bottom),
                                quickAction = if (isDownloaded || !isOfflineLocalList && !offlineMode) ({
                                    FilledTonalIconButton(enabled = !item.comicId.isNullOrBlank(), onClick = {
                                        val id = item.comicId ?: return@FilledTonalIconButton
                                        scope.launch {
                                            if (!isDownloaded) {
                                                val saved = withContext(Dispatchers.IO) { com.picacomic.fregata.utils.b.ax(id) }
                                                openComicViewer(
                                                    context, id, item.title, saved?.episodeOrder ?: 1, saved?.page ?: 1,
                                                    maxOf(saved?.episodeTotal ?: 0, item.episodeCount, 1), saved != null, false,
                                                )
                                                return@launch
                                            }
                                            val (orders, record) = withContext(Dispatchers.IO) {
                                                val downloaded = DownloadComicEpisodeObject.find(DownloadComicEpisodeObject::class.java, "comic_id = ?", id)
                                                    .orEmpty().filterIsInstance<DownloadComicEpisodeObject>()
                                                    .filter { it.status == 2 || it.status == 4 }.map { it.episodeOrder }.sorted()
                                                downloaded to com.picacomic.fregata.utils.b.ax(id)
                                            }
                                            val saved = record?.takeIf { it.episodeOrder in orders }
                                            val order = saved?.episodeOrder ?: orders.firstOrNull()
                                            if (order == null) onComicClick(id) else openComicViewer(context, id, item.title, order,
                                                saved?.page ?: 1, maxOf(item.episodeCount, orders.last()), saved != null, true)
                                        }
                                    }) { Icon(Icons.Filled.PlayArrow, if (isDownloaded) "离线阅读" else "阅读") }
                                }) else null,
                                title = item.title.orEmpty(),
                                subtitle = if (isDownloading) {
                                    screenViewModel?.downloadingProgressText?.get(item.comicId.orEmpty()).orEmpty()
                                        .ifBlank { item.author.orEmpty() }
                                } else {
                                    item.author.orEmpty()
                                },
                                thumbnail = item.thumb,
                                likes = item.likesCount,
                                pages = item.pagesCount,
                                episodes = item.episodeCount,
                                categories = item.categories.orEmpty(),
                                onClick = {
                                    val comicId = item.comicId
                                    if (!comicId.isNullOrBlank()) onComicClick(comicId)
                                },
                            )
                        }
                    }
                }

                if (!inPreview && screenViewModel?.isLoading == true && comics.isNotEmpty()) {
                    item(key = "footer") { ListLoadingFooter() }
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
@Composable
private fun ComicListControlPanel(
    filterStates: List<Boolean>,
    customBlockedWords: List<String>,
    onToggleFilter: (Int) -> Unit,
    onAddCustomBlockedWord: (String) -> Unit,
    onRemoveCustomBlockedWord: (String) -> Unit,
) {
    var customWordInput by rememberSaveable { mutableStateOf("") }
    val filterLabels = listOf(
        stringResource(R.string.comic_list_filter_button_forbidden),
        stringResource(R.string.comic_list_filter_button_non_chinese),
        stringResource(R.string.comic_list_filter_button_bl),
        stringResource(R.string.comic_list_filter_button_heavy),
        stringResource(R.string.comic_list_filter_button_pure_love),
        stringResource(R.string.comic_list_filter_button_fake_girl),
        stringResource(R.string.comic_list_filter_button_futari),
        stringResource(R.string.comic_list_filter_button_webtoon),
    )

    var editing by rememberSaveable { mutableStateOf(false) }
    Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(6.dp), verticalAlignment = Alignment.CenterVertically) {
        filterLabels.forEachIndexed { index, label ->
            PicaTag(label, { onToggleFilter(index) }, selected = filterStates.getOrNull(index) == true)
        }
        FilledTonalButton(onClick = { editing = true }) { Text("+ 屏蔽词") }
    }
    if (editing) ModalBottomSheet(onDismissRequest = { editing = false }) {
        Column(Modifier.fillMaxWidth().verticalScroll(rememberScrollState()).navigationBarsPadding().imePadding().padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Text("自定义屏蔽词", style = MaterialTheme.typography.titleLarge)
            Row(verticalAlignment = Alignment.CenterVertically) {
                TextField(customWordInput, { customWordInput = it }, Modifier.weight(1f), singleLine = true,
                    shape = RoundedCornerShape(16.dp), placeholder = { Text("可用逗号分隔多个词") })
                IconButton({
                    onAddCustomBlockedWord(customWordInput)
                    customWordInput = ""
                }, enabled = customWordInput.isNotBlank()) { Icon(Icons.Filled.Add, "添加屏蔽词") }
            }
            FlowRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                customBlockedWords.forEach { word ->
                    PicaTag(word, { onRemoveCustomBlockedWord(word) }, selected = true, selectedIcon = Icons.Filled.Close)
                }
            }
        }
    }
}

@Composable
private fun PagePicker(current: Int, total: Int, enabled: Boolean, onJump: (Int) -> Unit) {
    var open by rememberSaveable { mutableStateOf(false) }
    var text by rememberSaveable(current) { mutableStateOf(current.toString()) }
    Box(Modifier.fillMaxWidth().navigationBarsPadding(), contentAlignment = Alignment.Center) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            TextButton(enabled = enabled && current > 1, onClick = { onJump(current - 1) }) { Text("上一页") }
            FilledTonalButton(enabled = enabled, onClick = { text = current.toString(); open = true }) { Text("$current / $total") }
            TextButton(enabled = enabled && current < total, onClick = { onJump(current + 1) }) { Text("下一页") }
        }
    }
    if (open) {
        val page = text.toIntOrNull()?.takeIf { it in 1..total }
        AlertDialog(onDismissRequest = { open = false }, title = { Text(stringResource(R.string.comment_jump_page_title)) },
            text = { TextField(text, { text = it.filter(Char::isDigit).take(8) }, singleLine = true,
                keyboardOptions = KeyboardOptions(keyboardType = androidx.compose.ui.text.input.KeyboardType.Number), suffix = { Text("/ $total") }) },
            confirmButton = { FilledTonalButton(onClick = { page?.let(onJump); open = false }, enabled = enabled && page != null) { Text(stringResource(R.string.ok)) } },
            dismissButton = { TextButton({ open = false }) { Text(stringResource(R.string.cancel)) } })
    }
}

private data class ComicListPreviewState(
    val title: String,
    val totalPage: Int,
    val comics: List<ComicListObject>,
)

private fun comicListPreviewState(
    category: String?,
    keywords: String?,
    tags: String?,
    author: String?,
    translate: String?,
    creatorName: String?,
): ComicListPreviewState {
    val cover = ThumbnailObject(
        "https://storage1.picacomic.com",
        "tobeimg/IrEYXQ_4J8Iq7JRpV9kMOYEqfhk15lxR7i9LmEbeU6U/fill/300/400/sm/0/aHR0cHM6Ly9zdG9yYWdlMS5waWNhY29taWMuY29tL3N0YXRpYy8xZDFkYjBhMC04NzY0LTQ5ZWEtYmUwYS0zMTRiZWUyYzQ1ZDcuanBn.jpg",
        "01.jpg"
    )
    val comics = listOf(
        ComicListObject("5d56e4370bcf57397e60576b", "(C94) ホカホカJS温泉 [中国翻訳]", "アカタマ (桜吹雪ねる)", 316, 26, 1, true, arrayListOf("短篇", "妹妹系"), cover),
        ComicListObject("5d09f7701edbf52f24b2819d", "【明日方舟】凛冬の拘束调教（上篇）", "大阿卡纳XIV", 4779, 18, 1, false, arrayListOf("短篇"), cover),
        ComicListObject("comic-3", "C96 偶像大师 同人本", "C.R's NEST", 1204, 36, 3, false, arrayListOf("長篇", "偶像"), cover),
    )
    val title = when {
        !keywords.isNullOrBlank() -> "Search $keywords"
        !tags.isNullOrBlank() -> "Search $tags"
        !author.isNullOrBlank() -> "Search $author"
        !translate.isNullOrBlank() -> "Search $translate"
        !creatorName.isNullOrBlank() -> "Search $creatorName"
        !category.isNullOrBlank() -> category
        else -> "Search"
    }
    return ComicListPreviewState(title = title, totalPage = 12, comics = comics)
}

@Preview(showBackground = true)
@Composable
private fun ComicListScreenPreview() {
    ComicListScreen(
        category = "Latest",
        onBack = {},
        onComicClick = {},
    )
}
