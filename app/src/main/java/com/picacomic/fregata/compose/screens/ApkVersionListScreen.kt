package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
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
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.viewmodels.ApkVersionListViewModel
import com.picacomic.fregata.databinding.ItemApkVersionListRecyclerViewCellBinding
import com.picacomic.fregata.objects.LatestApplicationObject
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter

@Composable
fun ApkVersionListScreen(
    onBack: () -> Unit,
    viewModel: ApkVersionListViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val listState = rememberLazyListState()
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(inPreview) {
        if (!inPreview) {
            screenViewModel?.loadMore()
        }
    }

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, vm.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    if (!inPreview) {
        RememberListLoadMore(
            state = listState,
            enabled = screenViewModel?.versions?.isNotEmpty() == true &&
                screenViewModel?.isLoading != true &&
                (screenViewModel?.page ?: 0) < (screenViewModel?.totalPage ?: 0),
        ) {
            screenViewModel?.loadMore()
        }
    }

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_apk_version),
            onBack = onBack
        ) {
            Box(modifier = Modifier.weight(1f)) {
                if (inPreview) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp)
                    ) {
                        PreviewListPanel(
                            title = stringResource(R.string.title_apk_version),
                            items = listOf("Ver. 2.2.1.3.3.4", "Ver. 2.2.1.3.3.3", "Ver. 2.2.1.3.3.2")
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.versions.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.versions.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                state = listState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.versions,
                                    key = { index, item ->
                                        item.latestApplicationId ?: "apk_version_$index"
                                    }
                                ) { _, item ->
                                    ApkVersionListItem(item = item) {
                                        AlertDialogCenter.showUpdateApkAlertDialog(
                                            context,
                                            item,
                                            false
                                        )
                                    }
                                }

                                if (vm.isLoading) {
                                    item(key = "loading") {
                                        ListLoadingFooter()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ApkVersionListItem(
    item: LatestApplicationObject,
    onClick: () -> Unit,
) {
    AndroidView(
        factory = { context ->
            LayoutInflater.from(context)
                .inflate(R.layout.item_apk_version_list_recycler_view_cell, null, false)
        },
        modifier = Modifier.fillMaxSize(),
        update = { view ->
            val binding = ItemApkVersionListRecyclerViewCellBinding.bind(view)
            binding.root.setOnClickListener { onClick() }
            binding.textViewApkVersionListRecyclerViewCellVersion.text = item.version.orEmpty()
            binding.textViewApkVersionListRecyclerViewCellContent.text = item.updateContent.orEmpty()
            binding.textViewApkVersionListRecyclerViewCellTimestamp.text =
                g.B(view.context, item.createdAt)
        }
    )
}

@Preview(showBackground = true)
@Composable
private fun ApkVersionListScreenPreview() {
    ApkVersionListScreen(onBack = {})
}
