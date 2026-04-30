package com.picacomic.fregata.compose.screens

import android.webkit.WebView
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.PicaAppViewModel
import com.picacomic.fregata.utils.g
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PicaAppScreen(
    title: String,
    link: String,
    onBack: () -> Unit,
    viewModel: PicaAppViewModel? = null,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val lifecycleOwner = LocalLifecycleOwner.current
    var hostedWebView by remember { mutableStateOf<WebView?>(null) }
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(title, link) {
        if (!inPreview) {
            screenViewModel?.initialize(title, link)
        }
    }

    LaunchedEffect(screenViewModel?.invalidLinkEvent) {
        if (screenViewModel?.invalidLinkEvent ?: 0 > 0) {
            onBack()
        }
    }

    DisposableEffect(lifecycleOwner, hostedWebView) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_RESUME -> hostedWebView?.onResume()
                Lifecycle.Event.ON_PAUSE -> hostedWebView?.onPause()
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            hostedWebView?.apply {
                stopLoading()
                loadUrl("about:blank")
                removeAllViews()
                destroy()
            }
            hostedWebView = null
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
                            text = screenViewModel?.title?.ifBlank { title } ?: title,
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
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
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
                    val previewTitle = screenViewModel?.title?.ifBlank { title.ifBlank { "Pica App" } }
                        ?: title.ifBlank { "Pica App" }
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        PreviewListPanel(
                            title = previewTitle,
                            items = listOf(
                                "目标链接：${link.ifBlank { "https://www.example.com" }}",
                                "WebView 内容区域预览",
                                "站内链接将留在页内，站外链接将外部打开"
                            )
                        )
                    }
                } else {
                    AndroidView(
                        factory = { viewContext ->
                            WebView(viewContext).apply {
                                g.k(this)
                                settings.javaScriptCanOpenWindowsAutomatically = true
                            }
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { webView ->
                            val vm = screenViewModel ?: return@AndroidView
                            try {
                                hostedWebView = webView
                                val oldLink = webView.getTag(R.id.linearLayout_web) as? String
                                val authenticatedLink = vm.authenticatedLink
                                if (authenticatedLink != null && oldLink != authenticatedLink) {
                                    webView.loadUrl(authenticatedLink)
                                    webView.setTag(R.id.linearLayout_web, authenticatedLink)
                                }
                            } catch (e: Exception) {
                                com.picacomic.fregata.b.c(context).dN()
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
private fun PicaAppScreenPreview() {
    PicaAppScreen(
        title = "嗶咔萌約",
        link = "https://app.picacomic.com/date",
        onBack = {}
    )
}
