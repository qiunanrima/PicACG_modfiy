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
import com.picacomic.fregata.adapters.PicaAppListRecyclerViewAdapter
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.viewmodels.PicaAppListViewModel
import com.picacomic.fregata.utils.a

@Composable
fun PicaAppListScreen(
    onBack: () -> Unit,
    onPicaAppClick: (title: String, link: String) -> Unit,
    viewModel: PicaAppListViewModel = viewModel()
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current

    LaunchedEffect(inPreview) {
        if (!inPreview) {
            viewModel.loadApps(force = true)
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
            title = stringResource(R.string.title_pica_app),
            onBack = onBack
        ) {
            Box(modifier = Modifier.weight(1f)) {
                if (inPreview) {
                    Box(modifier = Modifier.fillMaxSize())
                } else {
                    AndroidView(
                        factory = { ctx ->
                            LayoutInflater.from(ctx).inflate(R.layout.fragment_chatroom_list, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                            view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE

                            val recyclerView =
                                view.findViewById<RecyclerView>(R.id.recyclerView_chatroom_list)
                            if (recyclerView.layoutManager == null) {
                                recyclerView.layoutManager = LinearLayoutManager(view.context, 1, false)
                            }

                            val dataKey = buildString {
                                append(viewModel.apps.size)
                                append('|')
                                append(viewModel.apps.firstOrNull()?.title.orEmpty())
                                append('|')
                                append(viewModel.apps.lastOrNull()?.title.orEmpty())
                            }
                            val oldDataKey = recyclerView.getTag(R.id.recyclerView_chatroom_list) as? String
                            if (recyclerView.adapter == null || oldDataKey != dataKey) {
                                recyclerView.adapter = PicaAppListRecyclerViewAdapter(
                                    view.context,
                                    ArrayList(viewModel.apps),
                                    object : com.picacomic.fregata.a_pkg.k {
                                        override fun C(i: Int) {
                                            val app = viewModel.apps.getOrNull(i) ?: return
                                            val title = app.title ?: ""
                                            val link = app.url ?: if (title.equals(
                                                    "嗶咔萌約",
                                                    ignoreCase = true
                                                )
                                            ) {
                                                a.dT()
                                            } else {
                                                ""
                                            }
                                            if (title.isNotBlank() && link.isNotBlank()) {
                                                onPicaAppClick(title, link)
                                            }
                                        }
                                    }
                                )
                                recyclerView.setTag(R.id.recyclerView_chatroom_list, dataKey)
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
private fun PicaAppListScreenPreview() {
    PicaAppListScreen(
        onBack = {},
        onPicaAppClick = { _, _ -> }
    )
}
