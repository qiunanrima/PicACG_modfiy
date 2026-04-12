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
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.viewmodels.ChangePinViewModel

@Composable
fun ChangePinScreen(
    onBack: () -> Unit,
    viewModel: ChangePinViewModel = viewModel()
) {
    val context = LocalContext.current
    val pinErrorRes = viewModel.pinErrorRes()
    val pinConfirmErrorRes = viewModel.pinConfirmErrorRes()

    LaunchedEffect(viewModel.clearSuccessEvent) {
        if (viewModel.clearSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(
            context,
            R.string.change_pin_cancel_success,
            Toast.LENGTH_SHORT
        ).show()
        onBack()
    }

    LaunchedEffect(viewModel.setSuccessEvent) {
        if (viewModel.setSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(
            context,
            R.string.change_pin_set_success,
            Toast.LENGTH_SHORT
        ).show()
        onBack()
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
                        text = stringResource(R.string.setting_pin_title),
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
                OutlinedTextField(
                    value = viewModel.pin,
                    onValueChange = viewModel::updatePin,
                    label = { Text(stringResource(R.string.change_password_new_title)) },
                    placeholder = { Text(stringResource(R.string.change_password_enter_new_hint)) },
                    singleLine = true,
                    isError = pinErrorRes != null,
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.NumberPassword),
                    modifier = Modifier.fillMaxWidth()
                )
                if (pinErrorRes != null) {
                    Text(
                        text = stringResource(pinErrorRes),
                        color = MaterialTheme.colorScheme.error,
                        style = MaterialTheme.typography.bodySmall
                    )
                }

                OutlinedTextField(
                    value = viewModel.pinConfirm,
                    onValueChange = viewModel::updatePinConfirm,
                    label = { Text(stringResource(R.string.change_password_new_confirm_title)) },
                    placeholder = { Text(stringResource(R.string.change_password_enter_new_hint)) },
                    singleLine = true,
                    isError = pinConfirmErrorRes != null,
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.NumberPassword),
                    modifier = Modifier.fillMaxWidth()
                )
                if (pinConfirmErrorRes != null) {
                    Text(
                        text = stringResource(pinConfirmErrorRes),
                        color = MaterialTheme.colorScheme.error,
                        style = MaterialTheme.typography.bodySmall
                    )
                }

                Button(
                    onClick = viewModel::clearPin,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(text = stringResource(R.string.change_pin_cancel))
                }

                Button(
                    onClick = viewModel::savePin,
                    enabled = viewModel.canSubmit(),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(text = stringResource(R.string.change_password_change))
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ChangePinScreenPreview() {
    ChangePinScreen(onBack = {})
}
