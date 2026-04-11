package com.picacomic.fregata.compose.screens

import android.view.LayoutInflater
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
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ProfileEditViewModel
import com.picacomic.fregata.utils.g
import com.squareup.picasso.Picasso

@Composable
fun ProfileEditScreen(
    onBack: () -> Unit,
    viewModel: ProfileEditViewModel = viewModel()
) {
    // Get current user ID from settings/context - typically stored after login
    val context = LocalContext.current
    val currentUserId = try {
        com.picacomic.fregata.utils.e.w(context)?.toString() ?: ""
    } catch (e: Exception) {
        ""
    }
    
    LaunchedEffect(currentUserId) {
        if (currentUserId.toString().isNotEmpty()) {
            viewModel.loadProfile(currentUserId.toString())
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
                        Icon(imageVector = Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                    Text(
                        text = stringResource(R.string.edit),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
                }
            }
            Box(modifier = Modifier.weight(1f)) {
                AndroidView(
                    factory = { context ->
                        LayoutInflater.from(context).inflate(R.layout.fragment_profile_edit, null, false)
                    },
                    modifier = Modifier.fillMaxSize(),
                    update = { view ->
                        val userProfile = viewModel.userProfile
                        
                        if (userProfile != null) {
                            // Load avatar
                            val avatarView = view.findViewById<de.hdodenhof.circleimageview.CircleImageView>(R.id.imageView_profile_avatar)
                            if (avatarView != null && userProfile.avatar != null) {
                                Picasso.with(view.context).load(g.b(userProfile.avatar)).into(avatarView)
                            }
                            
                            // Set name
                            try {
                                val nameView = view.findViewById<android.widget.TextView>(R.id.textView_profile_name)
                                nameView?.text = userProfile.name
                            } catch (e: Exception) {
                                e.printStackTrace()
                            }
                            
                            // Set birthday (extract date part before 'T')
                            try {
                                val birthdayView = view.findViewById<android.widget.TextView>(R.id.textView_profile_birth)
                                val birthday = userProfile.birthday
                                if (birthday != null) {
                                    val dateOnly = birthday.substring(0, birthday.indexOf("T"))
                                    birthdayView?.text = dateOnly
                                }
                            } catch (e: Exception) {
                                e.printStackTrace()
                            }
                            
                            // Set email
                            try {
                                val emailView = view.findViewById<android.widget.TextView>(R.id.textView_profile_email)
                                emailView?.text = userProfile.email
                            } catch (e: Exception) {
                                e.printStackTrace()
                            }
                            
                            // Set slogan in EditText
                            try {
                                val sloganEditText = view.findViewById<android.widget.EditText>(R.id.editText_profile_slogan)
                                sloganEditText?.setText(userProfile.slogan ?: "")
                            } catch (e: Exception) {
                                e.printStackTrace()
                            }
                        }
                    }
                )
            }
        }
    }
}
