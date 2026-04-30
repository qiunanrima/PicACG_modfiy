package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
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
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.AlertDialog
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Chat
import androidx.compose.material.icons.automirrored.filled.Send
import androidx.compose.material.icons.filled.AlternateEmail
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Image
import androidx.compose.material.icons.filled.InsertEmoticon
import androidx.compose.material.icons.filled.Mic
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.FilterChip
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.viewmodels.ChatroomListViewModel
import com.picacomic.fregata.compose.viewmodels.ChatroomViewModel
import com.picacomic.fregata.objects.ChatMessageObject
import com.picacomic.fregata.objects.ChatroomListObject
import com.picacomic.fregata.utils.views.AlertDialogCenter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatroomListScreen(
    onBack: () -> Unit,
    onRoomClick: (ChatroomListObject) -> Unit,
    onAllRoomsClick: (List<ChatroomListObject>) -> Unit,
    onCustomPicaAppClick: () -> Unit = {},
    viewModel: ChatroomListViewModel? = null,
) {
    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_chatroom),
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
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { padding ->
            ChatroomListContent(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding),
                onRoomClick = onRoomClick,
                onAllRoomsClick = onAllRoomsClick,
                onCustomPicaAppClick = onCustomPicaAppClick,
                viewModel = viewModel,
            )
        }
    }
}

@Composable
fun ChatroomListContent(
    modifier: Modifier = Modifier,
    onRoomClick: (ChatroomListObject) -> Unit,
    onAllRoomsClick: (List<ChatroomListObject>) -> Unit,
    onCustomPicaAppClick: () -> Unit = {},
    viewModel: ChatroomListViewModel? = null,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val vm: ChatroomListViewModel? = if (inPreview) null else viewModel ?: viewModel()
    val previewRooms = rememberChatroomPreviewRooms()

    LaunchedEffect(vm) {
        if (!inPreview) {
            vm?.loadRooms(force = true)
        }
    }

    LaunchedEffect(vm?.errorEvent) {
        val model = vm ?: return@LaunchedEffect
        if (model.errorEvent <= 0) return@LaunchedEffect
        val code = model.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, model.errorBody.orEmpty()).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    val rooms = if (inPreview) previewRooms else vm?.rooms.orEmpty()
    when {
        !inPreview && vm?.isLoading == true && rooms.isEmpty() -> PicaLoadingIndicator()
        rooms.isEmpty() -> PicaEmptyState(message = "暂无聊天室")
        else -> LazyColumn(
            modifier = modifier,
            contentPadding = PaddingValues(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            itemsIndexed(rooms, key = { index, item -> item.url ?: "chatroom_$index" }) { _, room ->
                ChatroomListItem(room = room) {
                    if (room.url.equals("allchatroom", ignoreCase = true)) {
                        onAllRoomsClick(
                            rooms.filterNot {
                                it.url.equals("allchatroom", ignoreCase = true) ||
                                    it.url.equals("custompicaapp", ignoreCase = true)
                            },
                        )
                    } else if (room.url.equals("custompicaapp", ignoreCase = true)) {
                        onCustomPicaAppClick()
                    } else {
                        onRoomClick(room)
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatroomContainerScreen(
    rooms: List<ChatroomListObject>,
    onBack: () -> Unit,
) {
    val context = LocalContext.current
    var selectedTab by rememberSaveable(rooms.size) { mutableIntStateOf(0) }
    val safeRooms = rooms.ifEmpty { rememberChatroomPreviewRooms() }
    val currentRoom = safeRooms[selectedTab.coerceIn(safeRooms.indices)]

    LaunchedEffect(Unit) {
        AlertDialogCenter.chatroomRules(context)
    }

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                Column {
                    TopAppBar(
                        title = {
                            Text(
                                text = stringResource(R.string.title_chatroom),
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
                        ),
                        scrollBehavior = scrollBehavior,
                    )
                    TabRow(
                        selectedTabIndex = selectedTab,
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ) {
                        safeRooms.forEachIndexed { index, room ->
                            Tab(
                                selected = selectedTab == index,
                                onClick = { selectedTab = index },
                                text = {
                                    Text(
                                        text = room.title.orEmpty().ifBlank { "Room ${index + 1}" },
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
        ) { padding ->
            ChatroomContent(
                roomUrl = currentRoom.url,
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding),
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChatroomScreen(
    roomTitle: String,
    roomUrl: String?,
    onBack: () -> Unit,
) {
    val context = LocalContext.current
    BackHandler(onBack = onBack)
    LaunchedEffect(Unit) {
        AlertDialogCenter.chatroomRules(context)
    }
    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = roomTitle.ifBlank { stringResource(R.string.title_chatroom) },
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
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { padding ->
            ChatroomContent(
                roomUrl = roomUrl,
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding),
            )
        }
    }
}

@Composable
private fun ChatroomContent(
    roomUrl: String?,
    modifier: Modifier = Modifier,
    viewModel: ChatroomViewModel = viewModel(key = "chatroom_${roomUrl.orEmpty()}"),
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val messages = if (inPreview) rememberChatroomPreviewMessages() else viewModel.messages
    var showAdminPanel by remember { mutableStateOf(false) }

    LaunchedEffect(roomUrl) {
        if (!inPreview) {
            viewModel.start(roomUrl)
        }
    }

    LaunchedEffect(viewModel.errorEvent) {
        if (inPreview || viewModel.errorEvent <= 0) return@LaunchedEffect
        val code = viewModel.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, viewModel.errorBody.orEmpty()).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    LaunchedEffect(viewModel.messageEvent) {
        if (inPreview || viewModel.messageEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, viewModel.messageText.orEmpty(), Toast.LENGTH_SHORT).show()
    }

    Column(modifier = modifier) {
        if (viewModel.nightMode) {
            Surface(
                modifier = Modifier.fillMaxWidth(),
                color = MaterialTheme.colorScheme.scrim.copy(alpha = 0.18f),
            ) {
                Text(
                    text = "NIGHT ON",
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 4.dp),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
        ChatroomStatusBar(
            isConnected = inPreview || viewModel.isConnected,
            onlineCount = viewModel.onlineCount,
            notice = viewModel.connectionNotice,
        )
        ChatroomContextBar(
            replyName = viewModel.replyName,
            atText = viewModel.atText,
            privateTo = viewModel.privateTo?.name.orEmpty(),
            selectedName = viewModel.selectedTarget?.name.orEmpty(),
            onClear = viewModel::clearReplyAndAt,
        )
        if (showAdminPanel) {
            ChatroomAdminPanel(
                selectedName = viewModel.selectedTarget?.name.orEmpty(),
                onMute = viewModel::muteSelected,
                onSetAvatar = viewModel::setAvatarSelected,
                onSetAvatarExtra = viewModel::setAvatarExtraSelected,
                onChangeTitle = viewModel::changeTitleSelected,
                onToggleTime = { enabled ->
                    viewModel.toggleTime(viewModel.userProfile?.email.orEmpty(), enabled)
                },
                onToggleImage = { enabled ->
                    viewModel.toggleImage(viewModel.userProfile?.email.orEmpty(), enabled)
                },
                onAiTalk = viewModel::startAiTalk,
                onStopAi = viewModel::stopAiTalk,
            )
        }
        LazyColumn(
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth(),
            reverseLayout = true,
            contentPadding = PaddingValues(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            itemsIndexed(messages, key = { index, item -> item.uniqueId ?: "${item.userId}_${item.message}_$index" }) { _, item ->
                ChatroomMessageBubble(
                    item = item,
                    isMine = item.userId == viewModel.userProfile?.userId,
                    showTimestamp = viewModel.showTimestamp,
                    onReply = { viewModel.setReplyTarget(item) },
                    onPrivate = { viewModel.setPrivateTarget(item) },
                )
            }
        }
        ChatroomInputBar(
            value = if (inPreview) "" else viewModel.input,
            onValueChange = viewModel::updateInput,
            onSend = viewModel::cr,
            enabled = inPreview || viewModel.userProfile != null,
            isPublicChannel = viewModel.isPublicChannel,
            onChannelChange = viewModel::updatePublicChannel,
            onEmojiClick = viewModel::appendEmoji,
            onCommandClick = {
                viewModel.updateInput("@指令")
                viewModel.cr()
            },
            onImageClick = {
                Toast.makeText(context, R.string.chatroom_send_image, Toast.LENGTH_SHORT).show()
            },
            onAudioClick = {
                Toast.makeText(context, R.string.chatroom_send_audio, Toast.LENGTH_SHORT).show()
            },
            onSettingsClick = {
                AlertDialogCenter.showChatroomSettingDialog(
                    context,
                    viewModel.userProfile,
                    { viewModel.cd() },
                    { viewModel.refreshSettings() },
                )
            },
            adminMode = viewModel.adminMode,
            showAdminPanel = showAdminPanel,
            onAdminToggle = { showAdminPanel = !showAdminPanel },
        )
    }
}

@Composable
private fun ChatroomStatusBar(
    isConnected: Boolean,
    onlineCount: String,
    notice: String?,
) {
    Surface(
        color = MaterialTheme.colorScheme.surfaceContainerHighest,
        contentColor = MaterialTheme.colorScheme.onSurface,
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Icon(
                imageVector = Icons.AutoMirrored.Filled.Chat,
                contentDescription = null,
                tint = if (isConnected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Text(
                text = when {
                    notice != null -> notice
                    onlineCount.isNotBlank() -> stringResource(R.string.chatroom_connection_total_user) + onlineCount
                    isConnected -> stringResource(R.string.chatroom_setting_running)
                    else -> stringResource(R.string.loading_chat)
                },
                style = MaterialTheme.typography.bodyMedium,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

@Composable
private fun ChatroomMessageBubble(
    item: ChatMessageObject,
    isMine: Boolean,
    showTimestamp: Boolean,
    onReply: () -> Unit,
    onPrivate: () -> Unit,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = if (isMine) Arrangement.End else Arrangement.Start,
    ) {
        Card(
            modifier = Modifier.widthIn(max = 320.dp),
            shape = MaterialTheme.shapes.medium,
            colors = CardDefaults.cardColors(
                containerColor = if (isMine) {
                    MaterialTheme.colorScheme.primaryContainer
                } else {
                    MaterialTheme.colorScheme.surfaceContainerHighest
                },
                contentColor = if (isMine) {
                    MaterialTheme.colorScheme.onPrimaryContainer
                } else {
                    MaterialTheme.colorScheme.onSurface
                },
            ),
        ) {
            Column(
                modifier = Modifier
                    .clickable(onClick = onReply)
                    .padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    Text(
                        text = item.name.orEmpty().ifBlank { "Pica" },
                        style = MaterialTheme.typography.labelLarge,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    if (!item.title.isNullOrBlank()) {
                        Text(
                            text = item.title,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                }
                if (!item.replyName.isNullOrBlank() || !item.reply.isNullOrBlank()) {
                    Text(
                        text = "↪ ${item.replyName.orEmpty()} ${item.reply.orEmpty()}",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
                when {
                    !item.message.isNullOrBlank() -> Text(
                        text = item.message,
                        style = MaterialTheme.typography.bodyMedium,
                    )
                    !item.image.isNullOrBlank() -> AsyncImage(
                        model = ImageRequest.Builder(LocalContext.current)
                            .data(item.image)
                            .placeholder(R.drawable.placeholder_avatar_2)
                            .error(R.drawable.placeholder_avatar_2)
                            .fallback(R.drawable.placeholder_avatar_2)
                            .allowHardware(false)
                            .crossfade(true)
                            .build(),
                        contentDescription = null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.fillMaxWidth(),
                    )
                    !item.audio.isNullOrBlank() -> Text(
                        text = stringResource(R.string.chatroom_send_audio),
                        style = MaterialTheme.typography.bodyMedium,
                    )
                    else -> Text(
                        text = stringResource(R.string.chatroom_send_ads),
                        style = MaterialTheme.typography.bodyMedium,
                    )
                }
                Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    Text(
                        text = if (showTimestamp) item.platform.orEmpty().ifBlank { "android" } else "",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                    AssistChip(onClick = onPrivate, label = { Text("@") })
                }
            }
        }
    }
}

@Composable
private fun ChatroomInputBar(
    value: String,
    onValueChange: (String) -> Unit,
    onSend: () -> Unit,
    enabled: Boolean,
    isPublicChannel: Boolean,
    onChannelChange: (Boolean) -> Unit,
    onEmojiClick: (Int) -> Unit,
    onCommandClick: () -> Unit,
    onImageClick: () -> Unit,
    onAudioClick: () -> Unit,
    onSettingsClick: () -> Unit,
    adminMode: Boolean,
    showAdminPanel: Boolean,
    onAdminToggle: () -> Unit,
) {
    var showEmoji by remember { mutableStateOf(false) }
    Surface(
        color = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
        tonalElevation = 2.dp,
    ) {
        Column(modifier = Modifier.padding(12.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                FilterChip(
                    selected = isPublicChannel,
                    onClick = { onChannelChange(true) },
                    label = { Text("Public") },
                )
                FilterChip(
                    selected = !isPublicChannel,
                    onClick = { onChannelChange(false) },
                    label = { Text("Private") },
                )
                IconButton(onClick = { showEmoji = !showEmoji }) {
                    Icon(Icons.Filled.InsertEmoticon, contentDescription = null)
                }
                IconButton(onClick = onImageClick) {
                    Icon(Icons.Filled.Image, contentDescription = null)
                }
                IconButton(onClick = onAudioClick) {
                    Icon(Icons.Filled.Mic, contentDescription = null)
                }
                IconButton(onClick = onSettingsClick) {
                    Icon(Icons.Filled.Settings, contentDescription = null)
                }
                if (adminMode) {
                    FilterChip(
                        selected = showAdminPanel,
                        onClick = onAdminToggle,
                        label = { Text("Control") },
                    )
                }
            }
            if (showEmoji) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    chatroomEmojiCodes.take(12).forEach { code ->
                        AssistChip(
                            onClick = { onEmojiClick(code) },
                            label = { Text(String(Character.toChars(code))) },
                        )
                    }
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                IconButton(onClick = onCommandClick, enabled = enabled) {
                    Icon(Icons.Filled.AlternateEmail, contentDescription = null)
                }
                OutlinedTextField(
                    value = value,
                    onValueChange = onValueChange,
                    modifier = Modifier.weight(1f),
                    enabled = enabled,
                    singleLine = true,
                    placeholder = { Text(stringResource(R.string.chatroom_message_placeholder)) },
                    keyboardOptions = KeyboardOptions(imeAction = ImeAction.Send),
                )
                IconButton(
                    onClick = onSend,
                    enabled = enabled && value.isNotBlank(),
                ) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.Send,
                        contentDescription = null,
                    )
                }
            }
        }
    }
}

@Composable
private fun ChatroomContextBar(
    replyName: String,
    atText: String,
    privateTo: String,
    selectedName: String,
    onClear: () -> Unit,
) {
    if (replyName.isBlank() && atText.isBlank() && privateTo.isBlank() && selectedName.isBlank()) return
    Surface(color = MaterialTheme.colorScheme.secondaryContainer) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 6.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Text(
                text = listOfNotNull(
                    privateTo.takeIf { it.isNotBlank() }?.let { "Private: $it" },
                    selectedName.takeIf { it.isNotBlank() }?.let { "Target: $it" },
                    replyName.takeIf { it.isNotBlank() }?.let { "Reply: $it" },
                    atText.takeIf { it.isNotBlank() },
                ).joinToString("  "),
                modifier = Modifier.weight(1f),
                style = MaterialTheme.typography.labelMedium,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            IconButton(onClick = onClear) {
                Icon(Icons.Filled.Close, contentDescription = null)
            }
        }
    }
}

@Composable
private fun ChatroomAdminPanel(
    selectedName: String,
    onMute: (Int) -> Unit,
    onSetAvatar: (Int) -> Unit,
    onSetAvatarExtra: (Int) -> Unit,
    onChangeTitle: (String) -> Unit,
    onToggleTime: (Boolean) -> Unit,
    onToggleImage: (Boolean) -> Unit,
    onAiTalk: (intervalSeconds: Int, text: String) -> Unit,
    onStopAi: () -> Unit,
) {
    val blockLabels = stringArrayResource(R.array.block_time)
    val blockMinutes = intArrayOf(0, 1, 5, 15, 30, 60, 180, 1440, 4320, 10080)
    val avatarLabels = stringArrayResource(R.array.avatar)
    var titleDialog by remember { mutableStateOf(false) }
    var avatarExtraDialog by remember { mutableStateOf(false) }
    var aiDialog by remember { mutableStateOf(false) }
    var input by remember { mutableStateOf("") }
    var intervalInput by remember { mutableStateOf("") }

    Surface(color = MaterialTheme.colorScheme.tertiaryContainer) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Text(
                text = if (selectedName.isBlank()) "Control Panel" else "Target: $selectedName",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onTertiaryContainer,
            )
            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                blockLabels.take(blockMinutes.size).forEachIndexed { index, label ->
                    AssistChip(onClick = { onMute(blockMinutes[index]) }, label = { Text(label) })
                }
            }
            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                avatarLabels.forEachIndexed { index, label ->
                    AssistChip(
                        onClick = {
                            if (index < 7) onSetAvatar(index + 1) else avatarExtraDialog = true
                        },
                        label = { Text(label) },
                    )
                }
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = { titleDialog = true }) { Text(stringResource(R.string.alert_action_change_title)) }
                Button(onClick = { onToggleTime(true) }) { Text("Time ON") }
                Button(onClick = { onToggleTime(false) }) { Text("Time OFF") }
                Button(onClick = { onToggleImage(true) }) { Text("Image ON") }
                Button(onClick = { onToggleImage(false) }) { Text("Image OFF") }
                Button(onClick = { aiDialog = true }) { Text(stringResource(R.string.alert_action_ai_script_title)) }
                TextButton(onClick = onStopAi) { Text("Stop AI") }
            }
        }
    }

    if (titleDialog) {
        AlertDialog(
            onDismissRequest = { titleDialog = false },
            title = { Text(stringResource(R.string.alert_action_change_title)) },
            text = {
                OutlinedTextField(
                    value = input,
                    onValueChange = { input = it },
                    singleLine = true,
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    onChangeTitle(input)
                    input = ""
                    titleDialog = false
                }) { Text(stringResource(R.string.ok)) }
            },
            dismissButton = {
                TextButton(onClick = { titleDialog = false }) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    if (avatarExtraDialog) {
        AlertDialog(
            onDismissRequest = { avatarExtraDialog = false },
            title = { Text(stringResource(R.string.profile_edit_avatar)) },
            text = {
                OutlinedTextField(
                    value = input,
                    onValueChange = { input = it.filter(Char::isDigit) },
                    singleLine = true,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    onSetAvatarExtra(input.toIntOrNull() ?: -1)
                    input = ""
                    avatarExtraDialog = false
                }) { Text(stringResource(R.string.ok)) }
            },
            dismissButton = {
                TextButton(onClick = { avatarExtraDialog = false }) { Text(stringResource(R.string.cancel)) }
            },
        )
    }

    if (aiDialog) {
        AlertDialog(
            onDismissRequest = { aiDialog = false },
            title = { Text(stringResource(R.string.alert_action_ai_script_title)) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedTextField(
                        value = intervalInput,
                        onValueChange = { intervalInput = it.filter(Char::isDigit) },
                        label = { Text("Seconds") },
                        singleLine = true,
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                    )
                    OutlinedTextField(
                        value = input,
                        onValueChange = { input = it },
                        label = { Text("Message") },
                    )
                }
            },
            confirmButton = {
                TextButton(onClick = {
                    onAiTalk(intervalInput.toIntOrNull() ?: 0, input)
                    input = ""
                    intervalInput = ""
                    aiDialog = false
                }) { Text(stringResource(R.string.ok)) }
            },
            dismissButton = {
                TextButton(onClick = { aiDialog = false }) { Text(stringResource(R.string.cancel)) }
            },
        )
    }
}

@Composable
private fun ChatroomListItem(
    room: ChatroomListObject,
    onClick: () -> Unit,
) {
    val context = LocalContext.current
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
        shape = MaterialTheme.shapes.large,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerHighest),
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(room.avatar)
                    .placeholder(R.drawable.placeholder_avatar_2)
                    .error(R.drawable.placeholder_avatar_2)
                    .fallback(R.drawable.placeholder_avatar_2)
                    .allowHardware(false)
                    .crossfade(true)
                    .build(),
                contentDescription = null,
                contentScale = ContentScale.Crop,
                modifier = Modifier.widthIn(min = 72.dp, max = 72.dp),
            )
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = room.title.orEmpty(),
                    style = MaterialTheme.typography.titleMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    text = room.description.orEmpty(),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(top = 3.dp),
                )
            }
        }
    }
}

private fun rememberChatroomPreviewRooms(): List<ChatroomListObject> {
    return listOf(
        ChatroomListObject(null, "全部聊天室", "进入所有聊天室", "allchatroom"),
        ChatroomListObject(null, "哔咔大厅", "随便聊聊天吧", "https://chat.picacomic.com"),
    )
}

private fun rememberChatroomPreviewMessages(): List<ChatMessageObject> {
    return listOf(
        ChatMessageObject("1", "1", 12, "", "", "Miracle", "萌新", "f", "android", "", "", "", "", "新的 Compose 聊天室上线", "", "", "", 3, false, null, null, null, null),
        ChatMessageObject("2", "2", 8, "", "", "Pica", "绅士", "m", "android", "", "", "", "", "先把文字收发跑起来", "", "", "", 3, false, null, null, null, null),
    )
}

private val chatroomEmojiCodes = intArrayOf(
    128512, 128513, 128514, 128515, 128516, 128517,
    128518, 128519, 128520, 128521, 128522, 128523,
    128525, 128526, 128527, 128536, 128540, 128557,
    9994, 9995, 9996, 127828, 127867, 127861,
)

@Preview(showBackground = true)
@Composable
private fun ChatroomListScreenPreview() {
    ChatroomListScreen(
        onBack = {},
        onRoomClick = {},
        onAllRoomsClick = {},
    )
}
