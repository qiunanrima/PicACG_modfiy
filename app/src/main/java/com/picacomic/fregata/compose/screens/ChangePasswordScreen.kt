package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Checkbox
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaPrimaryButton
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.components.PicaTextField
import com.picacomic.fregata.compose.viewmodels.ChangePasswordViewModel

@Composable
fun ChangePasswordScreen(
    onBack: () -> Unit,
    viewModel: ChangePasswordViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val passwordErrorRes = screenViewModel?.passwordErrorRes()
    val passwordConfirmErrorRes = screenViewModel?.passwordConfirmErrorRes()

    LaunchedEffect(screenViewModel?.successEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.successEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, R.string.change_password_success, Toast.LENGTH_SHORT).show()
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
        PicaSecondaryScreen(
            title = stringResource(R.string.title_setting),
            onBack = onBack
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                val transformation = if (screenViewModel?.showPassword == true) {
                    VisualTransformation.None
                } else {
                    PasswordVisualTransformation()
                }

                PicaTextField(
                    value = screenViewModel?.password.orEmpty(),
                    onValueChange = { screenViewModel?.updatePassword(it) },
                    label = stringResource(R.string.change_password_new_title),
                    placeholder = stringResource(R.string.change_password_enter_new_hint),
                    errorText = passwordErrorRes?.let { stringResource(it) },
                    visualTransformation = transformation,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password)
                )

                PicaTextField(
                    value = screenViewModel?.passwordConfirm.orEmpty(),
                    onValueChange = { screenViewModel?.updatePasswordConfirm(it) },
                    label = stringResource(R.string.change_password_new_confirm_title),
                    placeholder = stringResource(R.string.change_password_enter_new_hint),
                    errorText = passwordConfirmErrorRes?.let { stringResource(it) },
                    visualTransformation = transformation,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password)
                )

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Checkbox(
                        checked = screenViewModel?.showPassword == true,
                        onCheckedChange = { screenViewModel?.updateShowPassword(it) }
                    )
                    Text(text = stringResource(R.string.change_password_show_password))
                }

                PicaPrimaryButton(
                    text = if (screenViewModel?.isLoading == true) {
                        stringResource(R.string.loading_general)
                    } else {
                        stringResource(R.string.change_password_change)
                    },
                    onClick = { screenViewModel?.submit() },
                    enabled = screenViewModel?.canSubmit() == true &&
                        screenViewModel?.isLoading != true
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ChangePasswordScreenPreview() {
    ChangePasswordScreen(onBack = {})
}
