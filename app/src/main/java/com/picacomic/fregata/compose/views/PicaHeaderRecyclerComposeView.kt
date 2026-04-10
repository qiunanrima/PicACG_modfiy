package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaHeaderRecyclerComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private val legacyContentView: View =
        LayoutInflater.from(context).inflate(R.layout.layout_compose_recycler_content, this, false)
    private val recyclerView: RecyclerView = legacyContentView.findViewById(R.id.recyclerView_compose_content)

    private var titleTextState by mutableStateOf("")
    private var backAction: Runnable? by mutableStateOf(null)

    fun getRecyclerView(): RecyclerView = recyclerView

    fun setTitleText(value: String) {
        titleTextState = value
    }

    fun setOnBackAction(value: Runnable?) {
        backAction = value
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
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 20.dp, vertical = 14.dp)
                    ) {
                        OutlinedButton(onClick = { backAction?.run() }) {
                            Text(text = context.getString(R.string.backbutton))
                        }
                        Text(
                            text = titleTextState,
                            style = MaterialTheme.typography.titleLarge,
                            modifier = Modifier.padding(top = 12.dp)
                        )
                    }
                }
                AndroidView(
                    factory = { legacyContentView },
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}
