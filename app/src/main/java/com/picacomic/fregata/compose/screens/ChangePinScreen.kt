package com.picacomic.fregata.compose.screens

import android.widget.Toast
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaPrimaryButton
import com.picacomic.fregata.compose.components.PicaSecondaryScreen
import com.picacomic.fregata.compose.components.PicaTextField
import com.picacomic.fregata.compose.viewmodels.ChangePinViewModel

@Composable
fun ChangePinScreen(
    onBack: () -> Unit,
    viewModel: ChangePinViewModel? = null
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    val screenViewModel = previewAwareViewModel(viewModel)
    val pinErrorRes = screenViewModel?.pinErrorRes()
    val pinConfirmErrorRes = screenViewModel?.pinConfirmErrorRes()

    LaunchedEffect(screenViewModel?.clearSuccessEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.clearSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(
            context,
            R.string.change_pin_cancel_success,
            Toast.LENGTH_SHORT
        ).show()
        onBack()
    }

    LaunchedEffect(screenViewModel?.setSuccessEvent) {
        val vm = screenViewModel ?: return@LaunchedEffect
        if (inPreview || vm.setSuccessEvent <= 0) return@LaunchedEffect
        Toast.makeText(
            context,
            R.string.change_pin_set_success,
            Toast.LENGTH_SHORT
        ).show()
        onBack()
    }

    PicaComposeTheme {
        PicaSecondaryScreen(
            title = stringResource(R.string.setting_pin_title),
            onBack = onBack
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                PicaTextField(
                    value = screenViewModel?.pin.orEmpty(),
                    onValueChange = { screenViewModel?.updatePin(it) },
                    label = stringResource(R.string.change_password_new_title),
                    placeholder = stringResource(R.string.change_password_enter_new_hint),
                    errorText = pinErrorRes?.let { stringResource(it) },
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.NumberPassword)
                )

                PicaTextField(
                    value = screenViewModel?.pinConfirm.orEmpty(),
                    onValueChange = { screenViewModel?.updatePinConfirm(it) },
                    label = stringResource(R.string.change_password_new_confirm_title),
                    placeholder = stringResource(R.string.change_password_enter_new_hint),
                    errorText = pinConfirmErrorRes?.let { stringResource(it) },
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.NumberPassword)
                )

                PicaPrimaryButton(
                    text = stringResource(R.string.change_pin_cancel),
                    onClick = { screenViewModel?.clearPin() }
                )

                PicaPrimaryButton(
                    text = stringResource(R.string.change_password_change),
                    onClick = { screenViewModel?.savePin() },
                    enabled = screenViewModel?.canSubmit() == true
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ChangePinScreenPreview() {
    ChangePinScreen(onBack = {})
}
