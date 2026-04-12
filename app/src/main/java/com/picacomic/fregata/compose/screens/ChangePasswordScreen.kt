package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ChangePasswordViewModel

@Composable
fun ChangePasswordScreen(
    onBack: () -> Unit,
    viewModel: ChangePasswordViewModel = viewModel()
) {
    val context = LocalContext.current
    val passwordErrorRes = viewModel.passwordErrorRes()
    val passwordConfirmErrorRes = viewModel.passwordConfirmErrorRes()

    LaunchedEffect(viewModel.successEvent) {
        if (viewModel.successEvent <= 0) return@LaunchedEffect
        Toast.makeText(context, R.string.change_password_success, Toast.LENGTH_SHORT).show()
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
                        Icon(
                            imageVector = Icons.Filled.ArrowBack,
                            contentDescription = "Back"
                        )
                    }
                    Text(
                        text = stringResource(R.string.setting_password_title),
                        style = MaterialTheme.typography.titleLarge,
                        modifier = Modifier.padding(start = 8.dp)
                    )
                }
            }

            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                val transformation = if (viewModel.showPassword) {
                    VisualTransformation.None
                } else {
                    PasswordVisualTransformation()
                }

                OutlinedTextField(
                    value = viewModel.password,
                    onValueChange = viewModel::updatePassword,
                    label = { Text(stringResource(R.string.change_password_new_title)) },
                    placeholder = { Text(stringResource(R.string.change_password_enter_new_hint)) },
                    singleLine = true,
                    isError = passwordErrorRes != null,
                    visualTransformation = transformation,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password),
                    modifier = Modifier.fillMaxWidth()
                )
                if (passwordErrorRes != null) {
                    Text(
                        text = stringResource(passwordErrorRes),
                        color = MaterialTheme.colorScheme.error,
                        style = MaterialTheme.typography.bodySmall
                    )
                }

                OutlinedTextField(
                    value = viewModel.passwordConfirm,
                    onValueChange = viewModel::updatePasswordConfirm,
                    label = { Text(stringResource(R.string.change_password_new_confirm_title)) },
                    placeholder = { Text(stringResource(R.string.change_password_enter_new_hint)) },
                    singleLine = true,
                    isError = passwordConfirmErrorRes != null,
                    visualTransformation = transformation,
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password),
                    modifier = Modifier.fillMaxWidth()
                )
                if (passwordConfirmErrorRes != null) {
                    Text(
                        text = stringResource(passwordConfirmErrorRes),
                        color = MaterialTheme.colorScheme.error,
                        style = MaterialTheme.typography.bodySmall
                    )
                }

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Checkbox(
                        checked = viewModel.showPassword,
                        onCheckedChange = viewModel::updateShowPassword
                    )
                    Text(text = stringResource(R.string.change_password_show_password))
                }

                Button(
                    onClick = viewModel::submit,
                    enabled = viewModel.canSubmit() && !viewModel.isLoading,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(
                        text = if (viewModel.isLoading) {
                            stringResource(R.string.loading_general)
                        } else {
                            stringResource(R.string.change_password_change)
                        }
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ChangePasswordScreenPreview() {
    ChangePasswordScreen(onBack = {})
}
