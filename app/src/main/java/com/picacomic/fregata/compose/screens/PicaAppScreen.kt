package com.picacomic.fregata.compose.screens

import android.webkit.WebView
import android.view.LayoutInflater
import android.view.View
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
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
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

@Composable
fun PicaAppScreen(
    title: String,
    link: String,
    onBack: () -> Unit,
    viewModel: PicaAppViewModel = viewModel(),
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val lifecycleOwner = LocalLifecycleOwner.current
    var hostedWebView by remember { mutableStateOf<WebView?>(null) }

    LaunchedEffect(title, link) {
        viewModel.initialize(title, link)
    }

    LaunchedEffect(viewModel.invalidLinkEvent) {
        if (viewModel.invalidLinkEvent > 0) {
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
                        Icon(imageVector = Icons.Filled.ArrowBack, contentDescription = "Back")
                    }
                    Text(
                        text = viewModel.title,
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                if (inPreview) {
                    Box(modifier = Modifier.fillMaxSize())
                } else {
                    AndroidView(
                        factory = { context ->
                            LayoutInflater.from(context).inflate(R.layout.fragment_pica_app, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            try {
                                view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                                view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE
                                val container = view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_web)
                                if (container != null && container.childCount == 0) {
                                    val webView = WebView(view.context)
                                    g.k(webView)
                                    webView.settings.javaScriptCanOpenWindowsAutomatically = true
                                    container.addView(
                                        webView,
                                        android.widget.LinearLayout.LayoutParams(
                                            android.widget.LinearLayout.LayoutParams.MATCH_PARENT,
                                            android.widget.LinearLayout.LayoutParams.MATCH_PARENT
                                        )
                                    )
                                }
                                val webView = container?.getChildAt(0) as? WebView
                                hostedWebView = webView
                                val oldLink = webView?.getTag(R.id.linearLayout_web) as? String
                                val authenticatedLink = viewModel.authenticatedLink
                                if (webView != null && authenticatedLink != null && oldLink != authenticatedLink) {
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
        title = "Pica App",
        link = "https://www.example.com",
        onBack = {}
    )
}

