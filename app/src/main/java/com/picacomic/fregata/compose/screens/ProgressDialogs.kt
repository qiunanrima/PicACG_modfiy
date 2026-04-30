package com.picacomic.fregata.compose.screens

import android.graphics.drawable.AnimationDrawable
import android.widget.ImageView
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.utils.e

@Composable
fun ProgressDialogContent(
    message: String?,
) {
    PicaComposeTheme {
        val context = LocalContext.current
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            ProgressIndicator(
                animationRes = R.drawable.loading_animation_big,
                modifier = Modifier.size(96.dp),
                useSystemProgress = e.x(context),
            )
            Text(
                text = message.orEmpty(),
                color = Color.White,
                fontWeight = FontWeight.Bold,
                style = MaterialTheme.typography.bodyLarge,
            )
        }
    }
}

@Composable
fun ProgressLoadingContent() {
    PicaComposeTheme {
        val context = LocalContext.current
        Row(
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.padding(top = 30.dp),
        ) {
            ProgressIndicator(
                animationRes = R.drawable.loading_animation,
                modifier = Modifier.size(48.dp),
                useSystemProgress = e.x(context),
            )
        }
    }
}

@Composable
private fun ProgressIndicator(
    animationRes: Int,
    modifier: Modifier = Modifier,
    useSystemProgress: Boolean,
) {
    if (useSystemProgress) {
        CircularProgressIndicator(modifier = modifier)
    } else {
        AndroidView(
            modifier = modifier,
            factory = { context ->
                ImageView(context).apply {
                    scaleType = ImageView.ScaleType.FIT_CENTER
                    setImageResource(animationRes)
                    (drawable as? AnimationDrawable)?.start()
                }
            },
            update = { imageView ->
                (imageView.drawable as? AnimationDrawable)?.start()
            },
            onRelease = { imageView ->
                (imageView.drawable as? AnimationDrawable)?.stop()
            },
        )
    }
}
