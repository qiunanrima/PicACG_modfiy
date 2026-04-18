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
import com.picacomic.fregata.compose.viewmodels.PicaAppListViewModel
import com.picacomic.fregata.databinding.ItemChatroomListCellBinding
import com.picacomic.fregata.objects.PicaAppObject
import com.picacomic.fregata.utils.PicassoTransformations
import com.picacomic.fregata.utils.a
import com.squareup.picasso.Picasso

@Composable
fun PicaAppListScreen(
    onBack: () -> Unit,
    onPicaAppClick: (title: String, link: String) -> Unit,
    viewModel: PicaAppListViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(inPreview) {
        if (!inPreview) {
            screenViewModel?.loadApps(force = true)
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

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_pica_app),
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
                            title = stringResource(R.string.title_pica_app),
                            items = listOf("嗶咔萌約", "哔咔小程序 A", "哔咔小程序 B")
                        )
                    }
                } else {
                    val vm = screenViewModel
                    when {
                        vm == null || (vm.apps.isEmpty() && vm.isLoading) -> {
                            PicaLoadingIndicator()
                        }

                        vm.apps.isEmpty() -> {
                            PicaEmptyState(message = "暂无内容")
                        }

                        else -> {
                            LazyColumn(
                                modifier = Modifier.fillMaxSize(),
                                contentPadding = PaddingValues(vertical = 8.dp)
                            ) {
                                itemsIndexed(
                                    items = vm.apps,
                                    key = { index, item ->
                                        item.title ?: "pica_app_$index"
                                    }
                                ) { _, item ->
                                    PicaAppListItem(item = item) {
                                        val title = item.title.orEmpty()
                                        val link = item.url ?: if (
                                            title.equals("嗶咔萌約", ignoreCase = true)
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
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun PicaAppListItem(
    item: PicaAppObject,
    onClick: () -> Unit,
) {
    AndroidView(
        factory = { context ->
            LayoutInflater.from(context).inflate(R.layout.item_chatroom_list_cell, null, false)
        },
        modifier = Modifier.fillMaxWidth(),
        update = { view ->
            val binding = ItemChatroomListCellBinding.bind(view)
            binding.root.setOnClickListener { onClick() }
            binding.textViewChatroomListCellTitle.text = item.title.orEmpty()
            binding.textViewChatroomListCellDescription.text = item.description.orEmpty()
            Picasso.with(view.context)
                .load(item.icon)
                .transform(PicassoTransformations.CARD_COVER)
                .placeholder(R.drawable.placeholder_avatar_2)
                .into(binding.imageViewChatroomListCellImage)
        }
    )
}

@Preview(showBackground = true)
@Composable
private fun PicaAppListScreenPreview() {
    PicaAppListScreen(
        onBack = {},
        onPicaAppClick = { _, _ -> }
    )
}
