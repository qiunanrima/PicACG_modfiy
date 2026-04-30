package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.ExitToApp
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.viewmodels.AnonymousChatViewModel
import com.picacomic.fregata.objects.AnonymousChatDataObject

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AnonymousChatScreen(
    onBack: () -> Unit,
    viewModel: AnonymousChatViewModel? = null,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel: AnonymousChatViewModel? = if (inPreview) null else viewModel ?: viewModel()
    val previewMessages = remember {
        listOf(
            AnonymousChatDataObject("preview-1", "me", "我", "你好呀", "room"),
            AnonymousChatDataObject("preview-2", "other", "Miracle", "你好，今天想聊什么？", "room"),
            AnonymousChatDataObject("preview-3", "me", "我", "先匹配成功再说", "room"),
        )
    }
    var showExitDialog by remember { mutableStateOf(false) }

    LaunchedEffect(screenViewModel) {
        if (!inPreview) {
            screenViewModel?.start()
        }
    }

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

    LaunchedEffect(screenViewModel?.messageEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.messageEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, vm.messageText.orEmpty(), Toast.LENGTH_SHORT).show()
    }

    fun requestExit() {
        if (screenViewModel?.isMatched == true) {
            showExitDialog = true
        } else {
            onBack()
        }
    }

    BackHandler { requestExit() }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        if (showExitDialog) {
            AlertDialog(
                onDismissRequest = { showExitDialog = false },
                title = { Text(stringResource(R.string.anonymous_chat_exit_title)) },
                text = { Text(stringResource(R.string.anonymous_chat_exit_message)) },
                confirmButton = {
                    TextButton(
                        onClick = {
                            screenViewModel?.leaveCurrentRoom()
                            showExitDialog = false
                        },
                    ) {
                        Text(stringResource(R.string.ok))
                    }
                },
                dismissButton = {
                    TextButton(onClick = { showExitDialog = false }) {
                        Text(stringResource(R.string.cancel))
                    }
                },
            )
        }

        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_chatroom),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = ::requestExit) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back),
                            )
                        }
                    },
                    actions = {
                        if (screenViewModel?.isMatched == true || inPreview) {
                            IconButton(onClick = { showExitDialog = true }) {
                                Icon(
                                    imageVector = Icons.AutoMirrored.Filled.ExitToApp,
                                    contentDescription = stringResource(R.string.anonymous_chat_exit_title),
                                )
                            }
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            bottomBar = {
                if (inPreview || screenViewModel?.isMatched == true) {
                    AnonymousChatInputBar(
                        value = screenViewModel?.messageDraft ?: "",
                        onValueChange = { screenViewModel?.updateMessageDraft(it) },
                        onSend = { screenViewModel?.sendDraft() },
                        enabled = inPreview || screenViewModel?.isSocketConnected == true,
                    )
                }
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            if (screenViewModel?.isLoadingProfile == true) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(innerPadding),
                    contentAlignment = Alignment.Center,
                ) {
                    PicaLoadingIndicator()
                }
            } else {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(innerPadding)
                        .padding(16.dp),
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    val matched = inPreview || screenViewModel?.isMatched == true
                    if (matched) {
                        AnonymousChatRoomHeader(
                            matcherName = screenViewModel?.matcherName ?: "Miracle",
                            statusText = screenViewModel?.statusText ?: "Miracle joined",
                            connected = inPreview || screenViewModel?.isSocketConnected == true,
                        )
                        LazyColumn(
                            modifier = Modifier.weight(1f),
                            reverseLayout = true,
                            contentPadding = PaddingValues(vertical = 4.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            val currentUserId = screenViewModel?.userId.orEmpty()
                            val messages = if (inPreview) previewMessages else screenViewModel?.messages.orEmpty()
                            itemsIndexed(
                                items = messages,
                                key = { index, item -> item.id ?: "${item.userId}_${item.message}_$index" },
                            ) { _, item ->
                                AnonymousMessageBubble(
                                    item = item,
                                    mine = item.userId != null && item.userId.equals(currentUserId, ignoreCase = true),
                                )
                            }
                        }
                    } else {
                        AnonymousMatchPanel(
                            name = screenViewModel?.nameDraft.orEmpty(),
                            onNameChange = { screenViewModel?.updateNameDraft(it) },
                            onMatch = { screenViewModel?.cc() },
                            matching = screenViewModel?.isMatching == true,
                            connected = screenViewModel?.isSocketConnected == true,
                            statusText = screenViewModel?.statusText ?: "Welcome",
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun AnonymousMatchPanel(
    name: String,
    onNameChange: (String) -> Unit,
    onMatch: () -> Unit,
    matching: Boolean,
    connected: Boolean,
    statusText: String,
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ),
    ) {
        Column(
            modifier = Modifier.padding(18.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp),
        ) {
            Text(
                text = "匿名匹配",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold,
            )
            Text(
                text = statusText,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            OutlinedTextField(
                value = name,
                onValueChange = onNameChange,
                modifier = Modifier.fillMaxWidth(),
                singleLine = true,
                label = { Text(stringResource(R.string.anonymous_chat_name_hint)) },
            )
            Button(
                onClick = onMatch,
                enabled = connected && !matching && name.isNotBlank(),
                modifier = Modifier.fillMaxWidth(),
            ) {
                Icon(imageVector = Icons.Filled.Search, contentDescription = null)
                Text(
                    text = if (matching) "匹配中" else stringResource(R.string.anonymous_chat_match),
                    modifier = Modifier.padding(start = 8.dp),
                )
            }
            if (!connected) {
                Text(
                    text = "正在连接匿名聊天室",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}

@Composable
private fun AnonymousChatRoomHeader(
    matcherName: String,
    statusText: String,
    connected: Boolean,
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceContainerHighest,
        shape = MaterialTheme.shapes.large,
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = matcherName.ifBlank { "Anonymous" },
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    text = statusText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
            Text(
                text = if (connected) "在线" else "连接中",
                style = MaterialTheme.typography.labelMedium,
                color = if (connected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}

@Composable
private fun AnonymousMessageBubble(
    item: AnonymousChatDataObject,
    mine: Boolean,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = if (mine) Arrangement.End else Arrangement.Start,
    ) {
        Surface(
            modifier = Modifier.widthIn(max = 280.dp),
            shape = MaterialTheme.shapes.large,
            color = if (mine) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = if (mine) MaterialTheme.colorScheme.onPrimaryContainer else MaterialTheme.colorScheme.onSurface,
        ) {
            Column(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 10.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                if (!mine && !item.name.isNullOrBlank()) {
                    Text(
                        text = item.name,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.primary,
                    )
                }
                Text(
                    text = item.message.orEmpty(),
                    style = MaterialTheme.typography.bodyMedium,
                )
            }
        }
    }
}

@Composable
private fun AnonymousChatInputBar(
    value: String,
    onValueChange: (String) -> Unit,
    onSend: () -> Unit,
    enabled: Boolean,
) {
    Surface(
        tonalElevation = 3.dp,
        color = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            OutlinedTextField(
                value = value,
                onValueChange = onValueChange,
                modifier = Modifier.weight(1f),
                enabled = enabled,
                singleLine = true,
                placeholder = { Text(stringResource(R.string.chatroom_message_placeholder)) },
            )
            IconButton(
                onClick = onSend,
                enabled = enabled && value.isNotBlank(),
            ) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.Send,
                    contentDescription = stringResource(R.string.anonymous_chat_send),
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun AnonymousChatScreenPreview() {
    AnonymousChatScreen(onBack = {})
}
