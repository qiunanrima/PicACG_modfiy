package com.picacomic.fregata.compose.screens

import android.Manifest
import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.provider.MediaStore
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
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
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaRemoteImage
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.viewmodels.ProfileEditViewModel
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.FileProviderHelper
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
    var sloganText by rememberSaveable { mutableStateOf("") }
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
        val hasCameraPermission = ContextCompat.checkSelfPermission(
            context,
            Manifest.permission.CAMERA
        ) == PackageManager.PERMISSION_GRANTED

        if (!hasCameraPermission) {
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
                        val photoFile = FileProviderHelper.getCameraOutputFile(context)
                        val photoUri = FileProviderHelper.getUriForFile(context, photoFile)
                        pendingCameraUri = photoUri.toString()
                        val cameraIntent = Intent(MediaStore.ACTION_IMAGE_CAPTURE).apply {
                            putExtra(MediaStore.EXTRA_OUTPUT, photoUri)
                            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
                        }
                        cameraLauncher?.launch(cameraIntent)
                    } else {
                        val pickIntent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                            Intent(MediaStore.ACTION_PICK_IMAGES)
                        } else {
                            Intent(Intent.ACTION_PICK).apply {
                                type = "image/*"
                            }
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

    LaunchedEffect(screenViewModel?.userProfile?.slogan) {
        if (!inPreview) {
            sloganText = screenViewModel?.userProfile?.slogan.orEmpty()
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
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
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
                val userProfile = if (inPreview) previewProfile else screenViewModel?.userProfile
                val displaySlogan = if (inPreview) userProfile?.slogan.orEmpty() else sloganText
                if (inPreview || userProfile != null) {
                    LazyColumn(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        contentPadding = PaddingValues(0.dp),
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        item {
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
                                    PicaSectionHeader(title = stringResource(R.string.title_profile_edit))
                                    Box(
                                        modifier = Modifier
                                            .size(96.dp)
                                            .clip(MaterialTheme.shapes.extraLarge)
                                            .clickable(onClick = onAvatarClick),
                                    ) {
                                        PicaRemoteImage(
                                            thumbnail = userProfile?.avatar,
                                            contentDescription = userProfile?.name,
                                            modifier = Modifier.fillMaxSize(),
                                        )
                                    }
                                    ProfileEditInfoRow("Name", userProfile?.let(::displayName).orEmpty())
                                    ProfileEditInfoRow("Birthday", userProfile?.birthday?.substringBefore("T").orEmpty())
                                    ProfileEditInfoRow("Email", userProfile?.email.orEmpty())
                                }
                            }
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
                                    verticalArrangement = Arrangement.spacedBy(12.dp),
                                ) {
                                    OutlinedTextField(
                                        value = displaySlogan,
                                        onValueChange = { sloganText = it },
                                        label = { Text("Slogan") },
                                        minLines = 3,
                                        modifier = Modifier.fillMaxWidth(),
                                        enabled = !inPreview && screenViewModel?.isSubmitting != true,
                                    )
                                    Button(
                                        onClick = { screenViewModel?.updateSlogan(sloganText) },
                                        enabled = !inPreview && screenViewModel?.isSubmitting != true,
                                        modifier = Modifier.fillMaxWidth(),
                                    ) {
                                        Text(text = stringResource(R.string.update))
                                    }
                                }
                            }
                        }
                    }
                } else {
                    com.picacomic.fregata.compose.components.PicaLoadingIndicator()
                }
            }
        }
    }
}

@Composable
private fun ProfileEditInfoRow(
    label: String,
    value: String,
) {
    Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
        Text(
            text = label,
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Text(
            text = value.ifBlank { "-" },
            style = MaterialTheme.typography.bodyLarge,
        )
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
