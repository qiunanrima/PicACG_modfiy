package com.picacomic.fregata.compose.screens

import android.Manifest
import android.content.Context
import android.media.MediaPlayer
import android.media.MediaRecorder
import android.net.Uri
import android.os.Build
import android.speech.tts.TextToSpeech
import android.widget.Toast
import androidx.activity.compose.BackHandler
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
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
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
import androidx.compose.material3.FilterChip
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.mutableStateListOf
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
import com.picacomic.fregata.objects.responses.ChatroomBlacklistObject
import com.picacomic.fregata.utils.FileProviderHelper
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import java.io.IOException

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
    var showSettingsDialog by remember { mutableStateOf(false) }
    var previewImage by remember { mutableStateOf<String?>(null) }
    val audioController = remember(context, inPreview) {
        ChatroomAudioController(
            context = context,
            onRecorded = { base64 -> if (!inPreview) viewModel.sendAudio(base64) },
            onToast = { text -> Toast.makeText(context, text, Toast.LENGTH_SHORT).show() },
        )
    }
    val imagePickerLauncher = rememberLauncherForActivityResult(ActivityResultContracts.GetContent()) { uri ->
        if (uri == null || inPreview) return@rememberLauncherForActivityResult
        val encoded = g.f(g.b(context, uri))
        if (encoded.isNotBlank()) {
            viewModel.sendImage(encoded)
        } else {
            Toast.makeText(context, R.string.chatroom_send_image, Toast.LENGTH_SHORT).show()
        }
    }
    val recordPermissionLauncher = rememberLauncherForActivityResult(ActivityResultContracts.RequestPermission()) { granted ->
        if (granted) audioController.startRecording() else Toast.makeText(context, "No Permission", Toast.LENGTH_SHORT).show()
    }

    LaunchedEffect(roomUrl) {
        if (!inPreview) {
            viewModel.start(roomUrl)
        }
    }

    DisposableEffect(Unit) {
        onDispose { audioController.release() }
    }

    ChatroomSpeechEffect(
        latestMessage = messages.firstOrNull(),
        enabled = !inPreview && viewModel.speechEnabled,
        withName = viewModel.speechWithName,
        language = viewModel.speechLanguage,
        myUserId = viewModel.userProfile?.userId,
    )

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
                    onImageClick = {
                        if (item.type == 11 && !item.at.isNullOrBlank()) {
                            g.A(context, item.at)
                        } else {
                            previewImage = item.image
                        }
                    },
                    onAudioClick = { audioController.playBase64(item.audio.orEmpty()) },
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
                imagePickerLauncher.launch("image/*")
            },
            onAudioClick = {
                if (audioController.isRecording) {
                    audioController.stopRecording()
                } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M &&
                    context.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != android.content.pm.PackageManager.PERMISSION_GRANTED
                ) {
                    recordPermissionLauncher.launch(Manifest.permission.RECORD_AUDIO)
                } else {
                    audioController.startRecording()
                }
            },
            isRecording = audioController.isRecording,
            onSettingsClick = { showSettingsDialog = true },
            adminMode = viewModel.adminMode,
            showAdminPanel = showAdminPanel,
            onAdminToggle = { showAdminPanel = !showAdminPanel },
        )
    }

    if (showSettingsDialog) {
        ChatroomSettingsDialog(
            viewModel = viewModel,
            onDismiss = { showSettingsDialog = false },
            onRefreshProfile = { viewModel.cd() },
        )
    }

    previewImage?.let { image ->
        AlertDialog(
            onDismissRequest = { previewImage = null },
            confirmButton = {
                TextButton(onClick = { previewImage = null }) { Text(stringResource(R.string.ok)) }
            },
            text = {
                AsyncImage(
                    model = ImageRequest.Builder(context)
                        .data(image)
                        .allowHardware(false)
                        .crossfade(true)
                        .build(),
                    contentDescription = null,
                    contentScale = ContentScale.Fit,
                    modifier = Modifier
                        .fillMaxWidth()
                        .heightIn(min = 220.dp, max = 520.dp),
                )
            },
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
    onImageClick: () -> Unit,
    onAudioClick: () -> Unit,
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
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(min = 120.dp, max = 260.dp)
                            .clickable(onClick = onImageClick),
                    )
                    !item.audio.isNullOrBlank() -> AssistChip(
                        onClick = onAudioClick,
                        leadingIcon = {
                            Icon(
                                imageVector = Icons.Filled.PlayArrow,
                                contentDescription = null,
                                modifier = Modifier.size(18.dp),
                            )
                        },
                        label = { Text(stringResource(R.string.chatroom_send_audio)) },
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
    isRecording: Boolean,
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
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
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
                    Icon(
                        Icons.Filled.Mic,
                        contentDescription = null,
                        tint = if (isRecording) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.onSurfaceVariant,
                    )
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
                    modifier = Modifier
                        .fillMaxWidth()
                        .horizontalScroll(rememberScrollState()),
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
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                blockLabels.take(blockMinutes.size).forEachIndexed { index, label ->
                    AssistChip(onClick = { onMute(blockMinutes[index]) }, label = { Text(label) })
                }
            }
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                avatarLabels.forEachIndexed { index, label ->
                    AssistChip(
                        onClick = {
                            if (index < 7) onSetAvatar(index + 1) else avatarExtraDialog = true
                        },
                        label = { Text(label) },
                    )
                }
            }
            Row(
                modifier = Modifier.horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
            ) {
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
private fun ChatroomSettingsDialog(
    viewModel: ChatroomViewModel,
    onDismiss: () -> Unit,
    onRefreshProfile: () -> Unit,
) {
    val context = LocalContext.current
    var nightMode by rememberSaveable { mutableStateOf(viewModel.nightMode) }
    var showTimestamp by rememberSaveable { mutableStateOf(viewModel.showTimestamp) }
    var fixImageSize by rememberSaveable { mutableStateOf(viewModel.fixImageSize) }
    var hideAvatar by rememberSaveable { mutableStateOf(viewModel.hideAvatar) }
    var speechEnabled by rememberSaveable { mutableStateOf(viewModel.speechEnabled) }
    var speechWithName by rememberSaveable { mutableStateOf(viewModel.speechWithName) }
    var speechLanguage by rememberSaveable { mutableStateOf(viewModel.speechLanguage) }
    var maxMessages by rememberSaveable { mutableStateOf(e.W(context).toString()) }
    var adsInterval by rememberSaveable { mutableStateOf(viewModel.adsIntervalSeconds.toString()) }
    var messageColorReverse by rememberSaveable { mutableStateOf(viewModel.messageColorReverse.toString()) }
    var customProfile by rememberSaveable { mutableStateOf("") }
    var showBlacklist by remember { mutableStateOf(false) }
    val languages = listOf(
        "chinese" to stringResource(R.string.chatroom_setting_speech_language_chinese),
        "cantonese" to stringResource(R.string.chatroom_setting_speech_language_cantonese),
        "japanese" to stringResource(R.string.chatroom_setting_speech_language_japanese),
        "english" to stringResource(R.string.chatroom_setting_speech_language_english),
    )

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(stringResource(R.string.chatroom_setting_title)) },
        text = {
            LazyColumn(
                verticalArrangement = Arrangement.spacedBy(10.dp),
                modifier = Modifier.heightIn(max = 560.dp),
            ) {
                item {
                    Text(
                        text = viewModel.userProfile?.let {
                            "${it.name.orEmpty()}\n${stringResource(R.string.level)}${it.level} (${it.exp}/${g.Z(it.level + 1)})"
                        }.orEmpty(),
                        style = MaterialTheme.typography.bodyMedium,
                    )
                }
                item {
                    TextButton(onClick = onRefreshProfile) {
                        Text(stringResource(R.string.profile_edit_update))
                    }
                }
                item { ChatroomSettingSwitch(stringResource(R.string.chatroom_setting_night_mode), nightMode) { nightMode = it } }
                item { ChatroomSettingSwitch(stringResource(R.string.chatroom_setting_timestamp), showTimestamp) { showTimestamp = it } }
                item { ChatroomSettingSwitch(stringResource(R.string.chatroom_setting_fix_image_size), fixImageSize) { fixImageSize = it } }
                item { ChatroomSettingSwitch(stringResource(R.string.chatroom_setting_hide_all_avatar), hideAvatar) { hideAvatar = it } }
                item { ChatroomSettingSwitch(stringResource(R.string.chatroom_setting_speech), speechEnabled) { speechEnabled = it } }
                item { ChatroomSettingSwitch(stringResource(R.string.chatroom_setting_speech_with_name), speechWithName) { speechWithName = it } }
                item {
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                        itemsIndexed(languages) { _, item ->
                            FilterChip(
                                selected = speechLanguage == item.first,
                                onClick = { speechLanguage = item.first },
                                label = { Text(item.second) },
                            )
                        }
                    }
                }
                item {
                    OutlinedTextField(
                        value = maxMessages,
                        onValueChange = { maxMessages = it.filter(Char::isDigit) },
                        label = { Text(stringResource(R.string.chatroom_setting_max_message_size)) },
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        singleLine = true,
                    )
                }
                item {
                    OutlinedTextField(
                        value = messageColorReverse,
                        onValueChange = { messageColorReverse = it.filter(Char::isDigit) },
                        label = { Text(stringResource(R.string.chatroom_setting_message_color_reverse)) },
                        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                        singleLine = true,
                    )
                }
                if (viewModel.adminMode) {
                    item {
                        OutlinedTextField(
                            value = adsInterval,
                            onValueChange = { adsInterval = it.filter(Char::isDigit) },
                            label = { Text(stringResource(R.string.chatroom_setting_ads_interval)) },
                            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                            singleLine = true,
                        )
                    }
                    item {
                        OutlinedTextField(
                            value = customProfile,
                            onValueChange = { customProfile = it },
                            label = { Text(stringResource(R.string.chatroom_setting_control_panel)) },
                            singleLine = true,
                        )
                    }
                }
                item {
                    TextButton(onClick = { showBlacklist = true }) {
                        Text("${stringResource(R.string.chatroom_setting_blacklist)} (${viewModel.blacklist.size})")
                    }
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    viewModel.updateChatroomSettings(
                        nightMode = nightMode,
                        showTimestamp = showTimestamp,
                        fixImageSize = fixImageSize,
                        hideAvatar = hideAvatar,
                        maxMessages = maxMessages.toIntOrNull() ?: 100,
                        speechEnabled = speechEnabled,
                        speechWithName = speechWithName,
                        speechLanguage = speechLanguage,
                        messageColorReverse = messageColorReverse.toIntOrNull() ?: 70,
                        adsIntervalSeconds = adsInterval.toIntOrNull() ?: 30,
                        customProfileText = customProfile,
                    )
                    onDismiss()
                },
            ) { Text(stringResource(R.string.ok)) }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) { Text(stringResource(R.string.cancel)) }
        },
    )

    if (showBlacklist) {
        ChatroomBlacklistDialog(
            blacklist = viewModel.blacklist,
            onRemove = viewModel::removeBlacklistAt,
            onClear = viewModel::clearBlacklist,
            onDismiss = { showBlacklist = false },
        )
    }
}

@Composable
private fun ChatroomSettingSwitch(
    label: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        Text(
            text = label,
            modifier = Modifier.weight(1f),
            style = MaterialTheme.typography.bodyMedium,
        )
        Switch(checked = checked, onCheckedChange = onCheckedChange)
    }
}

@Composable
private fun ChatroomBlacklistDialog(
    blacklist: List<ChatroomBlacklistObject>,
    onRemove: (Int) -> Unit,
    onClear: () -> Unit,
    onDismiss: () -> Unit,
) {
    val selected = remember(blacklist.size) { mutableStateListOf<Int>() }
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(stringResource(R.string.chatroom_setting_blacklist_clear)) },
        text = {
            if (blacklist.isEmpty()) {
                Text(stringResource(R.string.chatroom_setting_blacklist_empty))
            } else {
                LazyColumn(
                    modifier = Modifier.heightIn(max = 360.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    itemsIndexed(blacklist) { index, item ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    if (selected.contains(index)) selected.remove(index) else selected.add(index)
                                }
                                .padding(vertical = 4.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                        ) {
                            Checkbox(
                                checked = selected.contains(index),
                                onCheckedChange = {
                                    if (it) selected.add(index) else selected.remove(index)
                                },
                            )
                            Text(
                                text = item.username.orEmpty(),
                                modifier = Modifier.weight(1f),
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    selected.sortedDescending().forEach(onRemove)
                    onDismiss()
                },
            ) { Text(stringResource(R.string.ok)) }
        },
        dismissButton = {
            Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                TextButton(
                    onClick = {
                        onClear()
                        onDismiss()
                    },
                ) { Text(stringResource(R.string.chatroom_setting_blacklist_clear_all)) }
                TextButton(onClick = onDismiss) { Text(stringResource(R.string.cancel)) }
            }
        },
    )
}

@Composable
private fun ChatroomSpeechEffect(
    latestMessage: ChatMessageObject?,
    enabled: Boolean,
    withName: Boolean,
    language: String,
    myUserId: String?,
) {
    val context = LocalContext.current
    val tts = remember { TextToSpeech(context) {} }
    DisposableEffect(tts) {
        onDispose {
            tts.stop()
            tts.shutdown()
        }
    }
    LaunchedEffect(language) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            try {
                tts.language = com.picacomic.fregata.c.b.aD(language)
            } catch (_: Exception) {
            }
        }
    }
    LaunchedEffect(latestMessage, enabled, withName, myUserId) {
        val message = latestMessage ?: return@LaunchedEffect
        if (!enabled || message.userId == myUserId || Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) return@LaunchedEffect
        val content = when {
            !message.message.isNullOrBlank() -> message.message.orEmpty()
            !message.image.isNullOrBlank() -> "發了一張圖片"
            !message.audio.isNullOrBlank() -> "發了一段語音"
            else -> return@LaunchedEffect
        }
        val speech = if (withName) "：${message.name.orEmpty()}$content" else content
        try {
            tts.speak(speech, TextToSpeech.QUEUE_FLUSH, null, "chatroom_${message.uniqueId}_${message.message}")
        } catch (_: Exception) {
        }
    }
}

private class ChatroomAudioController(
    private val context: Context,
    private val onRecorded: (String) -> Unit,
    private val onToast: (String) -> Unit,
) {
    private var recorder: MediaRecorder? = null
    private var player: MediaPlayer? = null
    private var startedAt = 0L
    var isRecording by mutableStateOf(false)
        private set

    fun startRecording() {
        if (isRecording) return
        releasePlayer()
        val output = FileProviderHelper.getAudioRecordFile(context).absolutePath
        recorder = MediaRecorder().apply {
            setAudioSource(MediaRecorder.AudioSource.MIC)
            setOutputFormat(MediaRecorder.OutputFormat.THREE_GPP)
            setOutputFile(output)
            setAudioEncoder(MediaRecorder.AudioEncoder.AMR_NB)
            try {
                prepare()
                start()
                startedAt = System.currentTimeMillis()
                isRecording = true
                onToast(context.getString(R.string.chatroom_recording))
            } catch (error: IOException) {
                error.printStackTrace()
                releaseRecorder()
            } catch (error: RuntimeException) {
                error.printStackTrace()
                releaseRecorder()
            }
        }
    }

    fun stopRecording() {
        if (!isRecording) return
        val elapsed = System.currentTimeMillis() - startedAt
        val output = FileProviderHelper.getAudioRecordFile(context).absolutePath
        try {
            recorder?.stop()
        } catch (error: RuntimeException) {
            error.printStackTrace()
        } finally {
            releaseRecorder()
        }
        if (elapsed >= 1000L) {
            g.aB(output)?.takeIf { it.isNotBlank() }?.let(onRecorded)
        }
    }

    fun playBase64(audio: String) {
        if (audio.isBlank()) return
        releasePlayer()
        val output = FileProviderHelper.getAudioRecordFile(context).absolutePath
        g.G(audio, output)
        player = MediaPlayer().apply {
            try {
                setDataSource(output)
                prepare()
                setOnCompletionListener { releasePlayer() }
                start()
            } catch (error: IOException) {
                error.printStackTrace()
                releasePlayer()
            } catch (error: RuntimeException) {
                error.printStackTrace()
                releasePlayer()
            }
        }
    }

    fun release() {
        releaseRecorder()
        releasePlayer()
    }

    private fun releaseRecorder() {
        try {
            recorder?.release()
        } catch (_: Exception) {
        }
        recorder = null
        isRecording = false
    }

    private fun releasePlayer() {
        try {
            player?.release()
        } catch (_: Exception) {
        }
        player = null
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
