package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
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
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ComicListViewModel

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
    // Initialize viewModel with params
    LaunchedEffect(Unit) {
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
                            imageVector = Icons.Default.ArrowBack,
                            contentDescription = "Back"
                        )
                    }
                    Text(
                        text = viewModel.title ?: stringResource(R.string.title_search),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context ->
                        LayoutInflater.from(context).inflate(R.layout.fragment_comic_list, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        val recyclerView = view.findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.recyclerView_comic_list)
                        
                        if (recyclerView.adapter == null) {
                            recyclerView.layoutManager = androidx.recyclerview.widget.LinearLayoutManager(view.context)
                            val adapter = com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter(
                                view.context,
                                ArrayList(viewModel.comics),
                                object : com.picacomic.fregata.a_pkg.b {
                                    override fun C(i: Int) {
                                        // The adapter has some built-in offset logic (i - (i / 21))
                                        val realIndex = i - (i / 21)
                                        if (realIndex >= 0 && realIndex < viewModel.comics.size) {
                                            onComicClick(viewModel.comics[realIndex].comicId)
                                        }
                                    }
                                    override fun I(i: Int) {
                                        // Preview thumbnail - optional
                                    }
                                }
                            )
                            recyclerView.adapter = adapter

                            recyclerView.addOnScrollListener(object : androidx.recyclerview.widget.RecyclerView.OnScrollListener() {
                                override fun onScrollStateChanged(rv: androidx.recyclerview.widget.RecyclerView, newState: Int) {
                                    super.onScrollStateChanged(rv, newState)
                                    val layoutManager = rv.layoutManager as androidx.recyclerview.widget.LinearLayoutManager
                                    if (layoutManager.findLastVisibleItemPosition() == layoutManager.itemCount - 1) {
                                        viewModel.loadData(
                                            category = category,
                                            keywords = keywords,
                                            tags = tags,
                                            author = author,
                                            finished = finished,
                                            sorting = sorting,
                                            translate = translate,
                                            creatorId = creatorId
                                        )
                                    }
                                }
                            })
                        } else {
                            // Update adapter data using the new setData method
                            val currentAdapter = recyclerView.adapter as com.picacomic.fregata.adapters.ComicListRecyclerViewAdapter
                            // Estimate if size changed (ignoring ads for simplicity in comparison)
                            if (viewModel.comics.size != (currentAdapter.itemCount - ((viewModel.comics.size / 20) + 1))) {
                                currentAdapter.setData(ArrayList(viewModel.comics))
                            }
                        }
                    }
                )
            }
        }
    }
}
