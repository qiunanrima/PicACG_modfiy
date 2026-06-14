package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.Image
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.tooling.preview.PreviewParameter
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
        BoxWithConstraints(modifier = Modifier.fillMaxSize()) {
            val isLandscapeTablet = maxWidth >= 720.dp && maxWidth > maxHeight
            PicaScreenContainer(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(
                        horizontal = if (isLandscapeTablet) 40.dp else 20.dp,
                        vertical = if (isLandscapeTablet) 24.dp else 24.dp,
                    )
            ) {
                if (isLandscapeTablet) {
                    Row(
                        modifier = Modifier.fillMaxSize(),
                        horizontalArrangement = Arrangement.spacedBy(32.dp),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        LoginTitleImage(
                            modifier = Modifier
                                .weight(1f)
                                .widthIn(max = 460.dp),
                        )
                        LoginForm(
                            email = email,
                            password = password,
                            isLoading = isLoading,
                            showResendActivation = showResendActivation,
                            onEmailChange = onEmailChange,
                            onPasswordChange = onPasswordChange,
                            onLogin = onLogin,
                            onRegister = onRegister,
                            onForgotPassword = onForgotPassword,
                            onResendActivation = onResendActivation,
                            modifier = Modifier
                                .weight(1f)
                                .widthIn(max = 520.dp),
                        )
                    }
                } else {
                    Spacer(modifier = Modifier.height(32.dp))
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        verticalArrangement = Arrangement.spacedBy(24.dp)
                    ) {
                        LoginTitleImage(modifier = Modifier.fillMaxWidth())
                        LoginForm(
                            email = email,
                            password = password,
                            isLoading = isLoading,
                            showResendActivation = showResendActivation,
                            onEmailChange = onEmailChange,
                            onPasswordChange = onPasswordChange,
                            onLogin = onLogin,
                            onRegister = onRegister,
                            onForgotPassword = onForgotPassword,
                            onResendActivation = onResendActivation,
                            modifier = Modifier.fillMaxWidth(),
                        )
                    }
                    Spacer(modifier = Modifier.height(32.dp))
                }
            }
        }
    }
}

@Composable
private fun LoginTitleImage(modifier: Modifier = Modifier) {
    Image(
        painter = painterResource(id = R.drawable.splash_title_new),
        contentDescription = null,
        contentScale = ContentScale.Fit,
        modifier = modifier.aspectRatio(2.1f)
    )
}

@Composable
private fun LoginForm(
    email: String,
    password: String,
    isLoading: Boolean,
    showResendActivation: Boolean,
    onEmailChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onLogin: (email: String, password: String) -> Unit,
    onRegister: () -> Unit,
    onForgotPassword: () -> Unit,
    onResendActivation: () -> Unit,
    modifier: Modifier = Modifier,
) {
    PicaCardSection(modifier = modifier) {
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
}

@Preview(showBackground = true)
@Composable
private fun LoginScreenPreview(
    @PreviewParameter(LoginPreviewProvider::class) preview: LoginPreviewModel
) {
    LoginScreen(
        email = preview.email,
        password = preview.password,
        isLoading = preview.isLoading,
        showResendActivation = preview.showResendActivation,
        onEmailChange = {},
        onPasswordChange = {},
        onLogin = { _, _ -> },
        onRegister = {},
        onForgotPassword = {},
        onResendActivation = {}
    )
}
