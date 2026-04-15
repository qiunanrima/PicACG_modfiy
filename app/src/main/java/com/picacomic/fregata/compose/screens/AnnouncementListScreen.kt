package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.view.View
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.adapters.AnnouncementListRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.viewmodels.AnnouncementListViewModel
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter

@Composable
fun AnnouncementListScreen(
    onBack: () -> Unit,
    viewModel: AnnouncementListViewModel = viewModel()
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current

    LaunchedEffect(inPreview) {
        if (!inPreview) {
            viewModel.loadMore()
        }
    }

    LaunchedEffect(viewModel.errorEvent) {
        if (viewModel.errorEvent <= 0) return@LaunchedEffect
        val code = viewModel.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, viewModel.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_announcement),
            onBack = onBack
        ) {
            Box(modifier = Modifier.weight(1f)) {
                if (inPreview) {
                    Box(modifier = Modifier.fillMaxSize())
                } else {
                    AndroidView(
                        factory = { ctx ->
                            LayoutInflater.from(ctx)
                                .inflate(R.layout.fragment_announcement_list, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                            view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE

                            val recyclerView =
                                view.findViewById<RecyclerView>(R.id.recyclerView_announcement_list)
                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager = LinearLayoutManager(view.context, 1, false)
                            }

                            val dataKey = buildString {
                                append(viewModel.announcements.size)
                                append('|')
                                append(viewModel.page)
                                append('|')
                                append(viewModel.totalPage)
                            }
                            val oldDataKey =
                                recyclerView.getTag(R.id.recyclerView_announcement_list) as? String
                            if (recyclerView.adapter == null || oldDataKey != dataKey) {
                                recyclerView.adapter = AnnouncementListRecyclerViewAdapter(
                                    view.context,
                                    ArrayList(viewModel.announcements),
                                    object : com.picacomic.fregata.a_pkg.k {
                                        override fun C(i: Int) {
                                            val item = viewModel.announcements.getOrNull(i) ?: return
                                            AlertDialogCenter.showAnnouncementAlertDialog(
                                                view.context,
                                                g.b(item.thumb),
                                                item.title,
                                                item.content,
                                                item.createdAt,
                                                null
                                            )
                                        }
                                    }
                                )
                                recyclerView.setTag(R.id.recyclerView_announcement_list, dataKey)
                            }

                            if (recyclerView.getTag(R.id.textView_comment_total_page) != true) {
                                recyclerView.addOnScrollListener(object :
                                    RecyclerView.OnScrollListener() {
                                    override fun onScrollStateChanged(
                                        rv: RecyclerView,
                                        newState: Int
                                    ) {
                                        super.onScrollStateChanged(rv, newState)
                                        val lm = rv.layoutManager as? LinearLayoutManager ?: return
                                        if (lm.findLastVisibleItemPosition() == lm.itemCount - 1) {
                                            viewModel.loadMore()
                                        }
                                    }
                                })
                                recyclerView.setTag(R.id.textView_comment_total_page, true)
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
private fun AnnouncementListScreenPreview() {
    AnnouncementListScreen(onBack = {})
}
