package com.picacomic.fregata.compose.screens

import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.weight
import androidx.compose.material3.Badge
import androidx.compose.material3.BadgedBox
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

/**
 * Home screen. The legacy XML scrollable content (announcements, comic collections)
 * is embedded via [AndroidView]. A Compose top-bar with notification badge sits above.
 *
 * @param legacyContentView  Inflated [R.layout.layout_home_compose_content].
 * @param hasNotification    Whether to show the notification badge dot.
 * @param onNotification     Called when the notification button is tapped.
 */
@Composable
fun HomeScreen(
    legacyContentView: View,
    hasNotification: Boolean,
    onNotification: () -> Unit,
) {
    PicaComposeTheme {
        androidx.compose.foundation.layout.Column(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 20.dp, vertical = 14.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.title_home),
                        style = MaterialTheme.typography.titleLarge
                    )
                    BadgedBox(
                        badge = { if (hasNotification) Badge() }
                    ) {
                        TextButton(onClick = onNotification) {
                            Text(text = stringResource(R.string.title_notification))
                        }
                    }
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { legacyContentView },
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}
