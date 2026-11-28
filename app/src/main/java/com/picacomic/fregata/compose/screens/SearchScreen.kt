package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyHorizontalGrid
import androidx.compose.foundation.lazy.grid.items as gridItems
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.DeleteSweep
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.setValue
import androidx.compose.runtime.getValue
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.components.PicaInfoChip
import com.picacomic.fregata.compose.viewmodels.CategoryViewModel

private const val SEARCH_PREFS = "search_history"
private const val SEARCH_KEY = "queries"

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SearchScreen(
    onSearch: (String) -> Unit,
    onBack: () -> Unit,
    onCategoryClick: (String) -> Unit = {},
    viewModel: CategoryViewModel? = null,
) {
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    var query by rememberSaveable { mutableStateOf("") }
    var history by remember { mutableStateOf(loadSearchHistory(context)) }
    val keywords = screenViewModel?.keywords.orEmpty()
    val popularCategories = screenViewModel?.categories.orEmpty()
        .filter { category ->
            category.title.orEmpty().contains("大家都在看") ||
                category.title.orEmpty().contains("都在看") ||
                category.thumb?.originalName.orEmpty().contains("every-see", ignoreCase = true)
        }

    fun submit(value: String) {
        val cleaned = value.trim()
        if (cleaned.isEmpty()) return
        history = listOf(cleaned) + history.filterNot { it.equals(cleaned, ignoreCase = true) }
        saveSearchHistory(context, history)
        onSearch(cleaned)
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = { Text(stringResource(R.string.title_search)) },
                    scrollBehavior = scrollBehavior,
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = stringResource(R.string.action_back))
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                    ),
                )
            },
            containerColor = MaterialTheme.colorScheme.surface,
        ) { padding ->
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding)
                    .consumeWindowInsets(padding)
                    .imePadding()
                    .padding(horizontal = 16.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(14.dp),
            ) {
                OutlinedTextField(
                    value = query,
                    onValueChange = { query = it },
                    modifier = Modifier.fillMaxWidth(),
                    label = { Text(stringResource(R.string.search_hint)) },
                    singleLine = true,
                    leadingIcon = { Icon(Icons.Filled.Search, contentDescription = null) },
                    keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search),
                    keyboardActions = KeyboardActions(onSearch = { submit(query) }),
                )

                if (keywords.isNotEmpty()) {
                    Text(
                        text = stringResource(R.string.category_keywords_list_title),
                        style = PicaExpressiveType.SectionEmphasized,
                        color = MaterialTheme.colorScheme.tertiary,
                    )
                    val visibleKeywords = keywords.take(40)
                    Column(
                        modifier = Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()),
                        verticalArrangement = Arrangement.spacedBy(6.dp),
                    ) {
                        repeat(minOf(2, visibleKeywords.size)) { row ->
                            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                                for (index in row until visibleKeywords.size step 2) {
                                    val item = visibleKeywords[index]
                                    PicaInfoChip(
                                        text = item,
                                        onClick = { query = item; submit(item) },
                                    )
                                }
                            }
                        }
                    }
                }
                if (history.isNotEmpty()) {
                    Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                        Text(stringResource(R.string.search_history_title), style = PicaExpressiveType.SectionEmphasized, modifier = Modifier.weight(1f))
                        IconButton(onClick = { history = emptyList(); saveSearchHistory(context, history) }) {
                            Icon(Icons.Filled.DeleteSweep, contentDescription = stringResource(R.string.search_history_clear))
                        }
                    }
                    FlowRow(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp),
                    ) {
                        history.forEach { item ->
                            PicaInfoChip(text = item, onClick = { query = item; submit(item) })
                        }
                    }
                }
                if (false && popularCategories.isNotEmpty()) {
                    Text(stringResource(R.string.search_popular_title), style = PicaExpressiveType.SectionEmphasized)
                    LazyHorizontalGrid(
                        rows = GridCells.Fixed(2),
                        modifier = Modifier.fillMaxWidth().height(96.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp),
                    ) {
                        gridItems(popularCategories, key = { it.title.orEmpty() }) { item ->
                            PicaInfoChip(text = item.title.orEmpty(), onClick = { onCategoryClick(item.title.orEmpty()) })
                        }
                    }
                }
            }
        }
    }
}

private fun loadSearchHistory(context: android.content.Context): List<String> =
    context.getSharedPreferences(SEARCH_PREFS, android.content.Context.MODE_PRIVATE)
        .getString(SEARCH_KEY, "").orEmpty().split('\n').filter { it.isNotBlank() }

private fun saveSearchHistory(context: android.content.Context, values: List<String>) {
    context.getSharedPreferences(SEARCH_PREFS, android.content.Context.MODE_PRIVATE)
        .edit().putString(SEARCH_KEY, values.joinToString("\n")).apply()
}
