package com.picacomic.fregata.compose.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.PrimaryTabRow
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRowDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarState
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextOverflow
import com.picacomic.fregata.compose.PicaExpressiveMotion

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PicaTabRow(
    selectedTabIndex: Int,
    tabs: List<String>,
    onTabSelected: (Int) -> Unit,
    modifier: Modifier = Modifier,
    containerColor: Color = MaterialTheme.colorScheme.surface,
    topAppBarState: TopAppBarState? = null,
) {
    if (tabs.isEmpty()) return
    val activeIndex = selectedTabIndex.coerceIn(tabs.indices)
    val background = animateColorAsState(
        targetValue = if ((topAppBarState?.overlappedFraction ?: 0f) > 0.01f) {
            MaterialTheme.colorScheme.surfaceContainer
        } else {
            containerColor
        },
        animationSpec = PicaExpressiveMotion.colorStateSpec(),
        label = "tabRowBackground",
    )
    PrimaryTabRow(
        selectedTabIndex = activeIndex,
        modifier = modifier,
        containerColor = background.value,
        indicator = {
            TabRowDefaults.PrimaryIndicator(
                modifier = Modifier.tabIndicatorOffset(activeIndex, matchContentSize = true),
                color = MaterialTheme.colorScheme.tertiary,
            )
        },
    ) {
        tabs.forEachIndexed { index, title ->
            Tab(
                selected = activeIndex == index,
                onClick = { onTabSelected(index) },
                selectedContentColor = MaterialTheme.colorScheme.tertiary,
                unselectedContentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                text = {
                    Text(
                        text = title,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                },
            )
        }
    }
}
