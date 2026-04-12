package com.picacomic.fregata.compose.screens

import android.app.Activity
import android.view.View
import android.widget.Button as LegacyButton
import android.widget.LinearLayout
import android.widget.TextView
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.compose.viewmodels.CategoryViewModel
import com.picacomic.fregata.adapters.CategoryRecyclerViewAdapter
import com.picacomic.fregata.utils.FullGridLayoutManager
import androidx.core.content.res.ResourcesCompat
import android.view.LayoutInflater
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.objects.DefaultCategoryObject
import com.picacomic.fregata.utils.g

/**
 * Category screen. The legacy XML content (RecyclerView, tags, keywords) is embedded
 * via [AndroidView]. Pure-Compose header with search bar sits on top.
 *
 * @param onSearch  Called with the query string when the user submits.
 */
@Composable
fun CategoryScreen(
    viewModel: CategoryViewModel = viewModel(),
    onSearch: (String) -> Unit,
    onCategoryClick: (String) -> Unit,
    onWebCategoryClick: (title: String, link: String) -> Unit = { _, _ -> },
    onLeaderboardClick: () -> Unit = {},
    onGameClick: () -> Unit = {},
    onLovePicaClick: () -> Unit = {},
    onForumClick: () -> Unit = {},
    onLatestClick: () -> Unit = {},
    onRandomClick: () -> Unit = {},
) {
    var query by rememberSaveable { mutableStateOf("") }
    val inPreview = LocalInspectionMode.current

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
                        text = stringResource(R.string.title_category),
                        style = MaterialTheme.typography.titleLarge
                    )
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        OutlinedTextField(
                            value = query,
                            onValueChange = { query = it },
                            label = { Text(text = stringResource(R.string.search_hint)) },
                            singleLine = true,
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search),
                            keyboardActions = KeyboardActions(
                                onSearch = {
                                    val submitted = query.trim()
                                    if (submitted.isNotEmpty()) onSearch(submitted)
                                }
                            ),
                            modifier = Modifier.weight(1f)
                        )
                        Button(
                            onClick = {
                                val submitted = query.trim()
                                if (submitted.isNotEmpty()) onSearch(submitted)
                            }
                        ) {
                            Text(text = stringResource(R.string.action_search))
                        }
                    }
                }
            }
            if (inPreview) {
                Box(modifier = Modifier.fillMaxSize())
            } else {
                AndroidView(
                    factory = { context ->
                        LayoutInflater.from(context)
                            .inflate(R.layout.layout_category_compose_content, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        val recyclerView =
                            view.findViewById<androidx.recyclerview.widget.RecyclerView>(R.id.recyclerView_category)
                        val tagsTitle =
                            view.findViewById<TextView>(R.id.textView_category_tags_title)
                        val tagsContainer =
                            view.findViewById<LinearLayout>(R.id.linearLayout_category_tag_list)
                        val keywordsTitle =
                            view.findViewById<TextView>(R.id.textView_category_keywords_title)
                        val keywordsContainer =
                            view.findViewById<LinearLayout>(R.id.linearLayout_category_keywords_list)

                        val defaultCategories = buildDefaultCategories(view)
                        val categoriesSnapshot = ArrayList(viewModel.categories)
                        val defaultSize = defaultCategories.size

                        if (recyclerView.layoutManager == null) {
                            recyclerView.layoutManager = FullGridLayoutManager(view.context, 3)
                            recyclerView.isNestedScrollingEnabled = false
                        }
                        recyclerView.adapter = CategoryRecyclerViewAdapter(
                            view.context,
                            defaultCategories,
                            categoriesSnapshot,
                            object : com.picacomic.fregata.a_pkg.k {
                                override fun C(i: Int) {
                                    when (i) {
                                        1 -> onLeaderboardClick()
                                        2 -> onGameClick()
                                        4 -> onLovePicaClick()
                                        5 -> onForumClick()
                                        6 -> onLatestClick()
                                        7 -> onRandomClick()
                                        else -> {
                                            if (i < defaultSize) {
                                                return
                                            }
                                            val realIndex = i - defaultSize
                                            if (realIndex in categoriesSnapshot.indices) {
                                                val category = categoriesSnapshot[realIndex]
                                                val title = category.title ?: return
                                                val link = category.link
                                                if (category.isWeb && !link.isNullOrEmpty()) {
                                                    onWebCategoryClick(title, link)
                                                } else {
                                                    onCategoryClick(title)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        )

                        tagsTitle.visibility = View.GONE
                        tagsContainer.visibility = View.GONE

                        keywordsContainer.removeAllViews()
                        if (viewModel.keywords.isEmpty()) {
                            keywordsTitle.visibility = View.GONE
                            keywordsContainer.visibility = View.GONE
                        } else {
                            keywordsTitle.visibility = View.VISIBLE
                            keywordsContainer.visibility = View.VISIBLE
                            val buttons = Array(viewModel.keywords.size) { index ->
                                LegacyButton(view.context, null, R.style.KeywordButton).apply {
                                    setTextColor(
                                        ResourcesCompat.getColor(
                                            view.resources,
                                            R.color.orangeDark,
                                            view.context.theme
                                        )
                                    )
                                    background = ResourcesCompat.getDrawable(
                                        view.resources,
                                        R.drawable.button_keyword_bg,
                                        view.context.theme
                                    )
                                    text = viewModel.keywords[index]
                                    tag = viewModel.keywords[index]
                                    setOnClickListener { keywordView ->
                                        val keyword = keywordView.tag as? String ?: return@setOnClickListener
                                        onSearch(keyword)
                                    }
                                }
                            }
                            val activity = view.context as? Activity
                            if (activity != null) {
                                g.a(keywordsContainer, buttons, activity, null)
                            } else {
                                buttons.forEach { keywordsContainer.addView(it) }
                            }
                        }
                    }
                )
            }
        }
    }
}

private fun buildDefaultCategories(view: View): ArrayList<DefaultCategoryObject> {
    val resources = view.resources
    return arrayListOf(
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_support),
            resources.getString(R.string.category_title_support),
            R.drawable.cat_support
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_leaderboard),
            resources.getString(R.string.category_title_leaderboard),
            R.drawable.cat_leaderboard
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_game),
            resources.getString(R.string.category_title_game),
            R.drawable.cat_game
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_ads),
            resources.getString(R.string.category_title_ads),
            R.drawable.cat_love_pica
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_love_pica),
            resources.getString(R.string.category_title_love_pica),
            R.drawable.cat_love_pica
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_pica_forum),
            resources.getString(R.string.category_title_pica_forum),
            R.drawable.cat_forum
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_latest),
            resources.getString(R.string.category_title_latest),
            R.drawable.cat_latest
        ),
        DefaultCategoryObject(
            "",
            resources.getString(R.string.category_title_random),
            resources.getString(R.string.category_title_random),
            R.drawable.cat_random
        )
    )
}

@Preview(showBackground = true)
@Composable
private fun CategoryScreenPreview() {
    CategoryScreen(
        onSearch = {},
        onCategoryClick = {},
        onWebCategoryClick = { _, _ -> }
    )
}
