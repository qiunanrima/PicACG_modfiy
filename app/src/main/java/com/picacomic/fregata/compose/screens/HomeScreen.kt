package com.picacomic.fregata.compose.screens

import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.compose.viewmodels.HomeViewModel
import com.picacomic.fregata.holders.AnnouncementContainerView
import com.picacomic.fregata.holders.ComicCollectionView

import androidx.compose.material3.Badge
import androidx.compose.material3.BadgedBox
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
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

@Preview
@Composable
fun HomeScreen(
    viewModel: HomeViewModel = viewModel(),
    onNotification: () -> Unit,
    onComicClick: (String) -> Unit,
    onMoreClick: (String) -> Unit, // category name
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
                        badge = { if (viewModel.hasNotification) Badge() }
                    ) {
                        TextButton(onClick = onNotification) {
                            Text(text = stringResource(R.string.title_notification))
                        }
                    }
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context ->
                        android.view.LayoutInflater.from(context).inflate(R.layout.layout_home_compose_content, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        val announcementsContainer = view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_announcements)
                        val collectionContainers = listOf(
                            view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_1),
                            view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_2),
                            view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_3),
                            view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_4),
                            view.findViewById<android.widget.LinearLayout>(R.id.linearLayout_home_collection_5)
                        )

                        // Render Announcements
                        announcementsContainer?.removeAllViews()
                        if (viewModel.announcements.isNotEmpty() && announcementsContainer != null) {
                            val announcementView = AnnouncementContainerView(view.context, ArrayList(viewModel.announcements), 0, { onNotification() }, { onNotification() })
                            announcementView.textView_title?.setText(R.string.title_notification)
                            announcementsContainer.addView(announcementView)
                        }

                        announcementsContainer.visibility = View.GONE


                        // Render Collections
                        collectionContainers.forEach { it?.removeAllViews() }
                        viewModel.collections.take(5).forEachIndexed { index, collection ->
                            try {
                                val baseTag = (index * 10) + 10000
                                val collectionView = ComicCollectionView(
                                    view.context, 
                                    ArrayList(collection.comics), 
                                    baseTag, 
                                    { v ->
                                        val tag = v.tag as? Int ?: return@ComicCollectionView
                                        val comicIndex = tag - baseTag
                                        if (comicIndex >= 0 && comicIndex < collection.comics.size) {
                                            onComicClick(collection.comics[comicIndex].comicId)
                                        }
                                    }, 
                                    { onMoreClick(collection.title) }
                                )
                                collectionView.textView_title?.text = collection.title
                                collectionContainers[index]?.addView(collectionView)
                            } catch (e: Exception) {
                                e.printStackTrace()
                            }
                        }
                    }
                )
            }
        }
    }
}
