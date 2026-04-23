package com.picacomic.fregata.compose.screens

import android.content.DialogInterface
import android.view.LayoutInflater
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
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
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ComicListViewModel
import com.picacomic.fregata.utils.views.AlertDialogCenter
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow

private val ComicFilterBackgrounds = intArrayOf(
    R.drawable.button_filter_forbidden_bg,
    R.drawable.button_filter_japanese_bg,
    R.drawable.button_filter_bl_bg,
    R.drawable.button_filter_heavy_bg,
    R.drawable.button_filter_pure_love_bg,
    R.drawable.button_filter_fake_girl_bg,
    R.drawable.button_filter_futari_bg,
    R.drawable.button_filter_webtoon_bg
)

/**
 * Comic List screen. Wraps the legacy [R.layout.fragment_comic_list].
 */
@OptIn(ExperimentalMaterial3Api::class)
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
    viewModel: ComicListViewModel? = null
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val isFavourite = category == "CATEGORY_USER_FAVOURITE"
    val isRecent = category == "CATEGORY_RECENT_VIEW"
    val isAdvancedSearch = !keywords.isNullOrBlank()
    val canSort = isFavourite || isAdvancedSearch
    val canPickAdvancedCategories =
        isAdvancedSearch && screenViewModel?.advancedCategoryTitles?.isNotEmpty() == true

    // Initialize viewModel with params
    LaunchedEffect(
        category,
        keywords,
        tags,
        author,
        finished,
        sorting,
        translate,
        creatorId,
        creatorName,
        inPreview
    ) {
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
                creatorName = creatorName
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

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = screenViewModel?.title ?: stringResource(R.string.title_search),
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
                    actions = {
                        if (canSort) {
                            TextButton(
                                onClick = {
                                    val vm = screenViewModel ?: return@TextButton
                                    if (isFavourite) {
                                        AlertDialogCenter.sortingFavouriteOptions(
                                            context,
                                            vm.favouriteSortingIndex
                                        ) { dialog: DialogInterface, which: Int ->
                                            vm.setFavouriteSorting(which)
                                            dialog.dismiss()
                                        }
                                    } else {
                                        AlertDialogCenter.sortingAdvancedOptions(
                                            context,
                                            vm.advancedSortingIndex
                                        ) { dialog: DialogInterface, which: Int ->
                                            vm.setAdvancedSorting(which)
                                            dialog.dismiss()
                                        }
                                    }
                                }
                            ) {
                                Text(text = stringResource(R.string.sorting_title))
                            }
                        }
                        if (canPickAdvancedCategories) {
                            TextButton(
                                onClick = {
                                    val vm = screenViewModel ?: return@TextButton
                                    val checked = vm.advancedCategorySelections.toBooleanArray()
                                    AlertDialogCenter.sortingAdvancedCategoriesOptions(
                                        context,
                                        vm.advancedCategoryTitles.toTypedArray(),
                                        checked,
                                        DialogInterface.OnMultiChoiceClickListener { _, which, isChecked ->
                                            vm.setAdvancedCategorySelected(which, isChecked)
                                        },
                                        DialogInterface.OnClickListener { dialog, _ ->
                                            vm.applyAdvancedCategorySelection()
                                            dialog.dismiss()
                                        }
                                    )
                                }
                            ) {
                                Text(text = stringResource(R.string.title_category))
                            }
                        }
                        if (isRecent) {
                            TextButton(
                                onClick = {
                                    val vm = screenViewModel ?: return@TextButton
                                    AlertDialogCenter.showCustomAlertDialog(
                                        context,
                                        R.drawable.icon_exclamation_error,
                                        R.string.alert_clear_all_recent_title,
                                        R.string.alert_clear_all_recent_message,
                                        View.OnClickListener {
                                            vm.clearRecentView()
                                        },
                                        null
                                    )
                                }
                            ) {
                                Text(text = stringResource(R.string.action_clear_recent))
                            }
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
                    Box(modifier = Modifier.fillMaxSize())
                } else {
                    AndroidView(
                        factory = { context ->
                            LayoutInflater.from(context)
                                .inflate(R.layout.fragment_comic_list, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val vm = screenViewModel ?: return@AndroidView
                            view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE

                            val recyclerView =
                                view.findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.recyclerView_comic_list)
                            val emptyView =
                                view.findViewById<android.widget.FrameLayout>(R.id.frameLayout_comic_list_no_comics)
                            val pageInput =
                                view.findViewById<EditText>(R.id.editText_comic_list_current_page)
                            val totalPageView =
                                view.findViewById<TextView>(R.id.textView_comic_list_total_page)
                            emptyView?.visibility =
                                if (vm.comics.isEmpty()) View.VISIBLE else View.GONE
                            totalPageView?.text = vm.totalPage.toString()
                            if (pageInput != null && !pageInput.isFocused) {
                                pageInput.setText(vm.pageJumpBase.toString())
                            }

                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager =
                                    androidx.recyclerview.widget.LinearLayoutManager(view.context)
                            }

                            if (recyclerView.adapter == null) {
                                recyclerView.adapter = com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter(
                                    view.context,
                                    ArrayList(vm.comics),
                                    object : com.picacomic.fregata.a_pkg.b {
                                        override fun C(i: Int) {
                                            val realIndex = i - (i / 21)
                                            if (realIndex >= 0 && realIndex < vm.comics.size) {
                                                val comicId = vm.comics[realIndex].comicId
                                                if (!comicId.isNullOrBlank()) {
                                                    onComicClick(comicId)
                                                }
                                            }
                                        }

                                        override fun I(i: Int) = Unit
                                    }
                                )
                            }

                            val dataKey = buildString {
                                append(vm.comics.size)
                                append('|')
                                append(vm.comics.firstOrNull()?.comicId.orEmpty())
                                append('|')
                                append(vm.comics.lastOrNull()?.comicId.orEmpty())
                                append('|')
                                append(vm.page)
                                append('|')
                                append(vm.totalPage)
                            }
                            val oldDataKey =
                                recyclerView.getTag(R.id.recyclerView_comic_list) as? String
                            if (oldDataKey != dataKey) {
                                (recyclerView.adapter as? com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter)
                                    ?.setData(ArrayList(vm.comics))
                                recyclerView.setTag(R.id.recyclerView_comic_list, dataKey)
                            }

                            val filterButtons = intArrayOf(
                                R.id.button_comic_list_filter_forbidden,
                                R.id.button_comic_list_filter_japanese,
                                R.id.button_comic_list_filter_bl,
                                R.id.button_comic_list_filter_heavy,
                                R.id.button_comic_list_filter_pure_love,
                                R.id.button_comic_list_filter_fake_girl,
                                R.id.button_comic_list_filter_futari,
                                R.id.button_comic_list_filter_webtoon
                            )
                            filterButtons.forEachIndexed { index, buttonId ->
                                val button = view.findViewById<Button>(buttonId)
                                button?.setBackgroundResource(
                                    if (vm.filterStates.getOrNull(index) == true) {
                                        R.drawable.button_filter_selected_bg
                                    } else {
                                        ComicFilterBackgrounds[index]
                                    }
                                )
                                if (button?.getTag(buttonId) != true) {
                                    button?.setOnClickListener {
                                        val selected = vm.toggleFilter(index)
                                        button.setBackgroundResource(
                                            if (selected) R.drawable.button_filter_selected_bg
                                            else ComicFilterBackgrounds[index]
                                        )
                                        (recyclerView.adapter as? com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter)
                                            ?.a(index, selected)
                                    }
                                    button?.setTag(buttonId, true)
                                }
                            }
                            (recyclerView.adapter as? com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter)
                                ?.let { adapter ->
                                    vm.filterStates.forEachIndexed { index, selected ->
                                        adapter.a(index, selected)
                                    }
                                }

                            if (pageInput?.getTag(R.id.editText_comic_list_current_page) != true) {
                                pageInput?.setOnEditorActionListener { textView, actionId, _ ->
                                    if (actionId != EditorInfo.IME_ACTION_DONE &&
                                        actionId != EditorInfo.IME_ACTION_GO &&
                                        actionId != EditorInfo.IME_ACTION_SEARCH &&
                                        actionId != EditorInfo.IME_NULL
                                    ) {
                                        return@setOnEditorActionListener false
                                    }
                                    val targetPage = textView?.text?.toString()?.toIntOrNull()
                                        ?: vm.pageJumpBase
                                    vm.jumpToPage(targetPage)
                                    true
                                }
                                pageInput?.setTag(R.id.editText_comic_list_current_page, true)
                            }

                            if (recyclerView.getTag(R.id.textView_comic_list_total_page) != true) {
                                recyclerView.addOnScrollListener(object :
                                    androidx.recyclerview.widget.RecyclerView.OnScrollListener() {
                                    override fun onScrollStateChanged(
                                        rv: androidx.recyclerview.widget.RecyclerView,
                                        newState: Int
                                    ) {
                                        super.onScrollStateChanged(rv, newState)
                                        val layoutManager =
                                            rv.layoutManager as? androidx.recyclerview.widget.LinearLayoutManager
                                                ?: return
                                        pageInput?.hint =
                                            (vm.pageJumpBase + (layoutManager.findFirstVisibleItemPosition() / 21)).toString()
                                        if (layoutManager.findLastVisibleItemPosition() == layoutManager.itemCount - 1) {
                                            vm.loadData()
                                        }
                                    }
                                })
                                recyclerView.setTag(R.id.textView_comic_list_total_page, true)
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
private fun ComicListScreenPreview() {
    ComicListScreen(
        category = "CATEGORY_LATEST",
        onBack = {},
        onComicClick = {}
    )
}

