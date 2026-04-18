package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.grid.LazyGridState
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.flow.distinctUntilChanged

@Composable
internal fun RememberListLoadMore(
    state: LazyListState,
    enabled: Boolean,
    buffer: Int = 2,
    onLoadMore: () -> Unit,
) {
    val currentOnLoadMore by rememberUpdatedState(onLoadMore)

    LaunchedEffect(state, enabled, buffer) {
        snapshotFlow {
            val lastVisible = state.layoutInfo.visibleItemsInfo.lastOrNull()?.index ?: -1
            lastVisible to state.layoutInfo.totalItemsCount
        }.distinctUntilChanged().collect { (lastVisible, totalCount) ->
            if (enabled && totalCount > 0 && lastVisible >= totalCount - 1 - buffer) {
                currentOnLoadMore()
            }
        }
    }
}

@Composable
internal fun RememberGridLoadMore(
    state: LazyGridState,
    enabled: Boolean,
    buffer: Int = 2,
    onLoadMore: () -> Unit,
) {
    val currentOnLoadMore by rememberUpdatedState(onLoadMore)

    LaunchedEffect(state, enabled, buffer) {
        snapshotFlow {
            val lastVisible = state.layoutInfo.visibleItemsInfo.lastOrNull()?.index ?: -1
            lastVisible to state.layoutInfo.totalItemsCount
        }.distinctUntilChanged().collect { (lastVisible, totalCount) ->
            if (enabled && totalCount > 0 && lastVisible >= totalCount - 1 - buffer) {
                currentOnLoadMore()
            }
        }
    }
}

@Composable
internal fun ListLoadingFooter(
    modifier: Modifier = Modifier,
) {
    Box(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 20.dp),
        contentAlignment = Alignment.Center,
    ) {
        CircularProgressIndicator()
    }
}
