package com.picacomic.fregata.compose.screens

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.OpenInBrowser
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

private sealed class LovePicaPage {
    data object Directory : LovePicaPage()
    data object AnonymousChat : LovePicaPage()
    data class Chatroom(val title: String, val url: String?) : LovePicaPage()
    data class ChatroomContainer(val rooms: List<com.picacomic.fregata.objects.ChatroomListObject>) : LovePicaPage()
    data class PicaApp(val title: String, val link: String) : LovePicaPage()
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LovePicaContainerScreen(
    onBack: () -> Unit
) {
    var selectedTab by rememberSaveable { mutableIntStateOf(0) }
    var page by remember { mutableStateOf<LovePicaPage>(LovePicaPage.Directory) }

    fun backToList() {
        page = LovePicaPage.Directory
    }

    BackHandler {
        if (page == LovePicaPage.Directory) {
            onBack()
        } else {
            backToList()
        }
    }

    when (val currentPage = page) {
        LovePicaPage.AnonymousChat -> {
            AnonymousChatScreen(onBack = ::backToList)
        }

        is LovePicaPage.Chatroom -> {
            ChatroomScreen(
                roomTitle = currentPage.title,
                roomUrl = currentPage.url,
                onBack = ::backToList,
            )
        }

        is LovePicaPage.ChatroomContainer -> {
            ChatroomContainerScreen(
                rooms = currentPage.rooms,
                onBack = ::backToList,
            )
        }

        LovePicaPage.Directory -> {
            PicaComposeTheme {
                val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
                val tabs = listOf(
                    stringResource(R.string.title_chatroom),
                    stringResource(R.string.title_pica_app),
                )
                Scaffold(
                    modifier = Modifier
                        .fillMaxSize()
                        .nestedScroll(scrollBehavior.nestedScrollConnection),
                    topBar = {
                        Column {
                            TopAppBar(
                                title = {
                                    Text(
                                        text = stringResource(R.string.title_pica_app),
                                        style = MaterialTheme.typography.titleLarge,
                                        maxLines = 1,
                                        overflow = TextOverflow.Ellipsis,
                                    )
                                },
                                navigationIcon = {
                                    IconButton(onClick = onBack) {
                                        Icon(
                                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                            contentDescription = stringResource(R.string.back),
                                        )
                                    }
                                },
                                colors = TopAppBarDefaults.topAppBarColors(
                                    containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                                    scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                                    titleContentColor = MaterialTheme.colorScheme.onSurface,
                                    navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                                ),
                                scrollBehavior = scrollBehavior,
                            )
                            TabRow(
                                selectedTabIndex = selectedTab,
                                containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                            ) {
                                tabs.forEachIndexed { index, title ->
                                    Tab(
                                        selected = selectedTab == index,
                                        onClick = { selectedTab = index },
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
                    },
                    containerColor = MaterialTheme.colorScheme.background,
                ) { innerPadding ->
                    when (selectedTab) {
                        0 -> LovePicaChatTab(
                            modifier = Modifier
                                .fillMaxSize()
                                .padding(innerPadding),
                            onAnonymousChatClick = {
                                page = LovePicaPage.AnonymousChat
                            },
                            onPicaAppsClick = {
                                selectedTab = 1
                            },
                            onRoomClick = { room ->
                                page = LovePicaPage.Chatroom(
                                    title = room.title.orEmpty(),
                                    url = room.url,
                                )
                            },
                            onAllRoomsClick = { rooms ->
                                page = LovePicaPage.ChatroomContainer(rooms)
                            },
                        )

                        else -> PicaAppListContent(
                            modifier = Modifier
                                .fillMaxSize()
                                .padding(innerPadding),
                            onPicaAppClick = { title, link ->
                                if (title.equals("嗶咔萌約", ignoreCase = true)) {
                                    page = LovePicaPage.AnonymousChat
                                } else {
                                    page = LovePicaPage.PicaApp(title, link)
                                }
                            },
                        )
                    }
                }
            }
        }

        is LovePicaPage.PicaApp -> {
            PicaAppScreen(
                title = currentPage.title,
                link = currentPage.link,
                onBack = ::backToList,
            )
        }
    }
}

@Composable
private fun LovePicaChatTab(
    modifier: Modifier = Modifier,
    onAnonymousChatClick: () -> Unit,
    onPicaAppsClick: () -> Unit,
    onRoomClick: (com.picacomic.fregata.objects.ChatroomListObject) -> Unit,
    onAllRoomsClick: (List<com.picacomic.fregata.objects.ChatroomListObject>) -> Unit,
) {
    Column(modifier = modifier) {
        LazyColumn(
            modifier = Modifier.fillMaxWidth(),
            contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            item {
                LovePicaListItem(
                    title = "嗶咔萌約",
                    description = stringResource(R.string.title_chatroom),
                    leadingIcon = {
                        Icon(
                            imageVector = Icons.Filled.Favorite,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.tertiary,
                        )
                    },
                    onClick = onAnonymousChatClick,
                )
            }
            item {
                LovePicaListItem(
                    title = stringResource(R.string.title_pica_app),
                    description = "更多官方小程序入口",
                    leadingIcon = {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.Chat,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.primary,
                        )
                    },
                    onClick = onPicaAppsClick,
                )
            }
        }
        ChatroomListContent(
            modifier = Modifier.weight(1f),
            onRoomClick = onRoomClick,
            onAllRoomsClick = onAllRoomsClick,
            onCustomPicaAppClick = onPicaAppsClick,
        )
    }
}

@Composable
private fun LovePicaListItem(
    title: String,
    description: String,
    leadingIcon: @Composable () -> Unit,
    onClick: () -> Unit,
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ),
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            leadingIcon()
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(top = 2.dp),
                )
            }
            Icon(
                imageVector = Icons.Filled.OpenInBrowser,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun LovePicaContainerScreenPreview() {
    LovePicaContainerScreen(onBack = {})
}
