package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ProfileEditViewModel
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso

@Composable
fun ProfileEditScreen(
    onBack: () -> Unit,
    viewModel: ProfileEditViewModel = viewModel()
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current

    LaunchedEffect(Unit) {
        viewModel.loadSelfProfile(force = true)
    }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                viewModel.loadSelfProfile(force = true)
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }

    LaunchedEffect(viewModel.updateSuccessEvent) {
        if (viewModel.updateSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, R.string.profile_edit_update_success, Toast.LENGTH_SHORT).show()
        onBack()
    }

    LaunchedEffect(viewModel.errorEvent) {
        if (viewModel.errorEvent <= 0) return@LaunchedEffect
        val code = viewModel.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, viewModel.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }

    PicaComposeTheme {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .background(MaterialTheme.colorScheme.background)
        ) {
            Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 8.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = onBack) {
                        Icon(imageVector = Icons.Filled.ArrowBack, contentDescription = "Back")
                    }
                    Text(
                        text = stringResource(R.string.title_profile_edit),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context2 ->
                        LayoutInflater.from(context2).inflate(R.layout.fragment_profile_edit, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        view.findViewById<View>(R.id.appbar)?.visibility = View.GONE
                        view.findViewById<View>(R.id.toolbar)?.visibility = View.GONE

                        val userProfile = viewModel.userProfile ?: return@AndroidView
                        val avatarView = view.findViewById<de.hdodenhof.circleimageview.CircleImageView>(R.id.imageView_profile_avatar)
                        val nameView = view.findViewById<TextView>(R.id.textView_profile_name)
                        val birthdayView = view.findViewById<TextView>(R.id.textView_profile_birth)
                        val emailView = view.findViewById<TextView>(R.id.textView_profile_email)
                        val sloganEditText = view.findViewById<EditText>(R.id.editText_profile_slogan)
                        val updateButton = view.findViewById<Button>(R.id.button_profile_update)

                        if (avatarView != null && userProfile.avatar != null) {
                            Picasso.with(view.context).load(g.b(userProfile.avatar)).into(avatarView)
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
                                viewModel.updateSlogan(sloganEditText?.text?.toString().orEmpty())
                            }
                            updateButton.setTag(R.id.button_profile_update, true)
                        }
                        updateButton?.isEnabled = !viewModel.isSubmitting
                    }
                )
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
