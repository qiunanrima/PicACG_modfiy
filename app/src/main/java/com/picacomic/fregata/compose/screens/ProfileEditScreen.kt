package com.picacomic.fregata.compose.screens

import android.Manifest
import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Environment
import android.provider.MediaStore
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
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
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ProfileEditViewModel
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso
import java.io.File
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ProfileEditScreen(
    onBack: () -> Unit,
    viewModel: ProfileEditViewModel? = null
) {
    val context = LocalContext.current
    val activity = context as? Activity
    val inPreview = LocalInspectionMode.current
    val lifecycleOwner = LocalLifecycleOwner.current
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
            screenViewModel?.loadSelfProfile(force = true)
        }
    }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                if (!inPreview) {
                    screenViewModel?.loadSelfProfile(force = true)
                }
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }

    LaunchedEffect(screenViewModel?.updateSuccessEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.updateSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, R.string.profile_edit_update_success, Toast.LENGTH_SHORT).show()
        onBack()
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

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_profile_edit),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back)
                            )
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surface,
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer,
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface
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
                            title = stringResource(R.string.title_profile_edit),
                            items = listOf(
                                "昵称：${previewProfile?.name.orEmpty()}",
                                "生日：${previewProfile?.birthday.orEmpty()}",
                                "邮箱：${previewProfile?.email.orEmpty()}",
                                "签名：${previewProfile?.slogan.orEmpty()}"
                            )
                        )
                    }
                } else {
                    AndroidView(
                        factory = { context2 ->
                            LayoutInflater.from(context2).inflate(R.layout.fragment_profile_edit, null, false)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = { view ->
                            val vm = screenViewModel ?: return@AndroidView
                            view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                            view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE

                            val userProfile = vm.userProfile ?: return@AndroidView
                            val avatarView = view.findViewById<de.hdodenhof.circleimageview.CircleImageView>(R.id.imageView_profile_avatar)
                            val nameView = view.findViewById<TextView>(R.id.textView_profile_name)
                            val birthdayView = view.findViewById<TextView>(R.id.textView_profile_birth)
                            val emailView = view.findViewById<TextView>(R.id.textView_profile_email)
                            val sloganEditText = view.findViewById<EditText>(R.id.editText_profile_slogan)
                            val updateButton = view.findViewById<Button>(R.id.button_profile_update)

                            val avatarPath = vm.avatarPreviewUri ?: userProfile.avatar?.let { g.b(it) }
                            if (avatarView != null && !avatarPath.isNullOrBlank()) {
                                Picasso.with(view.context).load(avatarPath).into(avatarView)
                            }

                            if (avatarView?.getTag(R.id.imageView_profile_avatar) != true) {
                                avatarView?.setOnClickListener { onAvatarClick() }
                                avatarView?.setTag(R.id.imageView_profile_avatar, true)
                            }

                            nameView?.text = displayName(userProfile)

                            birthdayView?.text = userProfile.birthday
                                ?.substringBefore("T")
                                ?.takeIf { it.isNotBlank() }
                                .orEmpty()

                            emailView?.text = userProfile.email.orEmpty()

                            val slogan = userProfile.slogan.orEmpty()
                            if (sloganEditText != null && !sloganEditText.isFocused && sloganEditText.text.toString() != slogan) {
                                sloganEditText.setText(slogan)
                            }

                            if (updateButton != null && updateButton.getTag(R.id.button_profile_update) != true) {
                                updateButton.setOnClickListener {
                                    vm.updateSlogan(sloganEditText?.text?.toString().orEmpty())
                                }
                                updateButton.setTag(R.id.button_profile_update, true)
                            }
                            updateButton?.isEnabled = !vm.isSubmitting
                        }
                    )
                }
            }
        }
    }
}

private fun displayName(userProfile: UserProfileObject): String {
    val raw = userProfile.name.orEmpty().trim()
    if (raw.isEmpty()) return ""
    if (raw.contains("SocketAddress", ignoreCase = true)) {
        val title = userProfile.title.orEmpty().trim()
        if (title.isNotEmpty()) return title
        val email = userProfile.email.orEmpty().trim()
        if (email.contains("@")) return email.substringBefore("@")
        return ""
    }
    return raw
}

@Preview(showBackground = true)
@Composable
private fun ProfileEditScreenPreview() {
    ProfileEditScreen(onBack = {})
}
