package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Badge
import androidx.compose.material3.BadgedBox
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaHomeComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private val legacyContentView: View =
        LayoutInflater.from(context).inflate(R.layout.layout_home_compose_content, this, false)
    private val announcementsContainer: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_home_announcements)
    private val collection1Container: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_home_collection_1)
    private val collection2Container: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_home_collection_2)
    private val collection3Container: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_home_collection_3)
    private val collection4Container: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_home_collection_4)
    private val collection5Container: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_home_collection_5)

    private var hasNotificationState by mutableStateOf(false)
    private var notificationAction: Runnable? by mutableStateOf(null)

    fun getAnnouncementsContainer(): LinearLayout = announcementsContainer

    fun getCollectionContainer(index: Int): LinearLayout {
        return when (index) {
            0 -> collection1Container
            1 -> collection2Container
            2 -> collection3Container
            3 -> collection4Container
            else -> collection5Container
        }
    }

    fun setHasNotificationDot(value: Boolean) {
        hasNotificationState = value
    }

    fun setOnNotificationAction(value: Runnable?) {
        notificationAction = value
    }

    @Composable
    override fun Content() {
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
                            text = context.getString(R.string.title_home),
                            style = MaterialTheme.typography.titleLarge
                        )
                        BadgedBox(
                            badge = {
                                if (hasNotificationState) {
                                    Badge()
                                }
                            }
                        ) {
                            TextButton(onClick = { notificationAction?.run() }) {
                                Text(text = context.getString(R.string.title_notification))
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
}
