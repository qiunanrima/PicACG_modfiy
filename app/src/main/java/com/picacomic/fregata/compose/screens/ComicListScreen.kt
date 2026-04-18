package com.picacomic.fregata.compose.screens

import android.content.DialogInterface
import android.view.LayoutInflater
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ComicListViewModel
import com.picacomic.fregata.utils.views.AlertDialogCenter

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
    viewModel: ComicListViewModel = viewModel()
) {
    val inPreview = LocalInspectionMode.current
    val context = LocalContext.current
    val isFavourite = category == "CATEGORY_USER_FAVOURITE"
    val isRecent = category == "CATEGORY_RECENT_VIEW"
    val isAdvancedSearch = !keywords.isNullOrBlank()
    val canSort = isFavourite || isAdvancedSearch
    val canPickAdvancedCategories = isAdvancedSearch && viewModel.advancedCategoryTitles.isNotEmpty()

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
            viewModel.init(
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

    LaunchedEffect(viewModel.errorEvent) {
        if (inPreview || viewModel.errorEvent <= 0) return@LaunchedEffect
        val code = viewModel.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, viewModel.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    LaunchedEffect(viewModel.messageEvent) {
        if (inPreview || viewModel.messageEvent <= 0) return@LaunchedEffect
        val res = viewModel.messageRes ?: return@LaunchedEffect
        Toast.makeText(context, res, Toast.LENGTH_SHORT).show()
    }

    PicaComposeTheme {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 8.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = onBack) {
                        Icon(
                            imageVector = Icons.Filled.ArrowBack,
                            contentDescription = "Back"
                        )
                    }
                    Text(
                        text = viewModel.title ?: stringResource(R.string.title_search),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier
                            .weight(1f)
                            .padding(start = 8.dp)
                    )
                    if (canSort) {
                        TextButton(
                            onClick = {
                                if (isFavourite) {
                                    AlertDialogCenter.sortingFavouriteOptions(
                                        context,
                                        viewModel.favouriteSortingIndex
                                    ) { dialog: DialogInterface, which: Int ->
                                        viewModel.setFavouriteSorting(which)
                                        dialog.dismiss()
                                    }
                                } else {
                                    AlertDialogCenter.sortingAdvancedOptions(
                                        context,
                                        viewModel.advancedSortingIndex
                                    ) { dialog: DialogInterface, which: Int ->
                                        viewModel.setAdvancedSorting(which)
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
                                val checked = viewModel.advancedCategorySelections.toBooleanArray()
                                AlertDialogCenter.sortingAdvancedCategoriesOptions(
                                    context,
                                    viewModel.advancedCategoryTitles.toTypedArray(),
                                    checked,
                                    DialogInterface.OnMultiChoiceClickListener { _, which, isChecked ->
                                        viewModel.setAdvancedCategorySelected(which, isChecked)
                                    },
                                    DialogInterface.OnClickListener { dialog, _ ->
                                        viewModel.applyAdvancedCategorySelection()
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
                                AlertDialogCenter.showCustomAlertDialog(
                                    context,
                                    R.drawable.icon_exclamation_error,
                                    R.string.alert_clear_all_recent_title,
                                    R.string.alert_clear_all_recent_message,
                                    View.OnClickListener {
                                        viewModel.clearRecentView()
                                    },
                                    null
                                )
                            }
                        ) {
                            Text(text = stringResource(R.string.action_clear_recent))
                        }
                    }
                }
            }
            Box(modifier = Modifier.weight(1f)) {
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
                                if (viewModel.comics.isEmpty()) View.VISIBLE else View.GONE
                            totalPageView?.text = viewModel.totalPage.toString()
                            if (pageInput != null && !pageInput.isFocused) {
                                pageInput.setText(viewModel.pageJumpBase.toString())
                            }

                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager =
                                    androidx.recyclerview.widget.LinearLayoutManager(view.context)
                            }

                            if (recyclerView.adapter == null) {
                                recyclerView.adapter = com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter(
                                    view.context,
                                    ArrayList(viewModel.comics),
                                    object : com.picacomic.fregata.a_pkg.b {
                                        override fun C(i: Int) {
                                            val realIndex = i - (i / 21)
                                            if (realIndex >= 0 && realIndex < viewModel.comics.size) {
                                                val comicId = viewModel.comics[realIndex].comicId
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
                                append(viewModel.comics.size)
                                append('|')
                                append(viewModel.comics.firstOrNull()?.comicId.orEmpty())
                                append('|')
                                append(viewModel.comics.lastOrNull()?.comicId.orEmpty())
                                append('|')
                                append(viewModel.page)
                                append('|')
                                append(viewModel.totalPage)
                            }
                            val oldDataKey =
                                recyclerView.getTag(R.id.recyclerView_comic_list) as? String
                            if (oldDataKey != dataKey) {
                                (recyclerView.adapter as? com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter)
                                    ?.setData(ArrayList(viewModel.comics))
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
                                    if (viewModel.filterStates.getOrNull(index) == true) {
                                        R.drawable.button_filter_selected_bg
                                    } else {
                                        ComicFilterBackgrounds[index]
                                    }
                                )
                                if (button?.getTag(buttonId) != true) {
                                    button?.setOnClickListener {
                                        val selected = viewModel.toggleFilter(index)
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
                                    viewModel.filterStates.forEachIndexed { index, selected ->
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
                                        ?: viewModel.pageJumpBase
                                    viewModel.jumpToPage(targetPage)
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
                                            (viewModel.pageJumpBase + (layoutManager.findFirstVisibleItemPosition() / 21)).toString()
                                        if (layoutManager.findLastVisibleItemPosition() == layoutManager.itemCount - 1) {
                                            viewModel.loadData()
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

