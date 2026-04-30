package com.picacomic.fregata.compose.screens

import android.Manifest
import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.CountDownTimer
import android.provider.MediaStore
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
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
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Button
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
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
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.content.ContextCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.BaseActivity
import com.picacomic.fregata.activities.ImageCropActivity
import com.picacomic.fregata.b.c
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaComicListCard
import com.picacomic.fregata.compose.components.PicaEmptyState
import com.picacomic.fregata.compose.components.PicaImageUrl
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaMetricRow
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.components.PicaSectionHeader
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
import com.picacomic.fregata.utils.views.ExpCircleView
import kotlin.math.max

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProfileScreen(
    onEdit: () -> Unit,
    onComicClick: (String) -> Unit = {},
    onGameClick: (String) -> Unit = {},
    onComicListClick: (String) -> Unit = {},
    refreshEvent: Int = 0,
    viewModel: ProfileViewModel? = null,
) {
    val context = LocalContext.current
    val activity = context as? Activity
    val lifecycleOwner = LocalLifecycleOwner.current
    val inPreview = LocalInspectionMode.current
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

    val onAvatarClick: () -> Unit = click@{
        if (inPreview) return@click
        val hasCameraPermission = ContextCompat.checkSelfPermission(
            context,
            Manifest.permission.CAMERA,
        ) == PackageManager.PERMISSION_GRANTED

        if (!hasCameraPermission) {
            (activity as? BaseActivity)?.requestPermission()
            return@click
        }

        AlertDialog.Builder(context)
            .setTitle(R.string.alert_dialog_select_title)
            .setSingleChoiceItems(context.resources.getStringArray(R.array.alert_dialog_photo_chooser), 0, null)
            .setPositiveButton(R.string.ok) { dialogInterface, _ ->
                val checked = (dialogInterface as AlertDialog).listView.checkedItemPosition
                if (checked == 0) {
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
                    galleryLauncher?.launch(
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                            Intent(MediaStore.ACTION_PICK_IMAGES)
                        } else {
                            Intent(Intent.ACTION_PICK).apply {
                                type = "image/*"
                            }
                        },
                    )
                }
            }
            .show()
    }

    LaunchedEffect(refreshEvent) {
        if (!inPreview) {
            screenViewModel?.loadProfile(force = refreshEvent > 0)
            profileComicViewModel?.load(force = refreshEvent > 0)
        }
    }

    LaunchedEffect(screenViewModel?.userProfile?.userId) {
        val profile = screenViewModel?.userProfile ?: return@LaunchedEffect
        if (!inPreview) {
            profileCommentViewModel?.init(
                userId = profile.userId,
                userBasic = UserBasicObject(profile),
                force = true,
            )
        }
    }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME && !inPreview) {
                screenViewModel?.loadProfile(force = true)
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    LaunchedEffect(screenViewModel?.punchInSuccessEvent) {
        if ((screenViewModel?.punchInSuccessEvent ?: 0) > 0) {
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
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                CenterAlignedTopAppBar(
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
                    colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            val profile = if (inPreview) previewProfile else screenViewModel?.userProfile
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp),
            ) {
                item {
                    ProfileHeader(
                        profile = profile,
                        avatarPreviewUri = screenViewModel?.avatarPreviewUri,
                        isPunchingIn = screenViewModel?.isPunchingIn == true,
                        onAvatarClick = onAvatarClick,
                        onPunchIn = { screenViewModel?.punchIn() },
                    )
                }
                item {
                    Surface(
                        modifier = Modifier.fillMaxWidth(),
                        color = MaterialTheme.colorScheme.surface,
                        shape = MaterialTheme.shapes.large,
                        tonalElevation = 1.dp,
                    ) {
                        Column(
                            modifier = Modifier.padding(16.dp),
                            verticalArrangement = Arrangement.spacedBy(10.dp),
                        ) {
                            PicaSectionHeader(title = stringResource(R.string.title_profile))
                            Text(
                                text = profile?.slogan.orEmpty().ifBlank { "No slogan" },
                                style = MaterialTheme.typography.bodyLarge,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                }
                item {
                    TabRow(selectedTabIndex = selectedTab) {
                        Tab(
                            selected = selectedTab == 0,
                            onClick = { selectedTab = 0 },
                            text = { Text(text = stringResource(R.string.comic)) },
                        )
                        Tab(
                            selected = selectedTab == 1,
                            onClick = { selectedTab = 1 },
                            text = { Text(text = stringResource(R.string.comment)) },
                        )
                    }
                }
                if (selectedTab == 0) {
                    item {
                        ProfileComicSection(
                            title = stringResource(R.string.bookmarked),
                            total = profileComicViewModel?.bookmarkedTotal?.toLong() ?: 0L,
                            comics = profileComicViewModel?.bookmarkedComics.orEmpty(),
                            loading = profileComicViewModel?.isLoading == true,
                            onMore = { onComicListClick("CATEGORY_USER_FAVOURITE") },
                            onComicClick = onComicClick,
                        )
                    }
                    item {
                        ProfileComicSection(
                            title = stringResource(R.string.recent_view),
                            total = profileComicViewModel?.recentTotal ?: 0L,
                            comics = profileComicViewModel?.recentComics.orEmpty(),
                            loading = false,
                            onMore = { onComicListClick("CATEGORY_RECENT_VIEW") },
                            onComicClick = onComicClick,
                        )
                    }
                    item {
                        ProfileComicSection(
                            title = stringResource(R.string.downloaded),
                            total = profileComicViewModel?.downloadedTotal ?: 0L,
                            comics = profileComicViewModel?.downloadedComics.orEmpty(),
                            loading = false,
                            onMore = { onComicListClick("CATEGORY_DOWNLOADED") },
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
                                item(key = comment.commentId ?: "profile_comment_$index") {
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

@Composable
private fun ProfileHeader(
    profile: UserProfileObject?,
    avatarPreviewUri: String?,
    isPunchingIn: Boolean,
    onAvatarClick: () -> Unit,
    onPunchIn: () -> Unit,
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shape = MaterialTheme.shapes.large,
        tonalElevation = 1.dp,
    ) {
        Box(
            modifier = Modifier.fillMaxWidth(),
        ) {
            PicaRemoteImage(
                thumbnail = profile?.avatar.takeIf { avatarPreviewUri == null },
                contentDescription = null,
                modifier = Modifier
                    .matchParentSize()
                    .blur(18.dp),
            )
            if (!avatarPreviewUri.isNullOrBlank()) {
                PicaImageUrl(
                    imageUrl = avatarPreviewUri,
                    contentDescription = null,
                    modifier = Modifier
                        .matchParentSize()
                        .blur(18.dp),
                )
            }
            Box(
                modifier = Modifier
                    .matchParentSize()
                    .background(Color.Black.copy(alpha = 0.46f)),
            )
            Column(
                modifier = Modifier.padding(18.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Box(
                modifier = Modifier
                    .size(150.dp)
                    .clickable(onClick = onAvatarClick),
                contentAlignment = Alignment.Center,
            ) {
                if (!profile?.character.isNullOrBlank()) {
                    PicaImageUrl(
                        imageUrl = profile?.character,
                        contentDescription = profile?.role,
                        modifier = Modifier
                            .size(146.dp)
                            .align(Alignment.Center),
                        contentScale = ContentScale.Fit,
                    )
                }
                AnimatedExpCircle(
                    angle = expAngle(profile),
                    modifier = Modifier.size(132.dp),
                )
                Box(
                    modifier = Modifier
                        .size(112.dp)
                        .clip(CircleShape),
                ) {
                PicaRemoteImage(
                    thumbnail = profile?.avatar.takeIf { avatarPreviewUri == null },
                    contentDescription = profile?.name,
                    modifier = Modifier.fillMaxSize(),
                )
                if (!avatarPreviewUri.isNullOrBlank()) {
                    PicaImageUrl(
                        imageUrl = avatarPreviewUri,
                        contentDescription = profile?.name,
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
                    style = MaterialTheme.typography.headlineSmall,
                    color = Color.White,
                    fontWeight = FontWeight.Bold,
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
            Text(
                text = profile?.title.orEmpty().ifBlank { profile?.role.orEmpty() },
                style = MaterialTheme.typography.bodyMedium,
                color = Color.White.copy(alpha = 0.82f),
                textAlign = TextAlign.Center,
            )
            PicaMetricRow(
                metrics = listOf(
                    "Level" to (profile?.level ?: 0).toString(),
                    "EXP" to "${profile?.exp ?: 0}/${expForLevel((profile?.level ?: 0) + 1)}",
                    "Role" to profile?.role.orEmpty().ifBlank { "-" },
                ),
            )
            if (profile?.isPunched != true) {
                Button(
                    onClick = onPunchIn,
                    enabled = !isPunchingIn && profile != null,
                ) {
                    Text(text = stringResource(R.string.profile_punch_in))
                }
            }
        }
    }
}
}

@Composable
private fun AnimatedExpCircle(
    angle: Float,
    modifier: Modifier = Modifier,
) {
    val context = LocalContext.current
    var currentView by androidx.compose.runtime.remember { mutableStateOf<ExpCircleView?>(null) }
    AndroidView(
        modifier = modifier,
        factory = {
            ExpCircleView(context).apply {
                setGridSize(20)
                setAngle(0f)
                currentView = this
            }
        },
        update = { view ->
            view.setGridSize(20)
            currentView = view
        },
    )
    DisposableEffect(currentView, angle) {
        val view = currentView
        val timer = object : CountDownTimer(1000L, 10L) {
            override fun onTick(millisUntilFinished: Long) {
                view?.setAngle(((1000L - millisUntilFinished) * angle) / 1000f)
            }

            override fun onFinish() {
                view?.setAngle(angle)
            }
        }
        timer.start()
        onDispose { timer.cancel() }
    }
}

private fun expAngle(profile: UserProfileObject?): Float {
    val next = expForLevel((profile?.level ?: 0) + 1).coerceAtLeast(1)
    return ((profile?.exp ?: 0) * 360f) / next
}

@Composable
private fun ProfileComicSection(
    title: String,
    total: Long,
    comics: List<ComicListObject>,
    loading: Boolean,
    onMore: () -> Unit,
    onComicClick: (String) -> Unit,
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shape = MaterialTheme.shapes.large,
        tonalElevation = 1.dp,
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            PicaSectionHeader(
                title = title,
                supportingText = total.toString(),
                actionLabel = stringResource(R.string.more),
                onActionClick = onMore,
            )
            when {
                loading && comics.isEmpty() -> PicaLoadingIndicator()
                comics.isEmpty() -> PicaEmptyState(message = "No comics")
                else -> {
                    Row(
                        modifier = Modifier.horizontalScroll(rememberScrollState()),
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        comics.forEach { comic ->
                            PicaComicListCard(
                                title = comic.title.orEmpty(),
                                subtitle = comic.author.orEmpty(),
                                thumbnail = comic.thumb,
                                likes = comic.likesCount,
                                pages = comic.pagesCount,
                                episodes = comic.episodeCount,
                                categories = comic.categories.orEmpty(),
                                coverWidth = 72.dp,
                                onClick = {
                                    val comicId = comic.comicId
                                    if (!comicId.isNullOrBlank()) onComicClick(comicId)
                                },
                                modifier = Modifier.width(240.dp),
                            )
                        }
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
        return profile?.title.orEmpty().ifBlank { "Profile" }
    }
    return raw.ifBlank { "Profile" }
}

private fun expForLevel(level: Int): Int {
    val n = (level * 2) - 1
    return max(1, ((n * n) - 1) * 25)
}

private fun profileScreenPreviewUser(): UserProfileObject {
    return UserProfileObject(
        "user-1",
        "knight@example.com",
        "Miracle Knight",
        "Knight",
        "2000-01-01",
        "bot",
        "Compose profile preview",
        "member",
        null,
        arrayListOf(),
        "2026-04-25",
        1280,
        12,
        false,
        true,
        ThumbnailObject("https://storage1.picacomic.com", "avatar.jpg", "avatar.jpg"),
    )
}

@Preview(showBackground = true)
@Composable
private fun ProfileScreenPreview() {
    ProfileScreen(onEdit = {})
}
