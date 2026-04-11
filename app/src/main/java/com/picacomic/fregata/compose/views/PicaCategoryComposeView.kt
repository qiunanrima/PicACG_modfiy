package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import android.widget.TextView
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.widget.NestedScrollView
import androidx.recyclerview.widget.RecyclerView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaCategoryComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private val legacyContentView: View =
        LayoutInflater.from(context).inflate(R.layout.layout_category_compose_content, this, false)
    private val scrollView: NestedScrollView = legacyContentView.findViewById(R.id.scrollView)
    private val keywordsTitleView: TextView =
        legacyContentView.findViewById(R.id.textView_category_keywords_title)
    private val keywordsContainer: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_category_keywords_list)
    private val tagsTitleView: TextView =
        legacyContentView.findViewById(R.id.textView_category_tags_title)
    private val tagsContainer: LinearLayout =
        legacyContentView.findViewById(R.id.linearLayout_category_tag_list)
    private val recyclerView: RecyclerView =
        legacyContentView.findViewById(R.id.recyclerView_category)

    private var queryState by mutableStateOf("")
    private var searchSubmitListener: OnStringChangedListener? by mutableStateOf(null)

    fun getScrollView(): NestedScrollView = scrollView
    fun getKeywordsContainer(): LinearLayout = keywordsContainer
    fun getTagsContainer(): LinearLayout = tagsContainer
    fun getRecyclerView(): RecyclerView = recyclerView

    fun setQuery(value: String) {
        queryState = value
    }

    fun setOnSearchSubmitListener(value: OnStringChangedListener?) {
        searchSubmitListener = value
    }

    fun setKeywordSectionVisible(value: Boolean) {
        val visibility = if (value) View.VISIBLE else View.GONE
        keywordsTitleView.visibility = visibility
        keywordsContainer.visibility = visibility
    }

    fun setTagSectionVisible(value: Boolean) {
        val visibility = if (value) View.VISIBLE else View.GONE
        tagsTitleView.visibility = visibility
        tagsContainer.visibility = visibility
    }

    @Preview
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
                            .padding(horizontal = 20.dp, vertical = 14.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Text(
                            text = context.getString(R.string.title_category),
                            style = MaterialTheme.typography.titleLarge
                        )
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            OutlinedTextField(
                                value = queryState,
                                onValueChange = { queryState = it },
                                label = { Text(text = context.getString(R.string.search_hint)) },
                                singleLine = true,
                                keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(
                                    imeAction = ImeAction.Search
                                ),
                                keyboardActions = androidx.compose.foundation.text.KeyboardActions(
                                    onSearch = {
                                        if (queryState.isNotBlank()) {
                                            searchSubmitListener?.onChanged(queryState)
                                        }
                                    }
                                ),
                                modifier = Modifier.weight(1f)
                            )
                            Button(
                                onClick = {
                                    if (queryState.isNotBlank()) {
                                        searchSubmitListener?.onChanged(queryState)
                                    }
                                }
                            ) {
                                Text(text = context.getString(R.string.action_search))
                            }
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
}
