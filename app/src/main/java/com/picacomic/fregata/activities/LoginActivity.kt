package com.picacomic.fregata.activities

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.DatePicker
import androidx.compose.material3.DatePickerDialog
import androidx.compose.material3.rememberDatePickerState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.key
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.DialogProperties
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaConfirmDialog
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import com.picacomic.fregata.R
import com.picacomic.fregata.a_pkg.g
import com.picacomic.fregata.b.c
import com.picacomic.fregata.compose.screens.LoginScreen
import com.picacomic.fregata.compose.screens.RegisterScreen
import com.picacomic.fregata.compose.viewmodels.LoginViewModel
import com.picacomic.fregata.compose.viewmodels.RegisterValidationError
import com.picacomic.fregata.compose.viewmodels.RegisterViewModel
import com.picacomic.fregata.objects.NetworkErrorObject
import com.picacomic.fregata.utils.views.AlertDialogCenter
import java.util.Calendar
import java.util.TimeZone

class LoginActivity : BaseActivity() {
    private val viewModel: LoginViewModel by viewModels()
    private val registerViewModel: RegisterViewModel by viewModels()

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()
        viewModel.initialize()

        setContent {
            var accountDialog by remember { mutableStateOf<AccountDialog?>(null) }
            var showingRegister by rememberSaveable { mutableStateOf(false) }
            var showBirthdayPicker by rememberSaveable { mutableStateOf(false) }
            var registerSignInError by remember { mutableStateOf<NetworkErrorObject?>(null) }

            if (showingRegister) {
                RegisterScreen(
                    username = registerViewModel.username,
                    email = registerViewModel.email,
                    password = registerViewModel.password,
                    passwordConfirm = registerViewModel.passwordConfirm,
                    question1 = registerViewModel.question1,
                    answer1 = registerViewModel.answer1,
                    question2 = registerViewModel.question2,
                    answer2 = registerViewModel.answer2,
                    question3 = registerViewModel.question3,
                    answer3 = registerViewModel.answer3,
                    birthdayText = registerViewModel.birthdayDisplay(
                        prefix = getString(R.string.register_date_of_birth_prefix),
                        suffix = getString(R.string.register_age),
                    ),
                    selectedGenderIndex = registerViewModel.selectedGenderIndex,
                    isLoading = registerViewModel.isLoading,
                    loadingText = getString(registerViewModel.loadingTextRes),
                    onUsernameChange = registerViewModel::updateUsername,
                    onEmailChange = registerViewModel::updateEmail,
                    onPasswordChange = registerViewModel::updatePassword,
                    onPasswordConfirmChange = registerViewModel::updatePasswordConfirm,
                    onQuestion1Change = registerViewModel::updateQuestion1,
                    onAnswer1Change = registerViewModel::updateAnswer1,
                    onQuestion2Change = registerViewModel::updateQuestion2,
                    onAnswer2Change = registerViewModel::updateAnswer2,
                    onQuestion3Change = registerViewModel::updateQuestion3,
                    onAnswer3Change = registerViewModel::updateAnswer3,
                    onGenderChange = registerViewModel::aa,
                    onBirthdayClick = { showBirthdayPicker = true },
                    onSubmit = registerViewModel::dI,
                    onBack = { showingRegister = false },
                )
            } else {
                LoginScreen(
                    email = viewModel.email,
                    password = viewModel.password,
                    isLoading = viewModel.isLoading,
                    showResendActivation = viewModel.showResendActivation,
                    onEmailChange = viewModel::updateEmail,
                    onPasswordChange = viewModel::updatePassword,
                    onLogin = { _, _ ->
                        if (!viewModel.canSubmitLogin()) {
                            AlertDialogCenter.passwordLength(this@LoginActivity)
                        } else {
                            viewModel.submitLogin()
                        }
                    },
                    onRegister = { showingRegister = true },
                    onForgotPassword = { accountDialog = AccountDialog.ForgotPassword },
                    onResendActivation = { accountDialog = AccountDialog.ResendActivation },
                )
            }

            if (showingRegister && showBirthdayPicker) {
                BirthdayPicker(onDismiss = { showBirthdayPicker = false })
            }

            registerSignInError?.let { error ->
                PicaComposeTheme {
                    PicaConfirmDialog(
                        title = error.error.orEmpty(),
                        body = "${error.message}\n${error.detail}",
                        dismissText = null,
                        onConfirm = {},
                        onDismiss = { registerSignInError = null },
                    )
                }
            }

            accountDialog?.let { step ->
                key(step) {
                    AccountInputDialog(step, onDismiss = { accountDialog = null })
                }
            }

            LaunchedEffect(viewModel.navigateToMainEvent) {
                if (viewModel.navigateToMainEvent > 0) {
                    goToMain()
                }
            }

            LaunchedEffect(viewModel.passwordLengthErrorEvent) {
                if (viewModel.passwordLengthErrorEvent > 0) {
                    AlertDialogCenter.passwordLength(this@LoginActivity)
                }
            }

            LaunchedEffect(viewModel.securityQuestionEvent) {
                if (viewModel.securityQuestionEvent > 0) {
                    accountDialog = AccountDialog.SecurityAnswer
                }
            }

            LaunchedEffect(viewModel.recoveredPasswordEvent) {
                if (viewModel.recoveredPasswordEvent > 0) {
                    val newPassword = viewModel.recoveredPassword.orEmpty()
                    try {
                        (getSystemService("clipboard") as ClipboardManager)
                            .setPrimaryClip(ClipData.newPlainText("text", newPassword))
                        Toast.makeText(this@LoginActivity, "新密碼已複製", Toast.LENGTH_SHORT).show()
                        Toast.makeText(this@LoginActivity, "登入後請到「設定」修改密碼", Toast.LENGTH_SHORT).show()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                }
            }

            LaunchedEffect(viewModel.errorEvent) {
                if (viewModel.errorEvent <= 0) return@LaunchedEffect
                val code = viewModel.errorCode
                if (code != null) {
                    try {
                        c(this@LoginActivity, code, viewModel.errorBody.orEmpty()).dN()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                } else {
                    c(this@LoginActivity).dN()
                }
            }

            LaunchedEffect(registerViewModel.validationErrorEvent) {
                if (registerViewModel.validationErrorEvent <= 0) return@LaunchedEffect
                when (registerViewModel.validationError) {
                    RegisterValidationError.UsernameLength -> AlertDialogCenter.usernameLength(this@LoginActivity)
                    RegisterValidationError.CannotStartWithPica -> AlertDialogCenter.cannotStartWithPica(this@LoginActivity)
                    RegisterValidationError.PasswordLength -> AlertDialogCenter.passwordLength(this@LoginActivity)
                    RegisterValidationError.PasswordNotMatch -> AlertDialogCenter.passwordNotMatch(this@LoginActivity)
                    RegisterValidationError.Birthday -> AlertDialogCenter.birthday(this@LoginActivity)
                    RegisterValidationError.AgeNotEnough -> AlertDialogCenter.ageNotEnough(this@LoginActivity)
                    null -> Unit
                }
            }

            LaunchedEffect(registerViewModel.registerSuccessEvent) {
                if (registerViewModel.registerSuccessEvent <= 0) return@LaunchedEffect
                AlertDialogCenter.showCustomAlertDialog(
                    this@LoginActivity,
                    R.drawable.icon_success,
                    R.string.alert_register_success_title,
                    R.string.alert_register_success,
                    { registerViewModel.dr() },
                    null,
                )
            }

            LaunchedEffect(registerViewModel.navigateToMainEvent) {
                if (registerViewModel.navigateToMainEvent > 0) {
                    goToMain()
                }
            }

            LaunchedEffect(registerViewModel.errorEvent) {
                if (registerViewModel.errorEvent <= 0) return@LaunchedEffect
                val closeRegister = registerViewModel.signInErrorShouldCloseRegister
                if (closeRegister) {
                    showingRegister = false
                }
                val code = registerViewModel.errorCode
                if (code != null) {
                    try {
                        if (closeRegister) {
                            c(
                                this@LoginActivity,
                                code,
                                registerViewModel.errorBody.orEmpty(),
                                object : g {
                                    override fun a(i: Int, networkErrorObject: NetworkErrorObject?) {
                                        if (networkErrorObject == null) {
                                            AlertDialogCenter.generalError(this@LoginActivity)
                                            return
                                        }
                                        registerSignInError = networkErrorObject
                                    }
                                },
                            ).dN()
                        } else {
                            c(this@LoginActivity, code, registerViewModel.errorBody.orEmpty()).dN()
                        }
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                } else {
                    c(this@LoginActivity).dN()
                }
            }
        }
    }

    private fun goToMain() {
        startActivity(Intent(this, MainActivity::class.java as Class<*>))
        finish()
    }

    @Composable
    private fun BirthdayPicker(onDismiss: () -> Unit) {
        val utc = TimeZone.getTimeZone("UTC")
        val initialDate = Calendar.getInstance(utc).apply {
            clear()
            set(registerViewModel.selectedYear, registerViewModel.selectedMonth, registerViewModel.selectedDay)
        }
        val picker = rememberDatePickerState(initialSelectedDateMillis = initialDate.timeInMillis)
        PicaComposeTheme {
            DatePickerDialog(
                onDismissRequest = onDismiss,
                confirmButton = {
                    TextButton(
                        enabled = picker.selectedDateMillis != null,
                        onClick = {
                            picker.selectedDateMillis?.let { selected ->
                                val date = Calendar.getInstance(utc).apply { timeInMillis = selected }
                                registerViewModel.setBirthday(
                                    date.get(Calendar.YEAR),
                                    date.get(Calendar.MONTH),
                                    date.get(Calendar.DAY_OF_MONTH),
                                )
                            }
                            onDismiss()
                        },
                    ) { Text(stringResource(R.string.ok)) }
                },
                dismissButton = {
                    TextButton(onClick = onDismiss) { Text(stringResource(R.string.cancel)) }
                },
            ) { DatePicker(state = picker) }
        }
    }

    private enum class AccountDialog { ForgotPassword, SecurityAnswer, ResendActivation }

    @Composable
    private fun AccountInputDialog(
        step: AccountDialog,
        onDismiss: () -> Unit,
    ) {
        val prompt = viewModel.securityQuestionPrompt
        if (step == AccountDialog.SecurityAnswer && prompt == null) return

        var input by remember { mutableStateOf("") }
        val error = when (step) {
            AccountDialog.ForgotPassword -> viewModel.validatePicaId(input)
            AccountDialog.SecurityAnswer -> null
            AccountDialog.ResendActivation -> viewModel.validateEmail(input)
        }
        val title = if (step == AccountDialog.ResendActivation) {
            R.string.login_resend_activation
        } else {
            R.string.login_forget_password
        }
        val label = when (step) {
            AccountDialog.ForgotPassword -> stringResource(R.string.register_pica_id)
            AccountDialog.SecurityAnswer -> "Answer ${prompt?.questionNumber}"
            AccountDialog.ResendActivation -> stringResource(R.string.prompt_email)
        }
        val showError = input.isNotEmpty() && error != null

        PicaComposeTheme {
            AlertDialog(
                onDismissRequest = onDismiss,
                properties = DialogProperties(dismissOnBackPress = false, dismissOnClickOutside = false),
                title = { Text(stringResource(title)) },
                text = {
                    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                        if (step == AccountDialog.SecurityAnswer && prompt != null) {
                            Text(prompt.questionText)
                        }
                        OutlinedTextField(
                            value = input,
                            onValueChange = { input = it.take(100) },
                            label = { Text(label) },
                            modifier = Modifier.fillMaxWidth(),
                            singleLine = true,
                            isError = showError,
                            supportingText = error?.takeIf { showError }?.let { res ->
                                { Text(stringResource(res)) }
                            },
                        )
                    }
                },
                shape = MaterialTheme.shapes.extraLarge,
                containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
                tonalElevation = 0.dp,
                confirmButton = {
                    TextButton(
                        enabled = input.isNotBlank() && error == null,
                        onClick = {
                            when (step) {
                                AccountDialog.ForgotPassword -> viewModel.requestForgotPassword(input)
                                AccountDialog.SecurityAnswer -> viewModel.submitSecurityAnswer(input)
                                AccountDialog.ResendActivation -> Unit
                            }
                            onDismiss()
                        },
                    ) { Text(stringResource(R.string.ok)) }
                },
                dismissButton = {
                    TextButton(onClick = {
                        if (step == AccountDialog.SecurityAnswer) viewModel.dismissSecurityQuestionPrompt()
                        onDismiss()
                    }) { Text(stringResource(R.string.cancel)) }
                },
            )
        }
    }
}
