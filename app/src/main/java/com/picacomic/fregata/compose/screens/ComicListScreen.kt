package com.picacomic.fregata.compose.screens

import android.content.DialogInterface
import android.widget.Toast
import androidx.compose.foundation.horizontalScroll
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
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Sort
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.ClearAll
import androidx.compose.material.icons.filled.FilterAlt
import androidx.compose.material.icons.filled.KeyboardDoubleArrowRight
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Scaffold
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
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
import com.picacomic.fregata.utils.views.AlertDialogCenter

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun ComicListScreen(
    category: String? = null,
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
    val previewState = if (inPreview) comicListPreviewState(category, keywords, tags, author, translate, creatorName) else null
    val isFavourite = category == "CATEGORY_USER_FAVOURITE"
    val isRecent = category == "CATEGORY_RECENT_VIEW"
    val isAdvancedSearch = !keywords.isNullOrBlank()
    val canSort = isFavourite || isAdvancedSearch
    var pageText by rememberSaveable(category, keywords, tags, author, translate, creatorId) {
        mutableStateOf("1")
    }

    LaunchedEffect(category, keywords, tags, author, finished, sorting, translate, creatorId, creatorName, inPreview) {
        if (!inPreview) {
            screenViewModel?.init(
                category = category,
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

    LaunchedEffect(screenViewModel?.pageJumpBase) {
        if (!inPreview) {
            pageText = (screenViewModel?.pageJumpBase ?: 1).toString()
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

    PicaComposeTheme {
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
                                onClick = {
                                    val vm = screenViewModel ?: return@IconButton
                                    if (isFavourite) {
                                        AlertDialogCenter.sortingFavouriteOptions(
                                            context,
                                            vm.favouriteSortingIndex,
                                        ) { dialog: DialogInterface, which: Int ->
                                            vm.setFavouriteSorting(which)
                                            dialog.dismiss()
                                        }
                                    } else {
                                        AlertDialogCenter.sortingAdvancedOptions(
                                            context,
                                            vm.advancedSortingIndex,
                                        ) { dialog: DialogInterface, which: Int ->
                                            vm.setAdvancedSorting(which)
                                            dialog.dismiss()
                                        }
                                    }
                                },
                            ) {
                                Icon(Icons.AutoMirrored.Filled.Sort, contentDescription = stringResource(R.string.sorting_title))
                            }
                        }
                        if (isAdvancedSearch && screenViewModel?.advancedCategoryTitles?.isNotEmpty() == true) {
                            IconButton(
                                onClick = {
                                    val vm = screenViewModel
                                    AlertDialogCenter.sortingAdvancedCategoriesOptions(
                                        context,
                                        vm.advancedCategoryTitles.toTypedArray(),
                                        vm.advancedCategorySelections.toBooleanArray(),
                                        { _, which, isChecked ->
                                            vm.setAdvancedCategorySelected(which, isChecked)
                                        },
                                        { dialog, _ ->
                                            vm.applyAdvancedCategorySelection()
                                            dialog.dismiss()
                                        },
                                    )
                                },
                            ) {
                                Icon(Icons.Filled.FilterAlt, contentDescription = stringResource(R.string.title_category))
                            }
                        }
                        if (isRecent) {
                            IconButton(onClick = { screenViewModel?.clearRecentView() }) {
                                Icon(Icons.Filled.ClearAll, contentDescription = stringResource(R.string.action_clear_recent))
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            val comics = if (inPreview) previewState?.comics.orEmpty() else screenViewModel?.comics.orEmpty()
            LazyColumn(
                state = listState,
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                item(key = "filters") {
                    ComicListControlPanel(
                        filterStates = screenViewModel?.filterStates.orEmpty(),
                        totalPage = screenViewModel?.totalPage ?: previewState?.totalPage ?: 1,
                        pageText = pageText,
                        onPageTextChange = { pageText = it },
                        onToggleFilter = { screenViewModel?.toggleFilter(it) },
                        onJump = { screenViewModel?.jumpToPage(pageText.toIntOrNull() ?: 1) },
                    )
                    if (screenViewModel?.selectedAdvancedCategories?.isNotEmpty() == true) {
                        FlowRow(
                            modifier = Modifier.padding(top = 10.dp),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            screenViewModel.selectedAdvancedCategories.forEach { category ->
                                AssistChip(onClick = {}, label = { Text(category) })
                            }
                        }
                    }
                }

                when {
                    !inPreview && screenViewModel?.isLoading == true && comics.isEmpty() -> {
                        item(key = "loading") { PicaLoadingIndicator() }
                    }

                    comics.isEmpty() -> {
                        item(key = "empty") { PicaEmptyState(message = "No comics") }
                    }

                    else -> {
                        itemsIndexed(
                            items = comics,
                            key = { index, item -> item.comicId ?: "comic_$index" },
                        ) { _, item ->
                            PicaComicListCard(
                                title = item.title.orEmpty(),
                                subtitle = item.author.orEmpty(),
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
    totalPage: Int,
    pageText: String,
    onPageTextChange: (String) -> Unit,
    onToggleFilter: (Int) -> Unit,
    onJump: () -> Unit,
) {
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

    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = MaterialTheme.shapes.large,
        color = MaterialTheme.colorScheme.surface,
        tonalElevation = 1.dp,
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                filterLabels.forEachIndexed { index, label ->
                    val selected = filterStates.getOrNull(index) == true
                    FilterChip(
                        selected = selected,
                        onClick = { onToggleFilter(index) },
                        label = {
                            Text(
                                text = label,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        },
                        leadingIcon = if (selected) {
                            {
                                Icon(
                                    imageVector = Icons.Filled.Check,
                                    contentDescription = null,
                                    modifier = Modifier.size(FilterChipDefaults.IconSize),
                                )
                            }
                        } else {
                            null
                        },
                        colors = FilterChipDefaults.filterChipColors(
                            selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
                            selectedLabelColor = MaterialTheme.colorScheme.onPrimaryContainer,
                            selectedLeadingIconColor = MaterialTheme.colorScheme.onPrimaryContainer,
                        ),
                    )
                }
            }

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = stringResource(R.string.comment_jump_page_title),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                )
                OutlinedTextField(
                    value = pageText,
                    onValueChange = { onPageTextChange(it.filter(Char::isDigit).take(5)) },
                    placeholder = { Text("1") },
                    suffix = {
                        Text(
                            text = "/ $totalPage",
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    },
                    singleLine = true,
                    keyboardOptions = KeyboardOptions(imeAction = ImeAction.Go),
                    keyboardActions = KeyboardActions(onGo = { onJump() }),
                    shape = MaterialTheme.shapes.large,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = MaterialTheme.colorScheme.onSurface,
                        unfocusedTextColor = MaterialTheme.colorScheme.onSurface,
                        focusedContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(1.dp),
                        unfocusedContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(1.dp),
                        focusedBorderColor = MaterialTheme.colorScheme.primary,
                        unfocusedBorderColor = MaterialTheme.colorScheme.outline.copy(alpha = 0.48f),
                        cursorColor = MaterialTheme.colorScheme.primary,
                        focusedSuffixColor = MaterialTheme.colorScheme.onSurfaceVariant,
                        unfocusedSuffixColor = MaterialTheme.colorScheme.onSurfaceVariant,
                        focusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                        unfocusedPlaceholderColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    ),
                    modifier = Modifier
                        .width(132.dp)
                        .heightIn(min = 52.dp),
                )
                Button(
                    onClick = onJump,
                    shape = MaterialTheme.shapes.large,
                    contentPadding = PaddingValues(horizontal = 16.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.primary,
                        contentColor = MaterialTheme.colorScheme.onPrimary,
                    ),
                    modifier = Modifier.heightIn(min = 52.dp),
                ) {
                    Icon(
                        imageVector = Icons.Filled.KeyboardDoubleArrowRight,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp),
                    )
                    Text(
                        text = stringResource(R.string.ok),
                        modifier = Modifier.padding(start = 6.dp),
                    )
                }
            }
        }
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
    val cover = ThumbnailObject("https://storage1.picacomic.com", "cover.jpg", "cover.jpg")
    val comics = listOf(
        ComicListObject("comic-1", "Hot spring story", "Akatama", 316, 26, 1, true, arrayListOf("Short"), cover),
        ComicListObject("comic-2", "Arknights winter", "Arcana XIV", 4779, 18, 1, false, arrayListOf("Short"), cover),
        ComicListObject("comic-3", "Pica selected", "Team", 680, 20, 1, true, arrayListOf("Pick"), cover),
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
