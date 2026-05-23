package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.components.PicaProgressIndicator

@Composable
fun ProgressDialogContent(
    message: String?,
) {
    PicaComposeTheme {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
        ) {
            PicaProgressIndicator(
                modifier = Modifier.size(96.dp),
            )
            Text(
                text = message.orEmpty(),
                color = Color.White,
                style = PicaExpressiveType.BodyEmphasized,
            )
        }
    }
}

@Composable
fun ProgressLoadingContent() {
    PicaComposeTheme {
        Row(
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier.padding(top = 30.dp),
        ) {
            PicaProgressIndicator(
                modifier = Modifier.size(48.dp),
            )
        }
    }
}
