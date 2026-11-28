package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.safeDrawingPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.components.PicaProgressIndicator

@Composable
fun ProgressDialogContent(
    message: String?,
) {
    PicaComposeTheme {
        Surface(
            shape = MaterialTheme.shapes.extraLarge,
            color = MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ) {
            Column(
                modifier = Modifier.padding(24.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                PicaProgressIndicator(
                    modifier = Modifier.size(48.dp),
                )
                Text(
                    text = message?.takeIf { it.isNotBlank() }
                        ?: stringResource(R.string.loading_general),
                    style = PicaExpressiveType.BodyEmphasized,
                    textAlign = TextAlign.Start,
                )
            }
        }
    }
}

@Composable
fun ProgressLoadingContent() {
    PicaComposeTheme {
        Row(
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.safeDrawingPadding().padding(top = 16.dp),
        ) {
            Surface(shape = CircleShape, color = MaterialTheme.colorScheme.surfaceContainerHighest) {
                PicaProgressIndicator(modifier = Modifier.padding(8.dp).size(48.dp))
            }
        }
    }
}
