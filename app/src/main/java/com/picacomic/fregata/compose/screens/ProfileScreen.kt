package com.picacomic.fregata.compose.screens

import androidx.compose.material.icons.Icons
import androidx.compose.material3.Icon
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics

import android.Manifest
import android.app.Activity
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.provider.MediaStore
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.border
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.FilledTonalIconButton
import androidx.compose.material.icons.automirrored.filled.ArrowForward
import androidx.compose.ui.text.font.FontWeight
import com.picacomic.fregata.compose.components.PicaChoiceRow
import com.picacomic.fregata.compose.components.PicaRecommendationCard
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.core.content.ContextCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.BaseActivity
import com.picacomic.fregata.activities.ImageCropActivity
import com.picacomic.fregata.b.c
import androidx.compose.ui.res.stringArrayResource
import com.picacomic.fregata.compose.components.PicaSingleChoiceDialog
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.components.PicaComicListCard
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaImageUrl
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaMetricRow
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.components.PicaTabRow
import com.picacomic.fregata.compose.components.PicaUserAvatar
import com.picacomic.fregata.compose.viewmodels.CommentViewModel
import com.picacomic.fregata.compose.viewmodels.ProfileComicViewModel
import com.picacomic.fregata.compose.viewmodels.ProfileViewModel
import com.picacomic.fregata.objects.ComicListObject
import com.picacomic.fregata.objects.CommentWithReplyObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.objects.UserBasicObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.FileProviderHelper
import com.picacomic.fregata.utils.views.AlertDialogCenter
import kotlin.math.max

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProfileScreen(
    onEdit: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onGameClick: (String) -> Unit = {},
    onComicListClick: (String) -> Unit = {},
    refreshEvent: Int = 0,
    offlineMode: Boolean = false,
    viewModel: ProfileViewModel? = null,
) {
    val context = LocalContext.current
    val activity = context as? Activity
    val lifecycleOwner = LocalLifecycleOwner.current
    val inPreview = LocalInspectionMode.current
    var showPhotoSource by rememberSaveable { mutableStateOf(false) }
    var pendingCameraUri by rememberSaveable { mutableStateOf<String?>(null) }
    var selectedTab by rememberSaveable { mutableStateOf(0) }
    val screenViewModel = previewAwareViewModel(viewModel)
    val profileComicViewModel: ProfileComicViewModel? = if (inPreview) null else viewModel()
    val profileCommentViewModel: CommentViewModel? = if (inPreview) null else viewModel(key = "profile_comments")
    val previewProfile = if (inPreview) profileScreenPreviewUser() else null

    val cropLauncher = if (inPreview) {
        null
    } else {
        rememberLauncherForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
            if (result.resultCode != Activity.RESULT_OK) return@rememberLauncherForActivityResult
            val cropResultUri = result.data?.getStringExtra("CROP_IMAGE_RESULT_URI")
            if (!cropResultUri.isNullOrEmpty()) {
                screenViewModel?.onAvatarCropped(cropResultUri)
            }
        }
    }

    val galleryLauncher = if (inPreview) {
        null
    } else {
        rememberLauncherForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
            if (result.resultCode != Activity.RESULT_OK) return@rememberLauncherForActivityResult
            val selectedUri = result.data?.data ?: return@rememberLauncherForActivityResult
            cropLauncher?.launch(
                Intent(context, ImageCropActivity::class.java).apply {
                    putExtra("KEY_ACTION_TYPE", 1)
                    putExtra("KEY_IMAGE_URI_STRING", selectedUri.toString())
                },
            )
        }
    }

    val cameraLauncher = if (inPreview) {
        null
    } else {
        rememberLauncherForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
            if (result.resultCode != Activity.RESULT_OK) return@rememberLauncherForActivityResult
            val cameraUri = pendingCameraUri ?: return@rememberLauncherForActivityResult
            cropLauncher?.launch(
                Intent(context, ImageCropActivity::class.java).apply {
                    putExtra("KEY_ACTION_TYPE", 1)
                    putExtra("KEY_IMAGE_URI_STRING", cameraUri)
                },
            )
        }
    }

    val selectPhotoSource: (Int) -> Unit = select@{ source ->
        if (source == 0) {
            if (ContextCompat.checkSelfPermission(context, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
                (activity as? BaseActivity)?.requestCameraPermission()
                return@select
            }
            val photoFile = FileProviderHelper.getCameraOutputFile(context)
            val photoUri = FileProviderHelper.getUriForFile(context, photoFile)
            pendingCameraUri = photoUri.toString()
            cameraLauncher?.launch(
                Intent(MediaStore.ACTION_IMAGE_CAPTURE).apply {
                    putExtra(MediaStore.EXTRA_OUTPUT, photoUri)
                    addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
                },
            )
        } else {
            val pickIntent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                Intent(MediaStore.ACTION_PICK_IMAGES)
            } else {
                Intent(Intent.ACTION_PICK).setType("image/*")
            }
            galleryLauncher?.launch(pickIntent)
        }
    }

    val onAvatarClick: () -> Unit = {
        if (!inPreview && !offlineMode) showPhotoSource = true
    }

    LaunchedEffect(refreshEvent) {
        if (!inPreview) {
            if (offlineMode) {
                screenViewModel?.loadCachedProfileOnly()
                profileComicViewModel?.loadOffline()
            } else {
                screenViewModel?.loadProfile(force = refreshEvent > 0)
                profileComicViewModel?.load(force = refreshEvent > 0)
            }
        }
    }

    LaunchedEffect(screenViewModel?.userProfile?.userId) {
        val profile = screenViewModel?.userProfile ?: return@LaunchedEffect
        if (!inPreview && !offlineMode) {
            profileCommentViewModel?.init(
                userId = profile.userId,
                userBasic = UserBasicObject(profile),
                force = true,
            )
        }
    }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME && !inPreview && !offlineMode) {
                screenViewModel?.loadProfile(force = true)
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    LaunchedEffect(screenViewModel?.hasPendingPunchInSuccess) {
        if (screenViewModel?.consumePunchInSuccess() == true) {
            android.widget.Toast.makeText(context, R.string.alert_punch_in_success, android.widget.Toast.LENGTH_SHORT).show()
        }
    }

    LaunchedEffect(screenViewModel?.levelUpEvent) {
        if ((screenViewModel?.levelUpEvent ?: 0) > 0) {
            AlertDialogCenter.levelUp(context)
        }
    }

    LaunchedEffect(screenViewModel?.errorEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) c(context, code, vm.errorBody).dN() else c(context).dN()
    }

    LaunchedEffect(profileComicViewModel?.errorEvent) {
        val vm = profileComicViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) c(context, code, vm.errorBody).dN() else c(context).dN()
    }

    LaunchedEffect(profileCommentViewModel?.errorEvent) {
        val vm = profileCommentViewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) c(context, code, vm.errorBody).dN() else c(context).dN()
    }

    PicaComposeTheme {
        if (showPhotoSource) {
            PicaSingleChoiceDialog(
                title = stringResource(R.string.alert_dialog_select_title),
                options = stringArrayResource(R.array.alert_dialog_photo_chooser).toList(),
                selectedIndex = -1,
                onSelect = selectPhotoSource,
                onDismiss = { showPhotoSource = false },
            )
        }
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_profile),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    },
                    actions = {
                        TextButton(onClick = onEdit) {
                            Text(text = stringResource(R.string.edit))
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.surface,
        ) { innerPadding ->
            val profile = if (inPreview) previewProfile else screenViewModel?.userProfile
            BoxWithConstraints(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
                    .consumeWindowInsets(innerPadding),
            ) {
                val useTwoPane = maxWidth >= 840.dp && maxWidth > maxHeight
                Row(modifier = Modifier.fillMaxSize()) {
                    if (useTwoPane) {
                        LazyColumn(
                            modifier = Modifier
                                .weight(0.82f)
                                .fillMaxSize(),
                            contentPadding = PaddingValues(start = 16.dp, top = 16.dp, end = 8.dp, bottom = 16.dp),
                            verticalArrangement = Arrangement.spacedBy(16.dp),
                        ) {
                            item {
                                ProfileHeader(
                                    profile = profile,
                                    avatarPreviewUri = screenViewModel?.avatarPreviewUri,
                                    isPunchingIn = screenViewModel?.isPunchingIn == true,
                                    offlineMode = offlineMode,
                                    onAvatarClick = onAvatarClick,
                                    onPunchIn = {
                                        if (!offlineMode) {
                                            screenViewModel?.punchIn()
                                        }
                                    },
                                )
                            }
                            item {
                                ProfileSloganCard(profile = profile)
                            }
                        }
                    }

                    LazyColumn(
                        modifier = Modifier
                            .weight(if (useTwoPane) 1.18f else 1f)
                            .fillMaxSize(),
                        contentPadding = if (useTwoPane) {
                            PaddingValues(start = 8.dp, top = 16.dp, end = 16.dp, bottom = 16.dp)
                        } else {
                            PaddingValues(16.dp)
                        },
                        verticalArrangement = Arrangement.spacedBy(16.dp),
                    ) {
                        if (!useTwoPane) {
                            item {
                                ProfileHeader(
                                    profile = profile,
                                    avatarPreviewUri = screenViewModel?.avatarPreviewUri,
                                    isPunchingIn = screenViewModel?.isPunchingIn == true,
                                    offlineMode = offlineMode,
                                    onAvatarClick = onAvatarClick,
                                    onPunchIn = {
                                        if (!offlineMode) {
                                            screenViewModel?.punchIn()
                                        }
                                    },
                                )
                            }
                            item {
                                ProfileSloganCard(profile = profile)
                            }
                        }
                        item {
                            PicaChoiceRow(
                                labels = listOf(
                                    stringResource(R.string.comic),
                                    stringResource(R.string.comment),
                                ), selected = selectedTab, onSelect = { selectedTab = it },
                                modifier = Modifier.fillMaxWidth(), expand = true,
                            )
                        }
                        if (selectedTab == 0) {
                            item {
                                ProfileComicSection(
                                    title = stringResource(R.string.bookmarked),
                                    total = profileComicViewModel?.bookmarkedTotal?.toLong() ?: 0L,
                                    comics = profileComicViewModel?.bookmarkedComics.orEmpty(),
                                    loading = profileComicViewModel?.isLoading == true,
                                    onMore = {
                                        if (!offlineMode) {
                                            onComicListClick("CATEGORY_USER_FAVOURITE")
                                        }
                                    },
                                    onComicClick = {
                                        if (!offlineMode) {
                                            onComicClick(it)
                                        }
                                    },
                                )
                            }
                            item {
                                ProfileComicSection(
                                    title = stringResource(R.string.recent_view),
                                    total = profileComicViewModel?.recentTotal ?: 0L,
                                    comics = profileComicViewModel?.recentComics.orEmpty(),
                                    loading = false,
                                    onMore = {
                                        onComicListClick("CATEGORY_RECENT_VIEW")
                                    },
                                    onComicClick = onComicClick,
                                )
                            }
                            item {
                                ProfileComicSection(
                                    title = "正在下载",
                                    total = profileComicViewModel?.downloadingTotal ?: 0L,
                                    comics = profileComicViewModel?.downloadingComics.orEmpty(),
                                    loading = false,
                                    subtitleOverrides = profileComicViewModel?.downloadingProgressText.orEmpty(),
                                    onMore = {
                                        onComicListClick("CATEGORY_DOWNLOADING")
                                    },
                                    onComicClick = onComicClick,
                                )
                            }
                            item {
                                ProfileComicSection(
                                    title = stringResource(R.string.downloaded),
                                    total = profileComicViewModel?.downloadedTotal ?: 0L,
                                    comics = profileComicViewModel?.downloadedComics.orEmpty(),
                                    loading = false,
                                    onMore = {
                                        onComicListClick("CATEGORY_DOWNLOADED")
                                    },
                                    onComicClick = onComicClick,
                                )
                            }
                        } else {
                            val comments = profileCommentViewModel?.commentItems.orEmpty()
                            when {
                                profileCommentViewModel?.isLoading == true && comments.isEmpty() -> {
                                    item { PicaLoadingIndicator() }
                                }

                                comments.isEmpty() -> {
                                    item { PicaEmptyState(message = "No comments") }
                                }

                                else -> {
                                    comments.forEachIndexed { index, comment ->
                                        item(key = stableLazyKey("profile_comment", index, comment.commentId, comment.content)) {
                                            ProfileCommentCard(
                                                comment = comment,
                                                profileUser = profileCommentViewModel?.profileUser,
                                                floor = (profileCommentViewModel?.displayFloorCount ?: comments.size) - index,
                                                onOpenTarget = {
                                                    val comicId = comment.comicId?.comicId
                                                    val gameId = comment.gameId?.gameId
                                                    if (!comicId.isNullOrBlank()) onComicClick(comicId)
                                                    if (!gameId.isNullOrBlank()) onGameClick(gameId)
                                                },
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ProfileSloganCard(profile: UserProfileObject?) {
    val slogan = profile?.slogan?.takeIf(String::isNotBlank) ?: return
    Surface(Modifier.fillMaxWidth(), shape = RoundedCornerShape(20.dp), color = MaterialTheme.colorScheme.surfaceContainerLow) {
        Text(slogan, Modifier.padding(16.dp), style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
    }
}

@Composable
private fun ProfileHeader(
    profile: UserProfileObject?,
    avatarPreviewUri: String?,
    isPunchingIn: Boolean,
    offlineMode: Boolean,
    onAvatarClick: () -> Unit,
    onPunchIn: () -> Unit,
) {
    val colors = MaterialTheme.colorScheme
    val editAvatarLabel = stringResource(R.string.profile_edit_avatar_action)
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = colors.surfaceContainer,
        contentColor = colors.onSurface,
        shape = MaterialTheme.shapes.large,
    ) {
        Column(
            modifier = Modifier.fillMaxWidth().padding(18.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Box(
                modifier = Modifier
                    .size(128.dp)
                    .clickable(role = Role.Button, onClick = onAvatarClick)
                    .semantics { contentDescription = editAvatarLabel },
                contentAlignment = Alignment.Center,
            ) {
                if (!profile?.character.isNullOrBlank()) {
                    PicaImageUrl(
                        imageUrl = profile?.character,
                        contentDescription = null,
                        modifier = Modifier
                            .size(128.dp)
                            .align(Alignment.Center),
                        contentScale = ContentScale.Fit,
                    )
                }
                Box(
                    modifier = Modifier
                        .size(104.dp)
                        .border(2.dp, colors.primaryContainer, CircleShape).padding(2.dp).clip(CircleShape),
                ) {
                    if (!avatarPreviewUri.isNullOrBlank()) {
                        PicaImageUrl(
                            imageUrl = avatarPreviewUri,
                            contentDescription = null,
                            modifier = Modifier.fillMaxSize(),
                        )
                    } else {
                        PicaRemoteImage(
                            thumbnail = profile?.avatar,
                            contentDescription = null,
                            modifier = Modifier.fillMaxSize(),
                        )
                    }
                }
            }
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    text = displayName(profile),
                    modifier = Modifier.weight(1f, fill = false),
                    style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold,
                    maxLines = 2, overflow = TextOverflow.Ellipsis,
                    color = colors.onSurface,
                    textAlign = TextAlign.Center,
                )
                if (profile?.isVerified == true) {
                    Image(
                        painter = painterResource(R.drawable.verified_icon),
                        contentDescription = null,
                        modifier = Modifier.size(22.dp),
                    )
                }
            }
            val title = profile?.title.orEmpty().trim()
            if (title.isNotEmpty()) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.bodyMedium,
                    color = colors.onSurfaceVariant,
                    textAlign = TextAlign.Center,
                )
            }
            profile?.let { user ->
                val next = expForLevel(user.level + 1).coerceAtLeast(1)
                Surface(shape = CircleShape, color = colors.tertiaryContainer) {
                    Text("等级 ${user.level}", Modifier.padding(horizontal = 12.dp, vertical = 4.dp), style = MaterialTheme.typography.labelMedium)
                }
                Text("经验 ${user.exp} / $next", style = MaterialTheme.typography.labelMedium, color = colors.onSurfaceVariant)
                LinearProgressIndicator(progress = { (user.exp.toFloat() / next).coerceIn(0f, 1f) },
                    modifier = Modifier.fillMaxWidth().height(8.dp).clip(CircleShape), color = colors.tertiary, trackColor = colors.surfaceContainerHigh)
                user.role?.takeIf { it.isNotBlank() && it != "-" }?.let { Text(it, style = MaterialTheme.typography.labelMedium) }
            }
            val punched = profile?.isPunched == true
            Button(
                onClick = onPunchIn,
                shapes = ButtonDefaults.shapes(),
                enabled = profile != null && !offlineMode && !isPunchingIn && !punched,
            ) {
                Text(stringResource(when {
                    punched -> R.string.profile_punch_in_done
                    isPunchingIn -> R.string.profile_punch_in_pending
                    else -> R.string.profile_punch_in
                }))
            }
        }
    }
}

@Composable
private fun ProfileComicSection(
    title: String,
    total: Long,
    comics: List<ComicListObject>,
    loading: Boolean,
    subtitleOverrides: Map<String, String> = emptyMap(),
    onMore: () -> Unit,
    onComicClick: (String) -> Unit,
) {
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            Text(title, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold, color = MaterialTheme.colorScheme.onSurface)
            Surface(shape = CircleShape, color = MaterialTheme.colorScheme.secondaryContainer) {
                Text(total.toString(), Modifier.padding(horizontal = 8.dp, vertical = 2.dp), style = MaterialTheme.typography.labelMedium)
            }
            androidx.compose.foundation.layout.Spacer(Modifier.weight(1f))
            FilledTonalIconButton(onClick = onMore) { Icon(Icons.AutoMirrored.Filled.ArrowForward, stringResource(R.string.more)) }
        }
        when {
            comics.isEmpty() && loading -> PicaLoadingIndicator()
            comics.isEmpty() -> Text("暂无${title}", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            else -> LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                items(comics) { comic ->
                    PicaRecommendationCard(comic.title.orEmpty(), { comic.comicId?.takeIf(String::isNotBlank)?.let(onComicClick) },
                        modifier = Modifier.width(140.dp), categories = listOfNotNull(subtitleOverrides[comic.comicId]) + comic.categories.orEmpty()) {
                        PicaRemoteImage(thumbnail = comic.thumb, contentDescription = null, modifier = Modifier.fillMaxSize())
                    }
                }
            }
        }
    }
}

@Composable
private fun ProfileCommentCard(
    comment: CommentWithReplyObject,
    profileUser: UserBasicObject?,
    floor: Int,
    onOpenTarget: () -> Unit,
) {
    val context = LocalContext.current
    val name = profileUser?.name ?: comment.user?.name
    val level = profileUser?.level ?: comment.user?.level ?: 0
    val avatar = profileUser?.avatar ?: comment.user?.avatar
    val targetTitle = comment.comicId?.title?.takeIf { it.isNotBlank() }
        ?: comment.gameId?.title?.takeIf { it.isNotBlank() }
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shape = MaterialTheme.shapes.large,
        tonalElevation = 1.dp,
    ) {
        Row(
            modifier = Modifier.padding(14.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            PicaUserAvatar(
                thumbnail = avatar,
                name = name,
                modifier = Modifier.size(42.dp),
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(6.dp),
            ) {
                Text(
                    text = name.orEmpty().ifBlank { "Anonymous" },
                    style = MaterialTheme.typography.titleSmall,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    text = "#${floor.coerceAtLeast(0)} · Lv.$level · ${g.B(context, comment.createdAt)}",
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                Text(
                    text = comment.content.orEmpty(),
                    style = MaterialTheme.typography.bodyMedium,
                )
                if (!targetTitle.isNullOrBlank()) {
                    TextButton(onClick = onOpenTarget) {
                        Text(
                            text = stringResource(R.string.comment_profile_view_content_prefix) +
                                targetTitle +
                                stringResource(R.string.comment_profile_view_content_suffix),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                }
                Text(
                    text = "赞好 ${comment.likesCount} · ${stringResource(R.string.comment_reply)} ${comment.childsCount}",
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
    }
}

private fun displayName(profile: UserProfileObject?): String {
    val raw = profile?.name.orEmpty().trim()
    if (raw.contains("SocketAddress", ignoreCase = true)) {
        return profile?.email.orEmpty()
            .substringBefore("@")
            .takeIf { it.isNotBlank() }
            ?: "Profile"
    }
    return raw.ifBlank { "Profile" }
}

private fun expForLevel(level: Int): Int {
    val n = (level * 2) - 1
    return max(1, ((n * n) - 1) * 25)
}

private fun profileScreenPreviewUser(): UserProfileObject {
    val avatar = ThumbnailObject(
        "https://storage1.picacomic.com",
        "bf30b2bc-5127-4144-86f0-b496b102c6d3.jpg",
        "avatar.jpg"
    )
    return UserProfileObject(
        "593019d53f532059f297efa7",
        "knight@picacomic.com",
        "黎欧",
        "萌新",
        "1999-06-15",
        "m",
        "emmm。。。二八七六八七八三九二",
        "knight",
        "https://www.picacomic.com/characters/frame_knight_1000.png?r=3",
        arrayListOf("knight"),
        "2016-01-01",
        465280,
        68,
        false,
        false,
        avatar
    )
}

@Preview(showBackground = true)
@Composable
private fun ProfileScreenPreview() {
    ProfileScreen(onEdit = {})
}
