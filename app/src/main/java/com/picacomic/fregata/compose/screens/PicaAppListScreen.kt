package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.viewmodels.PicaAppListViewModel
import com.picacomic.fregata.objects.PicaAppObject
import com.picacomic.fregata.utils.a

@Composable
fun PicaAppListScreen(
    onBack: () -> Unit,
    onPicaAppClick: (title: String, link: String) -> Unit,
    viewModel: PicaAppListViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewApps = if (inPreview) picaAppPreviewItems() else emptyList()

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
                            items = previewApps.map { "${it.title} · ${it.description}" }
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

private fun picaAppPreviewItems(): List<PicaAppObject> {
    return listOf(
        PicaAppObject("嗶咔萌約", "https://app.picacomic.com/date", "https://static.picacomic.com/date.jpg", "官方推荐的站内活动入口"),
        PicaAppObject("哔咔小程序 A", "https://app.picacomic.com/a", "https://static.picacomic.com/a.jpg", "查看本周专题内容"),
        PicaAppObject("哔咔小程序 B", "https://app.picacomic.com/b", "https://static.picacomic.com/b.jpg", "跳转外部 H5 页面")
    )
}

@Composable
private fun PicaAppListItem(
    item: PicaAppObject,
    onClick: () -> Unit,
) {
    val context = LocalContext.current
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 8.dp, vertical = 4.dp)
            .clickable(onClick = onClick),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(item.icon)
                    .placeholder(R.drawable.placeholder_avatar_2)
                    .error(R.drawable.placeholder_avatar_2)
                    .fallback(R.drawable.placeholder_avatar_2)
                    .allowHardware(false)
                    .crossfade(true)
                    .build(),
                contentDescription = null,
                modifier = Modifier.size(80.dp),
                contentScale = ContentScale.Crop
            )
            Column(
                modifier = Modifier
                    .weight(1f)
                    .padding(start = 12.dp)
            ) {
                Text(
                    text = item.title.orEmpty(),
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurface,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                Text(
                    text = item.description.orEmpty(),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(top = 4.dp)
                )
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
