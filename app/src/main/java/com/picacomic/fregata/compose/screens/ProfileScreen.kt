package com.picacomic.fregata.compose.screens

import android.Manifest
import android.animation.ValueAnimator
import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Environment
import android.provider.MediaStore
import android.text.TextUtils
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.content.ContextCompat
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.viewpager.widget.ViewPager
import com.google.android.material.tabs.TabLayout
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.BaseActivity
import com.picacomic.fregata.activities.ImageCropActivity
import com.picacomic.fregata.adapters.ProfileFragmentPagerAdapter
import com.picacomic.fregata.b.c
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ProfileViewModel
import com.picacomic.fregata.objects.UserBasicObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import com.picacomic.fregata.utils.views.ExpCircleView
import com.squareup.picasso.Picasso
import com.squareup.picasso.Target
import de.hdodenhof.circleimageview.CircleImageView
import java.io.File
import kotlin.math.max
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProfileScreen(
    onEdit: () -> Unit,
    viewModel: ProfileViewModel? = null
) {
    val context = LocalContext.current
    val activity = context as? Activity
    val lifecycleOwner = LocalLifecycleOwner.current
    val inPreview = LocalInspectionMode.current
    var pendingCameraUri by rememberSaveable { mutableStateOf<String?>(null) }
    val screenViewModel = previewAwareViewModel(viewModel)
    val previewProfile = if (inPreview) profilePreviewUser() else null

    val cropLauncher = if (inPreview) {
        null
    } else {
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.StartActivityForResult()
        ) { result ->
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
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.StartActivityForResult()
        ) { result ->
            if (result.resultCode != Activity.RESULT_OK) return@rememberLauncherForActivityResult
            val selectedUri = result.data?.data ?: return@rememberLauncherForActivityResult
            val cropIntent = Intent(context, ImageCropActivity::class.java).apply {
                putExtra("KEY_ACTION_TYPE", 1)
                putExtra("KEY_IMAGE_URI_STRING", selectedUri.toString())
            }
            cropLauncher?.launch(cropIntent)
        }
    }

    val cameraLauncher = if (inPreview) {
        null
    } else {
        rememberLauncherForActivityResult(
            contract = ActivityResultContracts.StartActivityForResult()
        ) { result ->
            if (result.resultCode != Activity.RESULT_OK) return@rememberLauncherForActivityResult
            val cameraUri = pendingCameraUri ?: return@rememberLauncherForActivityResult
            val cropIntent = Intent(context, ImageCropActivity::class.java).apply {
                putExtra("KEY_ACTION_TYPE", 1)
                putExtra("KEY_IMAGE_URI_STRING", cameraUri)
            }
            cropLauncher?.launch(cropIntent)
        }
    }

    val onAvatarClick: () -> Unit = click@{
        if (inPreview) return@click
        val hasStoragePermission = ContextCompat.checkSelfPermission(
            context,
            Manifest.permission.WRITE_EXTERNAL_STORAGE
        ) == PackageManager.PERMISSION_GRANTED
        val hasCameraPermission = ContextCompat.checkSelfPermission(
            context,
            Manifest.permission.CAMERA
        ) == PackageManager.PERMISSION_GRANTED

        if (!hasStoragePermission || !hasCameraPermission) {
            (activity as? BaseActivity)?.requestPermission()
        } else {
            AlertDialog.Builder(context)
                .setTitle(R.string.alert_dialog_select_title)
                .setSingleChoiceItems(
                    context.resources.getStringArray(R.array.alert_dialog_photo_chooser),
                    0,
                    null
                )
                .setPositiveButton(R.string.ok) { dialogInterface, _ ->
                    val checked = (dialogInterface as AlertDialog).listView.checkedItemPosition
                    if (checked == 0) {
                        val photoFile = File(Environment.getExternalStorageDirectory(), "Pic.jpg")
                        val photoUri = Uri.fromFile(photoFile)
                        pendingCameraUri = photoUri.toString()
                        val cameraIntent = Intent(MediaStore.ACTION_IMAGE_CAPTURE).apply {
                            putExtra("output", photoUri)
                        }
                        cameraLauncher?.launch(cameraIntent)
                    } else {
                        val pickIntent = Intent(Intent.ACTION_PICK).apply {
                            type = "image/*"
                        }
                        galleryLauncher?.launch(pickIntent)
                    }
                }
                .show()
        }
    }

    LaunchedEffect(Unit) {
        if (!inPreview) {
            screenViewModel?.loadProfile()
        }
    }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                if (inPreview) return@LifecycleEventObserver
                screenViewModel?.loadProfile(force = true)
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }

    DisposableEffect(activity) {
        onDispose {
            clearProfilePagerFragments((activity as? FragmentActivity)?.supportFragmentManager)
        }
    }

    LaunchedEffect(screenViewModel?.punchInSuccessEvent) {
        if ((screenViewModel?.punchInSuccessEvent ?: 0) > 0) {
            AlertDialogCenter.punchedIn(context)
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
        if (code != null) {
            c(context, code, vm.errorBody).dN()
        } else {
            c(context).dN()
        }
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
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    actions = {
                        TextButton(onClick = onEdit) {
                            Text(text = stringResource(R.string.edit))
                        }
                    },
                    colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer
                    ),
                    scrollBehavior = scrollBehavior
                )
            },
            containerColor = MaterialTheme.colorScheme.background
        ) { innerPadding ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
            ) {
                if (inPreview) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        PreviewListPanel(
                            title = "${previewProfile?.name.orEmpty()} (Lv. ${previewProfile?.level ?: 0})",
                            items = listOf(
                                "头衔：${previewProfile?.title.orEmpty()}",
                                "签名：${previewProfile?.slogan.orEmpty()}",
                                "邮箱：${previewProfile?.email.orEmpty()}",
                                "标签页：漫画 / 评论"
                            )
                        )
                    }
                } else {
                    AndroidView(
                        factory = { ctx ->
                            android.view.LayoutInflater.from(ctx)
                                .inflate(R.layout.layout_profile_compose_content, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { root ->
                            val vm = screenViewModel ?: return@AndroidView
                            val avatarView =
                                root.findViewById<CircleImageView>(R.id.imageView_profile_avatar)
                            val avatarBlurView =
                                root.findViewById<ImageView>(R.id.imageView_profile_avatar_blur)
                            val characterView =
                                root.findViewById<ImageView>(R.id.imageView_profile_character)
                            val verifiedView =
                                root.findViewById<ImageView>(R.id.imageView_profile_verified)
                            val levelTextView =
                                root.findViewById<TextView>(R.id.textView_profile_level)
                            val nameTextView =
                                root.findViewById<TextView>(R.id.textView_profile_name)
                            val honorTextView =
                                root.findViewById<TextView>(R.id.textView_profile_honor)
                            val sloganTextView =
                                root.findViewById<TextView>(R.id.textView_profile_slogan)
                            val punchInTextView =
                                root.findViewById<TextView>(R.id.textView_profile_punch_in)
                            val expCircleView =
                                root.findViewById<ExpCircleView>(R.id.expCircleView_profile)
                            val tabLayout = root.findViewById<TabLayout>(R.id.tabs)
                            val viewPager = root.findViewById<ViewPager>(R.id.viewPager_profile)

                            expCircleView?.setGridSize(20)

                            if (avatarView?.getTag(R.id.imageView_profile_avatar) != true) {
                                avatarView?.setOnClickListener { onAvatarClick() }
                                avatarView?.setTag(R.id.imageView_profile_avatar, true)
                            }

                            if (punchInTextView?.getTag(R.id.textView_profile_punch_in) != true) {
                                punchInTextView?.setOnClickListener { vm.punchIn() }
                                punchInTextView?.setTag(R.id.textView_profile_punch_in, true)
                            }

                            bindProfilePager(
                                root = root,
                                activity = activity as? FragmentActivity,
                                viewPager = viewPager,
                                tabLayout = tabLayout,
                                userProfile = vm.userProfile
                            )

                            bindProfileHeader(
                                root = root,
                                userProfile = vm.userProfile,
                                avatarPreviewUri = vm.avatarPreviewUri,
                                avatarView = avatarView,
                                avatarBlurView = avatarBlurView,
                                characterView = characterView,
                                verifiedView = verifiedView,
                                levelTextView = levelTextView,
                                nameTextView = nameTextView,
                                honorTextView = honorTextView,
                                sloganTextView = sloganTextView,
                                punchInTextView = punchInTextView,
                                expCircleView = expCircleView,
                                isPunchingIn = vm.isPunchingIn
                            )
                        }
                    )
                }
            }
        }
    }
}

private fun bindProfileHeader(
    root: View,
    userProfile: UserProfileObject?,
    avatarPreviewUri: String?,
    avatarView: CircleImageView?,
    avatarBlurView: ImageView?,
    characterView: ImageView?,
    verifiedView: ImageView?,
    levelTextView: TextView?,
    nameTextView: TextView?,
    honorTextView: TextView?,
    sloganTextView: TextView?,
    punchInTextView: TextView?,
    expCircleView: ExpCircleView?,
    isPunchingIn: Boolean
) {
    if (userProfile == null) {
        punchInTextView?.visibility = View.GONE
        return
    }

    val avatarPath = avatarPreviewUri ?: userProfile.avatar?.let { g.b(it) }
    if (!avatarPath.isNullOrEmpty()) {
        loadAvatar(root, avatarPath, avatarView, avatarBlurView)
    }

    if (!userProfile.character.isNullOrEmpty()) {
        Picasso.with(root.context).load(userProfile.character).into(characterView)
        characterView?.visibility = View.VISIBLE
    } else {
        characterView?.visibility = View.GONE
    }

    verifiedView?.visibility = if (userProfile.isVerified) View.VISIBLE else View.GONE

    val nextExp = max(1, expForLevel(userProfile.level + 1))
    levelTextView?.text = "${userProfile.level} (${userProfile.exp}/$nextExp)"
    nameTextView?.apply {
        maxLines = 1
        ellipsize = TextUtils.TruncateAt.END
        text = displayName(userProfile)
    }
    honorTextView?.text = userProfile.title.orEmpty()
    sloganTextView?.text = userProfile.slogan.orEmpty()
    punchInTextView?.visibility = if (userProfile.isPunched) View.GONE else View.VISIBLE
    punchInTextView?.isEnabled = !isPunchingIn

    val angle = (userProfile.exp * 360f) / nextExp.toFloat()
    animateExpCircle(root, expCircleView, angle)
}

private fun bindProfilePager(
    root: View,
    activity: FragmentActivity?,
    viewPager: ViewPager?,
    tabLayout: TabLayout?,
    userProfile: UserProfileObject?
) {
    if (activity == null || viewPager == null || tabLayout == null) return

    val profileKey = userProfile?.userId ?: "__profile_no_user__"
    val oldProfileKey = root.getTag(R.id.viewPager_profile) as? String
    if (oldProfileKey == profileKey && viewPager.adapter != null) return

    clearProfilePagerFragments(activity.supportFragmentManager)
    viewPager.adapter = null
    val userBasicObject = userProfile?.let { UserBasicObject(it) }
    viewPager.adapter = ProfileFragmentPagerAdapter(activity.supportFragmentManager, userBasicObject)
    viewPager.offscreenPageLimit = 2
    tabLayout.setupWithViewPager(viewPager)
    tabLayout.getTabAt(0)?.setText(R.string.comic)
    if (userBasicObject != null) {
        tabLayout.getTabAt(1)?.setText(R.string.comment)
    }
    root.setTag(R.id.viewPager_profile, profileKey)
}

private fun displayName(userProfile: UserProfileObject): String {
    val raw = userProfile.name.orEmpty().trim()
    if (raw.isEmpty()) return ""
    // Guard against corrupted profile payload that occasionally injects debug text.
    if (raw.contains("SocketAddress", ignoreCase = true)) {
        return userProfile.title.orEmpty().ifEmpty { "" }
    }
    return raw
}

private fun clearProfilePagerFragments(fragmentManager: FragmentManager?) {
    if (fragmentManager == null || fragmentManager.isStateSaved) return
    try {
        val transaction = fragmentManager.beginTransaction()
        var changed = false
        for (index in 0..2) {
            val tag = "android:switcher:${R.id.viewPager_profile}:$index"
            val fragment = fragmentManager.findFragmentByTag(tag)
            if (fragment != null) {
                transaction.remove(fragment)
                changed = true
            }
        }
        if (changed) {
            transaction.commitNowAllowingStateLoss()
        }
    } catch (_: Exception) {
    }
}

private fun loadAvatar(
    root: View,
    avatarPath: String,
    avatarView: CircleImageView?,
    avatarBlurView: ImageView?
) {
    Picasso.with(root.context).load(avatarPath).into(avatarView)
    val blurTarget = object : Target {
        override fun onBitmapLoaded(
            bitmap: android.graphics.Bitmap?,
            from: Picasso.LoadedFrom?
        ) {
            if (bitmap != null && avatarBlurView != null) {
                avatarBlurView.setImageBitmap(g.a(bitmap, 0.5f, 5))
            }
        }

        override fun onBitmapFailed(errorDrawable: android.graphics.drawable.Drawable?) {}

        override fun onPrepareLoad(placeHolderDrawable: android.graphics.drawable.Drawable?) {}
    }
    // Keep a strong reference to avoid Picasso target GC.
    root.setTag(R.id.imageView_profile_avatar_blur, blurTarget)
    Picasso.with(root.context).load(avatarPath).into(blurTarget)
}

private fun animateExpCircle(root: View, expCircleView: ExpCircleView?, targetAngle: Float) {
    if (expCircleView == null) return

    val lastAngle = root.getTag(R.id.expCircleView_profile) as? Float
    if (lastAngle != null && kotlin.math.abs(lastAngle - targetAngle) < 0.1f) {
        return
    }

    (root.getTag(R.id.textView_profile_level) as? ValueAnimator)?.cancel()

    val animator = ValueAnimator.ofFloat(0f, targetAngle).apply {
        duration = 1000L
        addUpdateListener { animation ->
            expCircleView.setAngle(animation.animatedValue as Float)
        }
        start()
    }
    root.setTag(R.id.textView_profile_level, animator)
    root.setTag(R.id.expCircleView_profile, targetAngle)
}

private fun expForLevel(level: Int): Int {
    val n = (level * 2) - 1
    return ((n * n) - 1) * 25
}

@Preview(showBackground = true)
@Composable
private fun ProfileScreenPreview() {
    ProfileScreen(onEdit = {})
}
