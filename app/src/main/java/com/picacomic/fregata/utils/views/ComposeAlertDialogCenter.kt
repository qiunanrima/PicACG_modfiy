package com.picacomic.fregata.utils.views

import android.app.Dialog
import android.content.Context
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.view.Gravity
import android.view.KeyEvent
import android.view.View
import android.view.Window
import android.view.WindowManager
import android.webkit.WebView
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.objects.LatestApplicationObject
import com.picacomic.fregata.utils.g

object ComposeAlertDialogCenter {
    @JvmStatic
    fun showCustomAlertDialog(
        context: Context?,
        iconRes: Int,
        title: String?,
        message: String?,
        positiveClick: View.OnClickListener?,
        negativeClick: View.OnClickListener?,
    ) {
        if (context == null) return
        val dialog = createDialog(context, cancelable = false, top = true)
        dialog.setContentView(
            createComposeView(context) {
                PicaComposeTheme {
                    PicaAlertCard(
                        iconRes = iconRes.takeIf { it != -1 } ?: R.drawable.icon_unknown_error,
                        title = title,
                        message = message,
                        positiveText = context.getString(R.string.ok),
                        negativeText = if (positiveClick == null && negativeClick == null) null else context.getString(R.string.cancel),
                        onPositive = {
                            positiveClick?.onClick(dialog.window?.decorView)
                            dialog.dismiss()
                        },
                        onNegative = {
                            negativeClick?.onClick(dialog.window?.decorView)
                            dialog.dismiss()
                        },
                    )
                }
            },
        )
        dialog.show()
        dialog.window?.setLayout(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.WRAP_CONTENT)
    }

    @JvmStatic
    fun showUpdateApkAlertDialog(context: Context?, latestApplicationObject: LatestApplicationObject?, mustUpdate: Boolean) {
        if (context == null || latestApplicationObject == null) return
        val dialog = createDialog(context, cancelable = false, top = true)
        val title = latestApplicationObject.version?.let {
            context.getString(R.string.alert_apk_version_prefix) + it
        }
        val message = buildString {
            latestApplicationObject.createdAt?.let {
                append(g.B(context, it))
                append("\n\n")
            }
            latestApplicationObject.updateContent?.let(::append)
        }
        dialog.setContentView(
            createComposeView(context) {
                PicaComposeTheme {
                    PicaUpdateApkCard(
                        title = title,
                        message = message,
                        onApkDownload = {
                            val apk = latestApplicationObject.apk
                            if (apk != null) {
                                g.A(context, g.aC(apk.getFileServer()) + apk.getPath())
                            } else {
                                g.A(context, "https://picacomic.com")
                            }
                        },
                        onBrowserDownload = {
                            g.A(context, latestApplicationObject.downloadUrl ?: "https://picacomic.com")
                        },
                        onClose = {
                            if (mustUpdate) {
                                Toast.makeText(context, R.string.alert_apk_verison_must_update, Toast.LENGTH_SHORT).show()
                            } else {
                                dialog.dismiss()
                            }
                        },
                    )
                }
            },
        )
        dialog.show()
        dialog.window?.setLayout(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.WRAP_CONTENT)
    }

    @JvmStatic
    fun showAnnouncementAlertDialog(
        context: Context?,
        imageUrl: String?,
        title: String?,
        message: String?,
        timestamp: String?,
        positiveClick: View.OnClickListener?,
    ) {
        if (context == null) return
        val dialog = createDialog(context, cancelable = false, top = false)
        dialog.setContentView(
            createComposeView(context) {
                PicaComposeTheme {
                    PicaAnnouncementCard(
                        imageUrl = imageUrl,
                        title = title,
                        message = message,
                        timestamp = timestamp?.let { g.B(context, it) },
                        positiveVisible = positiveClick != null,
                        onPositive = {
                            positiveClick?.onClick(dialog.window?.decorView)
                            dialog.dismiss()
                        },
                        onDismiss = { dialog.dismiss() },
                    )
                }
            },
        )
        dialog.show()
        dialog.window?.setLayout(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.WRAP_CONTENT)
    }

    @JvmStatic
    fun showFaqAlertDialog(context: Context?, url: String?, positiveClick: View.OnClickListener?) {
        if (context == null || url.isNullOrBlank()) return
        val dialog = createDialog(context, cancelable = false, top = false)
        dialog.setContentView(
            createComposeView(context) {
                PicaComposeTheme {
                    PicaFaqCard(
                        url = url,
                        positiveVisible = positiveClick != null,
                        onPositive = {
                            positiveClick?.onClick(dialog.window?.decorView)
                            dialog.dismiss()
                        },
                        onDismiss = { dialog.dismiss() },
                    )
                }
            },
        )
        dialog.show()
        dialog.window?.setLayout(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.WRAP_CONTENT)
    }

    private fun createDialog(context: Context, cancelable: Boolean, top: Boolean): Dialog {
        return Dialog(context).apply {
            requestWindowFeature(Window.FEATURE_NO_TITLE)
            window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            setCancelable(cancelable)
            setCanceledOnTouchOutside(cancelable)
            setOnKeyListener { _, keyCode, _ -> keyCode == KeyEvent.KEYCODE_SEARCH || keyCode == KeyEvent.KEYCODE_BACK }
            setOnShowListener {
                window?.setGravity(if (top) Gravity.TOP or Gravity.CENTER_HORIZONTAL else Gravity.CENTER)
            }
        }
    }

    private fun createComposeView(context: Context, content: @Composable () -> Unit): ComposeView {
        return ComposeView(context).apply {
            (context as? LifecycleOwner)?.let { setViewTreeLifecycleOwner(it) }
            (context as? ViewModelStoreOwner)?.let { setViewTreeViewModelStoreOwner(it) }
            (context as? SavedStateRegistryOwner)?.let { setViewTreeSavedStateRegistryOwner(it) }
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnDetachedFromWindow)
            setContent {
                Surface(color = androidx.compose.ui.graphics.Color.Transparent) {
                    content()
                }
            }
        }
    }
}

@Composable
private fun PicaAlertCard(
    iconRes: Int,
    title: String?,
    message: String?,
    positiveText: String,
    negativeText: String?,
    onPositive: () -> Unit,
    onNegative: () -> Unit,
) {
    PicaDialogCard {
        Image(
            painter = painterResource(iconRes),
            contentDescription = null,
            modifier = Modifier
                .align(Alignment.CenterHorizontally)
                .size(96.dp),
        )
        if (!title.isNullOrBlank()) {
            Spacer(Modifier.height(12.dp))
            Text(
                text = title,
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onSurface,
            )
        }
        if (!message.isNullOrBlank()) {
            Spacer(Modifier.height(8.dp))
            Text(
                text = message,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
        Spacer(Modifier.height(20.dp))
        DialogButtons(
            positiveText = positiveText,
            negativeText = negativeText,
            onPositive = onPositive,
            onNegative = onNegative,
        )
    }
}

@Composable
private fun PicaUpdateApkCard(
    title: String?,
    message: String,
    onApkDownload: () -> Unit,
    onBrowserDownload: () -> Unit,
    onClose: () -> Unit,
) {
    PicaDialogCard {
        Image(
            painter = painterResource(R.drawable.icon_exclamation_error),
            contentDescription = null,
            modifier = Modifier
                .align(Alignment.CenterHorizontally)
                .size(96.dp),
        )
        Text(
            text = title.orEmpty(),
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis,
        )
        Spacer(Modifier.height(8.dp))
        Text(
            text = message,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier
                .heightIn(max = 260.dp)
                .verticalScroll(rememberScrollState()),
        )
        Spacer(Modifier.height(20.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End),
        ) {
            TextButton(onClick = onClose) { Text(text = "Close") }
            OutlinedButton(onClick = onBrowserDownload) { Text(text = "Web") }
            Button(onClick = onApkDownload) { Text(text = "APK") }
        }
    }
}

@Composable
private fun PicaAnnouncementCard(
    imageUrl: String?,
    title: String?,
    message: String?,
    timestamp: String?,
    positiveVisible: Boolean,
    onPositive: () -> Unit,
    onDismiss: () -> Unit,
) {
    PicaDialogCard {
        if (!imageUrl.isNullOrBlank()) {
            AsyncImage(
                model = ImageRequest.Builder(androidx.compose.ui.platform.LocalContext.current)
                    .data(imageUrl)
                    .placeholder(R.drawable.placeholder_avatar_2)
                    .error(R.drawable.placeholder_avatar_2)
                    .allowHardware(false)
                    .crossfade(true)
                    .build(),
                contentDescription = null,
                contentScale = ContentScale.Crop,
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(min = 160.dp, max = 260.dp),
            )
            Spacer(Modifier.height(14.dp))
        }
        if (!title.isNullOrBlank()) {
            Text(text = title, style = MaterialTheme.typography.titleLarge)
        }
        if (!timestamp.isNullOrBlank()) {
            Spacer(Modifier.height(4.dp))
            Text(
                text = timestamp,
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
        if (!message.isNullOrBlank()) {
            Spacer(Modifier.height(10.dp))
            Text(
                text = message,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier
                    .heightIn(max = 320.dp)
                    .verticalScroll(rememberScrollState()),
            )
        }
        Spacer(Modifier.height(20.dp))
        DialogButtons(
            positiveText = androidx.compose.ui.platform.LocalContext.current.getString(R.string.ok),
            negativeText = androidx.compose.ui.platform.LocalContext.current.getString(R.string.cancel),
            positiveVisible = positiveVisible,
            onPositive = onPositive,
            onNegative = onDismiss,
        )
    }
}

@Composable
private fun PicaFaqCard(
    url: String,
    positiveVisible: Boolean,
    onPositive: () -> Unit,
    onDismiss: () -> Unit,
) {
    PicaDialogCard {
        AndroidView(
            factory = { context ->
                WebView(context).apply {
                    settings.javaScriptEnabled = true
                    loadUrl(url)
                }
            },
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(min = 420.dp, max = 620.dp),
        )
        Spacer(Modifier.height(16.dp))
        DialogButtons(
            positiveText = androidx.compose.ui.platform.LocalContext.current.getString(R.string.ok),
            negativeText = androidx.compose.ui.platform.LocalContext.current.getString(R.string.cancel),
            positiveVisible = positiveVisible,
            onPositive = onPositive,
            onNegative = onDismiss,
        )
    }
}

@Composable
private fun PicaDialogCard(content: @Composable ColumnScope.() -> Unit) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 20.dp, vertical = 24.dp),
        shape = RoundedCornerShape(8.dp),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        elevation = CardDefaults.cardElevation(defaultElevation = 6.dp),
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(0.dp),
            content = content,
        )
    }
}

@Composable
private fun DialogButtons(
    positiveText: String,
    negativeText: String?,
    positiveVisible: Boolean = true,
    onPositive: () -> Unit,
    onNegative: () -> Unit,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        negativeText?.let {
            TextButton(onClick = onNegative) {
                Text(text = it)
            }
        }
        if (positiveVisible) {
            Button(onClick = onPositive) {
                Text(text = positiveText)
            }
        }
    }
}
