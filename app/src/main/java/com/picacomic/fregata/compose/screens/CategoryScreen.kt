package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Forum
import androidx.compose.material.icons.filled.NewReleases
import androidx.compose.material.icons.filled.Shuffle
import androidx.compose.material.icons.filled.SportsEsports
import androidx.compose.material.icons.filled.VolunteerActivism
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaInfoChip
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.viewmodels.CategoryViewModel
import com.picacomic.fregata.objects.CategoryObject
import com.picacomic.fregata.objects.ThumbnailObject

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun CategoryScreen(
    viewModel: CategoryViewModel? = null,
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
    val context = LocalContext.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewState = if (inPreview) categoryPreviewState() else null

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, vm.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                Surface(
                    tonalElevation = 2.dp,
                    color = MaterialTheme.colorScheme.surface,
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 20.dp, vertical = 14.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        Text(
                            text = stringResource(R.string.title_category),
                            style = MaterialTheme.typography.titleLarge,
                        )
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.CenterVertically,
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
                                    },
                                ),
                                modifier = Modifier.weight(1f),
                            )
                            Button(
                                onClick = {
                                    val submitted = query.trim()
                                    if (submitted.isNotEmpty()) onSearch(submitted)
                                },
                            ) {
                                Text(text = stringResource(R.string.action_search))
                            }
                        }
                    }
                }
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            val categories = if (inPreview) previewState.orEmpty() else screenViewModel?.categories.orEmpty()
            val keywords = if (inPreview) categoryKeywordPreviewItems() else screenViewModel?.keywords.orEmpty()
            val defaultActions = listOf(
                CategoryAction(stringResource(R.string.category_title_leaderboard), Icons.Filled.VolunteerActivism, onLeaderboardClick),
                CategoryAction(stringResource(R.string.category_title_game), Icons.Filled.SportsEsports, onGameClick),
                CategoryAction(stringResource(R.string.category_title_love_pica), Icons.Filled.VolunteerActivism, onLovePicaClick),
                CategoryAction(stringResource(R.string.category_title_pica_forum), Icons.Filled.Forum, onForumClick),
                CategoryAction(stringResource(R.string.category_title_latest), Icons.Filled.NewReleases, onLatestClick),
                CategoryAction(stringResource(R.string.category_title_random), Icons.Filled.Shuffle, onRandomClick),
            )

            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(18.dp),
            ) {

                if (keywords.isNotEmpty()) {
                    item(key = "keywords_title") {
                        Text(
                            text = stringResource(R.string.category_keywords_list_title),
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.SemiBold,
                        )
                    }
                    item(key = "keywords") {
                        FlowRow(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            keywords.forEach { keyword ->
                                PicaInfoChip(
                                    text = keyword,
                                    onClick = { onSearch(keyword) },
                                )
                            }
                        }
                    }
                }

                item(key = "default_actions") {
                    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                        defaultActions.chunked(3).forEach { rowItems ->
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.spacedBy(10.dp),
                            ) {
                                rowItems.forEach { item ->
                                    CategoryActionCard(
                                        item = item,
                                        modifier = Modifier.weight(1f),
                                    )
                                }
                                repeat(3 - rowItems.size) {
                                    Box(modifier = Modifier.weight(1f))
                                }
                            }
                        }
                    }
                }

                item(key = "category_title") {
                    Text(
                        text = stringResource(R.string.category_list_title),
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.SemiBold,
                    )
                }

                categories.chunked(2).forEachIndexed { rowIndex, rowCategories ->
                    item(key = "category_row_$rowIndex") {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(10.dp),
                        ) {
                            rowCategories.forEach { category ->
                                RemoteCategoryCard(
                                    category = category,
                                    onClick = {
                                        val title = category.title.orEmpty()
                                        val link = category.link
                                        if (category.isWeb && !link.isNullOrBlank()) {
                                            onWebCategoryClick(title, link)
                                        } else if (title.isNotBlank()) {
                                            onCategoryClick(title)
                                        }
                                    },
                                    modifier = Modifier.weight(1f),
                                )
                            }
                            repeat(2 - rowCategories.size) {
                                Box(modifier = Modifier.weight(1f))
                            }
                        }
                    }
                }


            }
        }
    }
}

private data class CategoryAction(
    val title: String,
    val icon: ImageVector,
    val onClick: () -> Unit,
)

@Composable
private fun CategoryActionCard(
    item: CategoryAction,
    modifier: Modifier = Modifier,
) {
    Card(
        modifier = modifier
            .clip(MaterialTheme.shapes.medium)
            .clickable(onClick = item.onClick),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(1f)
                .padding(8.dp),
            contentAlignment = Alignment.Center,
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                Icon(
                    imageVector = item.icon,
                    contentDescription = item.title,
                    tint = MaterialTheme.colorScheme.primary,
                )
                Text(
                    text = item.title,
                    style = MaterialTheme.typography.labelMedium,
                    textAlign = TextAlign.Center,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
    }
}

@Composable
private fun RemoteCategoryCard(
    category: CategoryObject,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Card(
        modifier = modifier
            .clip(MaterialTheme.shapes.medium)
            .clickable(onClick = onClick),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
    ) {
        Column(
            modifier = Modifier.padding(10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            PicaRemoteImage(
                thumbnail = category.thumb,
                contentDescription = category.title,
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(16f / 9f)
                    .clip(MaterialTheme.shapes.small),
            )
            Text(
                text = category.title.orEmpty(),
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                text = category.description.orEmpty(),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

private fun categoryPreviewState(): List<CategoryObject> {
    return listOf(
        CategoryObject("1", "PicACG", "Translated picks", ThumbnailObject("https://storage1.picacomic.com", "translate.png", "translate.png"), false, null),
        CategoryObject("2", "Short", "Fast reads", ThumbnailObject("https://storage1.picacomic.com", "short.png", "short.png"), false, null),
        CategoryObject("3", "Long", "Serial works", ThumbnailObject("https://storage1.picacomic.com", "long.png", "long.png"), false, null),
        CategoryObject("4", "Web", "Partner link", ThumbnailObject("https://storage1.picacomic.com", "web.png", "web.png"), true, "https://www.picacomic.com"),
        CategoryObject("5", "Small monster", "No cropped cards", ThumbnailObject("https://storage1.picacomic.com", "monster.png", "monster.png"), false, null),
        CategoryObject("6", "Store", "Responsive row", ThumbnailObject("https://storage1.picacomic.com", "store.png", "store.png"), false, null),
    )
}

private fun categoryKeywordPreviewItems(): List<String> {
    return listOf("C96", "Pica pick", "School", "Uniform", "Ice", "Daily")
}

@Preview(showBackground = true)
@Composable
private fun CategoryScreenPreview() {
    CategoryScreen(
        onSearch = {},
        onCategoryClick = {},
        onWebCategoryClick = { _, _ -> },
    )
}
