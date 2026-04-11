package com.picacomic.fregata.compose.screens

import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
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
 * Profile screen. The legacy XML content (avatar, level, tabs/ViewPager) is embedded
 * via [AndroidView]. A Compose top-bar with Edit button sits above.
 *
 * @param legacyContentView  Inflated [R.layout.layout_profile_compose_content].
 * @param onEdit  Called when the Edit button is tapped.
 */
@Composable
fun ProfileScreen(
    legacyContentView: View,
    onEdit: () -> Unit,
) {
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
                        .padding(horizontal = 20.dp, vertical = 14.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.title_profile),
                        style = MaterialTheme.typography.titleLarge
                    )
                    TextButton(onClick = onEdit) {
                        Text(text = stringResource(R.string.edit))
                    }
                }
            }
            AndroidView(
                factory = { legacyContentView },
                modifier = Modifier.fillMaxSize()
            )
        }
    }
}
