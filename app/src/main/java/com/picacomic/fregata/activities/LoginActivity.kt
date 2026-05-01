package com.picacomic.fregata.activities

import android.app.AlertDialog
import android.app.DatePickerDialog
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatDelegate
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

class LoginActivity : BaseActivity() {
    private val viewModel: LoginViewModel by viewModels()
    private val registerViewModel: RegisterViewModel by viewModels()

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()
        viewModel.initialize()

        setContent {
            var showingRegister by rememberSaveable { mutableStateOf(false) }

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
                    onBirthdayClick = ::showBirthdayPicker,
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
                    onForgotPassword = ::showForgotPasswordDialog,
                    onResendActivation = ::showResendActivationDialog,
                )
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
                    showAnswerDialog()
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
                                        AlertDialog.Builder(this@LoginActivity)
                                            .setTitle(networkErrorObject.error)
                                            .setMessage(
                                                networkErrorObject.message + "\n" + networkErrorObject.detail,
                                            )
                                            .setPositiveButton(R.string.ok) { dialog, _ -> dialog.dismiss() }
                                            .show()
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

    private fun showBirthdayPicker() {
        DatePickerDialog(
            this,
            { _, year, month, dayOfMonth ->
                registerViewModel.setBirthday(year, month, dayOfMonth)
            },
            registerViewModel.selectedYear,
            registerViewModel.selectedMonth,
            registerViewModel.selectedDay,
        ).show()
    }

    private fun showForgotPasswordDialog() {
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_forgot_password_content_view,
            window.decorView as ViewGroup?,
            false,
        )
        val forgotPasswordEditText: EditText =
            viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email)
        forgotPasswordEditText.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {}
            override fun afterTextChanged(editable: Editable) {
                val errorRes = viewModel.validatePicaId(editable.toString())
                forgotPasswordEditText.error = errorRes?.let(::getString)
            }
        })
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle)
            .setTitle(R.string.login_forget_password)
            .setView(viewInflate)
            .setCancelable(false)
            .setPositiveButton(R.string.ok) { _, _ ->
                val picaId = forgotPasswordEditText.text.toString()
                if (viewModel.validatePicaId(picaId) == null) {
                    viewModel.requestForgotPassword(picaId)
                } else {
                    Toast.makeText(this, R.string.alert_pica_id_wrong, Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton(R.string.cancel) { dialog, _ -> dialog.dismiss() }
            .show()
    }

    private fun showAnswerDialog() {
        val prompt = viewModel.securityQuestionPrompt ?: return
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_forgot_password_content_view,
            window.decorView as ViewGroup?,
            false,
        )
        val titleView: TextView = viewInflate.findViewById(R.id.textView_dialog_forgot_password_title)
        val answerEdit: EditText = viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email)
        titleView.text = prompt.questionText
        answerEdit.hint = "Answer ${prompt.questionNumber}"
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle)
            .setTitle(R.string.login_forget_password)
            .setView(viewInflate)
            .setCancelable(false)
            .setPositiveButton(R.string.ok) { _, _ ->
                if (answerEdit.text.isNotEmpty()) {
                    viewModel.submitSecurityAnswer(answerEdit.text.toString())
                }
            }
            .setNegativeButton(R.string.cancel) { dialog, _ ->
                viewModel.dismissSecurityQuestionPrompt()
                dialog.dismiss()
            }
            .show()
    }

    private fun showResendActivationDialog() {
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_forgot_password_content_view,
            window.decorView as ViewGroup?,
            false,
        )
        val resendEdit: EditText = viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email)
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle)
            .setTitle(R.string.login_resend_activation)
            .setView(viewInflate)
            .setCancelable(false)
            .setPositiveButton(R.string.ok) { _, _ ->
                if (viewModel.validateEmail(resendEdit.text.toString()) != null) {
                    Toast.makeText(this, R.string.alert_empty_email, Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton(R.string.cancel) { dialog, _ -> dialog.dismiss() }
            .show()
    }
}
