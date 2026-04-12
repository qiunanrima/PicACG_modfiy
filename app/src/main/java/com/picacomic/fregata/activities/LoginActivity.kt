package com.picacomic.fregata.activities

import android.app.AlertDialog
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
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.b.c
import com.picacomic.fregata.compose.screens.LoginScreen
import com.picacomic.fregata.compose.viewmodels.LoginViewModel
import com.picacomic.fregata.utils.views.AlertDialogCenter

class LoginActivity : BaseActivity() {
    private val viewModel: LoginViewModel by viewModels()

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()
        viewModel.initialize()

        setContent {
            Box(modifier = Modifier.fillMaxSize()) {
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
                    onRegister = ::showRegisterScreen,
                    onForgotPassword = ::showForgotPasswordDialog,
                    onResendActivation = ::showResendActivationDialog,
                )

                AndroidView(
                    modifier = Modifier.fillMaxSize(),
                    factory = { context ->
                        androidx.fragment.app.FragmentContainerView(context).apply {
                            id = R.id.container
                        }
                    },
                )
            }

            LaunchedEffect(viewModel.navigateToMainEvent) {
                if (viewModel.navigateToMainEvent > 0) {
                    goToMain()
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
        }
    }

    private fun goToMain() {
        startActivity(Intent(this, MainActivity::class.java as Class<*>))
        finish()
    }

    private fun showRegisterScreen() {
        if (findViewById<android.view.View>(R.id.container) == null) return

        supportFragmentManager.beginTransaction()
            .setCustomAnimations(
                android.R.anim.fade_in,
                android.R.anim.fade_out,
                android.R.anim.fade_in,
                android.R.anim.fade_out,
            )
            .add(
                R.id.container,
                com.picacomic.fregata.fragments.RegisterFragment(),
                com.picacomic.fregata.fragments.RegisterFragment.TAG,
            )
            .addToBackStack(com.picacomic.fregata.fragments.RegisterFragment.TAG)
            .commit()
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
