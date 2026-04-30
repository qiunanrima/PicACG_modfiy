package com.picacomic.fregata.compose.screens

import android.content.Intent
import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.HelpOutline
import androidx.compose.material.icons.filled.Badge
import androidx.compose.material.icons.filled.QuestionAnswer
import androidx.compose.material.icons.filled.WarningAmber
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.activities.MainActivity
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaCardSection
import com.picacomic.fregata.compose.components.PicaPrimaryButton
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.components.PicaSectionHeader
import com.picacomic.fregata.compose.components.PicaTextField
import com.picacomic.fregata.compose.viewmodels.OneTimeUpdateViewModel
import com.picacomic.fregata.utils.views.AlertDialogCenter

@Composable
fun OneTimeUpdateQAScreen(
    onBack: () -> Unit,
    onSuccess: () -> Unit,
    viewModel: OneTimeUpdateViewModel? = null,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(screenViewModel?.successQaEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.successQaEvent <= 0) return@LaunchedEffect
        onSuccess()
    }

    LaunchedEffect(screenViewModel?.validationEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.validationEvent <= 0) return@LaunchedEffect
        AlertDialogCenter.showCustomAlertDialog(
            context,
            R.drawable.icon_exclamation_error,
            R.string.alert_edit_profile_question_error,
        )
    }

    OneTimeErrorEffect(screenViewModel, inPreview)

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_one_time_update),
            onBack = onBack,
        ) {
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(14.dp),
            ) {
                item {
                    PicaCardSection {
                        OneTimeHeader(
                            title = stringResource(R.string.forgot_password_q_and_a_title),
                            icon = { Icon(Icons.Filled.QuestionAnswer, contentDescription = null) },
                        )
                        PicaTextField(
                            value = screenViewModel?.question1.orEmpty(),
                            onValueChange = { screenViewModel?.updateQuestion1(it.take(100)) },
                            label = stringResource(R.string.register_question_1),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = screenViewModel?.answer1.orEmpty(),
                            onValueChange = { screenViewModel?.updateAnswer1(it.take(100)) },
                            label = stringResource(R.string.register_answer_1),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = screenViewModel?.question2.orEmpty(),
                            onValueChange = { screenViewModel?.updateQuestion2(it.take(100)) },
                            label = stringResource(R.string.register_question_2),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = screenViewModel?.answer2.orEmpty(),
                            onValueChange = { screenViewModel?.updateAnswer2(it.take(100)) },
                            label = stringResource(R.string.register_answer_2),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = screenViewModel?.question3.orEmpty(),
                            onValueChange = { screenViewModel?.updateQuestion3(it.take(100)) },
                            label = stringResource(R.string.register_question_3),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = screenViewModel?.answer3.orEmpty(),
                            onValueChange = { screenViewModel?.updateAnswer3(it.take(100)) },
                            label = stringResource(R.string.register_answer_3),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Done),
                        )
                    }
                }

                item {
                    PicaPrimaryButton(
                        text = if (screenViewModel?.isLoading == true) {
                            stringResource(R.string.loading_general)
                        } else {
                            stringResource(R.string.update)
                        },
                        enabled = screenViewModel?.isLoading != true,
                        onClick = { screenViewModel?.onClickQaUpdate() },
                    )
                }
            }
        }
    }
}

@Composable
fun OneTimeIdUpdateScreen(
    onBack: () -> Unit,
    viewModel: OneTimeUpdateViewModel? = null,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)

    LaunchedEffect(screenViewModel, inPreview) {
        if (!inPreview) {
            screenViewModel?.cd()
        }
    }

    LaunchedEffect(screenViewModel?.successIdEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.successIdEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, "更新成功！", Toast.LENGTH_SHORT).show()
        context.startActivity(Intent(context, MainActivity::class.java))
        (context as? MainActivity)?.finish()
    }

    OneTimeErrorEffect(screenViewModel, inPreview)

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.title_one_time_update),
            onBack = onBack,
        ) {
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(14.dp),
            ) {
                item {
                    PicaCardSection {
                        OneTimeHeader(
                            title = "注意事项",
                            icon = { Icon(Icons.Filled.WarningAmber, contentDescription = null) },
                        )
                        Text(
                            text = stringResource(R.string.one_time_update_content),
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                    }
                }

                item {
                    PicaCardSection {
                        OneTimeHeader(
                            title = stringResource(R.string.one_time_update_email),
                            icon = { Icon(Icons.Filled.Badge, contentDescription = null) },
                        )
                        PicaTextField(
                            value = screenViewModel?.picaId.orEmpty(),
                            onValueChange = { screenViewModel?.updatePicaId(it) },
                            label = stringResource(R.string.register_pica_id),
                            placeholder = "例如：ruff_is_beautiful.true1010",
                            errorText = screenViewModel?.picaIdErrorRes()?.let { stringResource(it) },
                            singleLine = false,
                            keyboardOptions = KeyboardOptions(
                                keyboardType = KeyboardType.Ascii,
                                imeAction = ImeAction.Next,
                            ),
                        )
                    }
                }

                item {
                    PicaCardSection {
                        PicaSectionHeader(title = stringResource(R.string.one_time_update_username))
                        PicaTextField(
                            value = screenViewModel?.username.orEmpty(),
                            onValueChange = { screenViewModel?.updateUsername(it) },
                            label = stringResource(R.string.register_username),
                            singleLine = false,
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Done),
                        )
                    }
                }

                item {
                    PicaPrimaryButton(
                        text = if (screenViewModel?.isLoading == true) {
                            stringResource(R.string.loading_general)
                        } else {
                            stringResource(R.string.update)
                        },
                        enabled = screenViewModel?.isLoading != true && screenViewModel?.canSubmitId() == true,
                        onClick = { screenViewModel?.dt() },
                    )
                }
            }
        }
    }
}

@Composable
fun QuestionScreen(onBack: () -> Unit) {
    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.forgot_password_q_and_a_title),
            onBack = onBack,
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                    PicaCardSection {
                        OneTimeHeader(
                            title = stringResource(R.string.forgot_password_q_and_a_title),
                            icon = { Icon(Icons.AutoMirrored.Filled.HelpOutline, contentDescription = null) },
                        )
                    Text(
                        text = stringResource(R.string.hello_blank_fragment),
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
        }
    }
}

@Composable
private fun OneTimeHeader(
    title: String,
    icon: @Composable () -> Unit,
) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        icon()
        PicaSectionHeader(
            title = title,
            modifier = Modifier.weight(1f),
        )
    }
}

@Composable
private fun OneTimeErrorEffect(
    viewModel: OneTimeUpdateViewModel?,
    inPreview: Boolean,
) {
    val context = LocalContext.current
    LaunchedEffect(viewModel?.errorEvent) {
        val vm = viewModel ?: return@LaunchedEffect
        if (inPreview || vm.errorEvent <= 0) return@LaunchedEffect
        val code = vm.errorCode
        if (code != null) {
            com.picacomic.fregata.b.c(context, code, vm.errorBody).dN()
        } else {
            com.picacomic.fregata.b.c(context).dN()
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun OneTimeUpdateQAScreenPreview() {
    OneTimeUpdateQAScreen(onBack = {}, onSuccess = {})
}

@Preview(showBackground = true)
@Composable
private fun OneTimeIdUpdateScreenPreview() {
    OneTimeIdUpdateScreen(onBack = {})
}
