package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AdminPanelSettings
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.Block
import androidx.compose.material.icons.filled.DeleteSweep
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Report
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.MainActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaImageUrl
import com.picacomic.fregata.compose.components.PicaLoadingIndicator
import com.picacomic.fregata.compose.components.PicaTextField
import com.picacomic.fregata.compose.components.PicaUserAvatar
import com.picacomic.fregata.compose.viewmodels.ProfilePopupViewModel
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.g

@Composable
fun ProfilePopupDialogContent(
    viewModel: ProfilePopupViewModel,
    onDismiss: () -> Unit,
    onShowImage: (String) -> Unit,
    onEditTitle: (String, String?) -> Unit,
    onAdjustExp: (String?, String?) -> Unit,
) {
    val context = LocalContext.current
    val profile = viewModel.jW
    val isAdmin = e.u(context)?.contains("@picacomic.com") == true

    ProfilePopupEffects(viewModel = viewModel, onDismiss = onDismiss)

    PicaComposeTheme {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            contentAlignment = Alignment.Center,
        ) {
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .widthIn(max = 420.dp),
                shape = MaterialTheme.shapes.large,
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                ),
            ) {
                Column(
                    modifier = Modifier.padding(20.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(12.dp),
                ) {
                    if (viewModel.isLoading && profile == null) {
                        PicaLoadingIndicator(modifier = Modifier.size(96.dp))
                    } else if (profile == null) {
                        Icon(
                            imageVector = Icons.Filled.Person,
                            contentDescription = null,
                            modifier = Modifier.size(64.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                        Text(
                            text = stringResource(R.string.alert_general_error),
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                        )
                    } else {
                        ProfilePopupBody(
                            profile = profile,
                            isAdmin = isAdmin,
                            adminExpanded = viewModel.adminExpanded,
                            isLoading = viewModel.isLoading,
                            onToggleAdmin = viewModel::toggleAdminFunction,
                            onBlock = viewModel::dC,
                            onDirty = viewModel::dG,
                            onRemoveComments = viewModel::dE,
                            onAvatarClick = {
                                val url = profile.avatar?.let { g.b(it) }.orEmpty()
                                if (url.isNotBlank()) {
                                    onShowImage(url)
                                    onDismiss()
                                }
                            },
                            onTitleClick = {
                                if (g.ax(context) != 0 && !profile.userId.isNullOrBlank()) {
                                    onEditTitle(profile.userId, profile.title)
                                    onDismiss()
                                }
                            },
                            onLevelClick = {
                                if (g.ax(context) != 0 && !profile.name.isNullOrBlank() && !profile.userId.isNullOrBlank()) {
                                    onAdjustExp(profile.name, profile.userId)
                                    onDismiss()
                                }
                            },
                        )
                    }
                }
            }
        }

        when (viewModel.confirmDialog) {
            ProfilePopupViewModel.ConfirmDialog.Block -> {
                ConfirmAdminDialog(
                    title = stringResource(R.string.alert_block_user_title),
                    text = stringResource(R.string.alert_block_user_content),
                    onDismiss = viewModel::dismissConfirmDialog,
                    onConfirm = viewModel::dD,
                )
            }

            ProfilePopupViewModel.ConfirmDialog.RemoveComment -> {
                ConfirmAdminDialog(
                    title = stringResource(R.string.alert_remove_all_comment_title),
                    text = stringResource(R.string.alert_remove_all_comment_content),
                    onDismiss = viewModel::dismissConfirmDialog,
                    onConfirm = viewModel::dF,
                )
            }

            null -> Unit
        }
    }
}

@Composable
@OptIn(ExperimentalLayoutApi::class)
private fun ProfilePopupBody(
    profile: UserProfileObject,
    isAdmin: Boolean,
    adminExpanded: Boolean,
    isLoading: Boolean,
    onToggleAdmin: () -> Unit,
    onBlock: () -> Unit,
    onDirty: () -> Unit,
    onRemoveComments: () -> Unit,
    onAvatarClick: () -> Unit,
    onTitleClick: () -> Unit,
    onLevelClick: () -> Unit,
) {
    Row(
        modifier = Modifier
            .clickable(onClick = onLevelClick)
            .padding(horizontal = 10.dp, vertical = 6.dp),
        horizontalArrangement = Arrangement.spacedBy(4.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = stringResource(R.string.level),
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Text(
            text = profile.level.toString(),
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.primary,
        )
    }

    if (isAdmin) {
        AssistChip(
            onClick = onToggleAdmin,
            label = { Text("功能") },
            leadingIcon = { Icon(Icons.Filled.AdminPanelSettings, contentDescription = null) },
        )
        if (adminExpanded) {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                AssistChip(
                    enabled = !isLoading,
                    onClick = onBlock,
                    label = { Text(stringResource(R.string.profile_popup_block)) },
                    leadingIcon = { Icon(Icons.Filled.Block, contentDescription = null) },
                )
                AssistChip(
                    enabled = !isLoading,
                    onClick = onDirty,
                    label = { Text(stringResource(R.string.profile_popup_woo)) },
                    leadingIcon = { Icon(Icons.Filled.Report, contentDescription = null) },
                )
                AssistChip(
                    enabled = !isLoading,
                    onClick = onRemoveComments,
                    label = { Text(stringResource(R.string.profile_popup_remove_comment)) },
                    leadingIcon = { Icon(Icons.Filled.DeleteSweep, contentDescription = null) },
                )
            }
        }
    }

    PicaUserAvatar(
        thumbnail = profile.avatar,
        name = profile.name,
        modifier = Modifier.size(112.dp),
        onClick = onAvatarClick,
    )

    if (!profile.character.isNullOrBlank()) {
        PicaImageUrl(
            imageUrl = profile.character,
            contentDescription = null,
            modifier = Modifier.size(72.dp),
            contentScale = ContentScale.Fit,
        )
    }

    Text(
        text = profile.name.orEmpty(),
        style = MaterialTheme.typography.titleLarge,
        textAlign = TextAlign.Center,
        maxLines = 2,
        overflow = TextOverflow.Ellipsis,
    )

    val gender = profile.gender?.let { g.E(LocalContext.current, it) }.orEmpty()
    Text(
        text = buildString {
            append(profile.title.orEmpty())
            if (gender.isNotBlank()) append(" ($gender)")
        },
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onTitleClick)
            .padding(vertical = 4.dp),
        style = MaterialTheme.typography.bodyLarge,
        color = MaterialTheme.colorScheme.primary,
        textAlign = TextAlign.Center,
        maxLines = 2,
        overflow = TextOverflow.Ellipsis,
    )

    Text(
        text = profile.slogan.orEmpty(),
        style = MaterialTheme.typography.bodyMedium,
        color = MaterialTheme.colorScheme.onSurfaceVariant,
        textAlign = TextAlign.Center,
    )
}

@Composable
fun TitleEditDialogContent(
    viewModel: ProfilePopupViewModel,
    onDismiss: () -> Unit,
) {
    ProfilePopupEffects(viewModel = viewModel, onDismiss = onDismiss)

    PicaComposeTheme {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            contentAlignment = Alignment.Center,
        ) {
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .widthIn(max = 420.dp),
                shape = MaterialTheme.shapes.large,
                colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
            ) {
                Column(
                    modifier = Modifier.padding(20.dp),
                    verticalArrangement = Arrangement.spacedBy(14.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(Icons.Filled.Badge, contentDescription = null)
                        Text(
                            text = viewModel.titleUserId.orEmpty(),
                            style = MaterialTheme.typography.titleMedium,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                    Text(
                        text = viewModel.rY.orEmpty(),
                        style = MaterialTheme.typography.titleLarge,
                        color = MaterialTheme.colorScheme.primary,
                        textAlign = TextAlign.Center,
                    )
                    PicaTextField(
                        value = viewModel.newTitle,
                        onValueChange = viewModel::updateNewTitle,
                        label = "NEW TITLE",
                        keyboardOptions = KeyboardOptions(imeAction = ImeAction.Done),
                    )
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        Button(
                            modifier = Modifier.weight(1f),
                            enabled = !viewModel.isLoading,
                            onClick = { viewModel.aj(viewModel.newTitle) },
                        ) {
                            Icon(Icons.Filled.Edit, contentDescription = null)
                            Text(stringResource(R.string.ok))
                        }
                        OutlinedButton(
                            modifier = Modifier.weight(1f),
                            onClick = onDismiss,
                        ) {
                            Text(stringResource(R.string.cancel))
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ConfirmAdminDialog(
    title: String,
    text: String,
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(title) },
        text = { Text(text) },
        confirmButton = {
            TextButton(onClick = onConfirm) {
                Text(stringResource(R.string.ok))
            }
        },
    )
}

@Composable
private fun ProfilePopupEffects(
    viewModel: ProfilePopupViewModel,
    onDismiss: () -> Unit,
) {
    val context = LocalContext.current
    LaunchedEffect(viewModel.messageEvent) {
        if (viewModel.messageEvent <= 0) return@LaunchedEffect
        val text = viewModel.messageText
        if (text != null) {
            Toast.makeText(context, text, Toast.LENGTH_SHORT).show()
        } else {
            viewModel.messageRes?.let {
                Toast.makeText(context, it, Toast.LENGTH_SHORT).show()
            }
        }
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
    LaunchedEffect(viewModel.dismissEvent) {
        if (viewModel.dismissEvent > 0) {
            onDismiss()
        }
    }
}
