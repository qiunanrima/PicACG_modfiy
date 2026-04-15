package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaCardSection
import com.picacomic.fregata.compose.components.PicaPrimaryButton
import com.picacomic.fregata.compose.components.PicaScreenContainer
import com.picacomic.fregata.compose.components.PicaTextField

@Composable
fun LoginScreen(
    email: String,
    password: String,
    isLoading: Boolean = false,
    showResendActivation: Boolean = false,
    onEmailChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onLogin: (email: String, password: String) -> Unit,
    onRegister: () -> Unit,
    onForgotPassword: () -> Unit,
    onResendActivation: () -> Unit,
) {
    PicaComposeTheme {
        PicaScreenContainer(
            modifier = Modifier.padding(horizontal = 20.dp, vertical = 24.dp)
        ) {
            Spacer(modifier = Modifier.weight(1f))
            Image(
                painter = painterResource(id = R.drawable.splash_title_new),
                contentDescription = null,
                modifier = Modifier.fillMaxWidth()
            )
            Spacer(modifier = Modifier.height(24.dp))
            PicaCardSection(
                modifier = Modifier.fillMaxWidth()
            ) {
                PicaTextField(
                    value = email,
                    onValueChange = onEmailChange,
                    label = stringResource(R.string.login_email),
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Email,
                        imeAction = ImeAction.Next
                    )
                )
                PicaTextField(
                    value = password,
                    onValueChange = onPasswordChange,
                    label = stringResource(R.string.login_password),
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(
                        keyboardType = KeyboardType.Password,
                        imeAction = ImeAction.Done
                    )
                )
                PicaPrimaryButton(
                    text = if (isLoading) {
                        stringResource(R.string.loading_sign_in)
                    } else {
                        stringResource(R.string.login_login_button)
                    },
                    onClick = { onLogin(email, password) },
                    enabled = !isLoading
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    TextButton(onClick = onRegister) {
                        Text(text = stringResource(R.string.login_register))
                    }
                    if (showResendActivation) {
                        TextButton(onClick = onResendActivation) {
                            Text(text = stringResource(R.string.login_resend_activation))
                        }
                    }
                    TextButton(onClick = onForgotPassword) {
                        Text(text = stringResource(R.string.login_forget_password))
                    }
                }
            }
            Spacer(modifier = Modifier.weight(1f))
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun LoginScreenPreview() {
    LoginScreen(
        email = "",
        password = "",
        onEmailChange = {},
        onPasswordChange = {},
        onLogin = { _, _ -> },
        onRegister = {},
        onForgotPassword = {},
        onResendActivation = {}
    )
}
