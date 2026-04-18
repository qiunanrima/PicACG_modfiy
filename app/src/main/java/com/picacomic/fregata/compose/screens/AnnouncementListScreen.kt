package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
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
import com.picacomic.fregata.compose.viewmodels.AnnouncementListViewModel
import com.picacomic.fregata.databinding.ItemAnnouncementCellBinding
import com.picacomic.fregata.objects.AnnouncementObject
import com.picacomic.fregata.utils.PicassoTransformations
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import com.squareup.picasso.Picasso

@Composable
fun AnnouncementListScreen(
    onBack: () -> Unit,
    viewModel: AnnouncementListViewModel? = null
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
            enabled = screenViewModel?.announcements?.isNotEmpty() == true &&
                screenViewModel?.isLoading != true &&
                (screenViewModel?.page ?: 0) < (screenViewModel?.totalPage ?: 0),
        ) {
            screenViewModel?.loadMore()
        }
    }

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_announcement),
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
                            title = stringResource(R.string.title_announcement),
                            items = listOf("公告一", "公告二", "公告三")
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.announcements.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.announcements.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                state = listState,
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.announcements,
                                    key = { index, item ->
                                        item.announcementId ?: "announcement_$index"
                                    }
                                ) { _, item ->
                                    AnnouncementListItem(item = item) {
                                        AlertDialogCenter.showAnnouncementAlertDialog(
                                            context,
                                            g.b(item.thumb),
                                            item.title,
                                            item.content,
                                            item.createdAt,
                                            null
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
private fun AnnouncementListItem(
    item: AnnouncementObject,
    onClick: () -> Unit,
) {
    AndroidView(
        factory = { context ->
            LayoutInflater.from(context).inflate(R.layout.item_announcement_cell, null, false)
        },
        modifier = Modifier.fillMaxWidth(),
        update = { view ->
            val binding = ItemAnnouncementCellBinding.bind(view)
            binding.root.setOnClickListener { onClick() }
            binding.textViewAnnouncementCellTitle.text = item.title.orEmpty()
            binding.textViewAnnouncementCellDescription.text = item.content.orEmpty()
            Picasso.with(view.context)
                .load(g.b(item.thumb))
                .transform(PicassoTransformations.CARD_COVER)
                .placeholder(R.drawable.placeholder_avatar_2)
                .into(binding.imageViewAnnouncementCellImage)
        }
    )
}

@Preview(showBackground = true)
@Composable
private fun AnnouncementListScreenPreview() {
    AnnouncementListScreen(onBack = {})
}
