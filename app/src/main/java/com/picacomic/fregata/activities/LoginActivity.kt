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
import androidx.appcompat.app.AppCompatActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.b.c
import com.picacomic.fregata.b.d
import com.picacomic.fregata.compose.screens.LoginScreen
import com.picacomic.fregata.objects.NetworkErrorObject
import com.picacomic.fregata.objects.requests.ForgotPasswordBody
import com.picacomic.fregata.objects.requests.ResetPasswordBody
import com.picacomic.fregata.objects.requests.SignInBody
import com.picacomic.fregata.objects.responses.ForgotPasswordResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.PasswordResponse
import com.picacomic.fregata.objects.responses.SignInResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import java.util.Random

/* JADX INFO: loaded from: classes.dex */
class LoginActivity : BaseActivity() {

    // Compose state – mutating these triggers recomposition
    private var showResendActivationState by mutableStateOf(false)
    private var initialEmail by mutableStateOf("")
    private var initialPassword by mutableStateOf("")

    // In-flight network calls
    private var pU: Call<GeneralResponse<SignInResponse>>? = null
    private var pV: Call<GeneralResponse<ForgotPasswordResponse>>? = null
    private var pW: Call<GeneralResponse<PasswordResponse>>? = null

    // Forgot-password dialog EditText (held as a field so callbacks can read it)
    private var forgotPasswordEditText: EditText? = null
    private var forgotPasswordValid = false

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()

        // Pre-fill from saved credentials
        initialEmail = e.u(this) ?: ""
        initialPassword = e.v(this) ?: ""

        // If already logged in, skip straight to MainActivity
        if (!e.z(this).isNullOrEmpty()) {
            goToMain()
            return
        }

        setContent {
            Box(modifier = androidx.compose.ui.Modifier.fillMaxSize()) {
                LoginScreen(
                    initialEmail = initialEmail,
                    initialPassword = initialPassword,
                    showResendActivation = showResendActivationState,
                    onLogin = { email, password ->
                        if (password.length < 8) {
                            AlertDialogCenter.passwordLength(this@LoginActivity)
                        } else {
                            doSignIn(email, password)
                        }
                    },
                    onRegister = {
                        showRegisterScreen()
                    },
                    onForgotPassword = { showForgotPasswordDialog() },
                    onResendActivation = { showResendActivationDialog() }
                )

                // Overlay for legacy fragments
                AndroidView(
                    modifier = androidx.compose.ui.Modifier.fillMaxSize(),
                    factory = { context ->
                        androidx.fragment.app.FragmentContainerView(context).apply {
                            id = R.id.container
                        }
                    }
                )
            }
        }
    }

    // ------------------------------------------------------------------ Navigation

    private fun goToMain() {
        startActivity(Intent(this, MainActivity::class.java as Class<*>))
        finish()
    }

    private fun showRegisterScreen() {
        if (findViewById<android.view.View>(R.id.container) == null) return

        supportFragmentManager.beginTransaction()
            .setCustomAnimations(android.R.anim.fade_in, android.R.anim.fade_out, android.R.anim.fade_in, android.R.anim.fade_out)
            .add(R.id.container, com.picacomic.fregata.fragments.RegisterFragment(), com.picacomic.fregata.fragments.RegisterFragment.TAG)
            .addToBackStack(com.picacomic.fregata.fragments.RegisterFragment.TAG)
            .commit()
    }

    // ------------------------------------------------------------------ Sign-in

    private fun doSignIn(email: String, password: String) {
        pU = d(this).dO().a(SignInBody(email, password))
        pU!!.enqueue(object : Callback<GeneralResponse<SignInResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<SignInResponse>>,
                response: Response<GeneralResponse<SignInResponse>>
            ) {
                if (response.code() == 200) {
                    e.e(this@LoginActivity, email)
                    e.f(this@LoginActivity, password)
                    response.body()?.data?.getToken()?.let {
                        e.h(this@LoginActivity, it)
                    }
                    goToMain()
                } else {
                    try {
                        c(
                            this@LoginActivity,
                            response.code(),
                            response.errorBody()!!.string(),
                            object : com.picacomic.fregata.a_pkg.g {
                                override fun a(i: Int, networkErrorObject: NetworkErrorObject) {
                                    AlertDialog.Builder(this@LoginActivity)
                                        .setTitle(networkErrorObject.getError())
                                        .setMessage(
                                            networkErrorObject.getMessage() + "\n" + networkErrorObject.getDetail()
                                        )
                                        .setPositiveButton(R.string.ok) { d, _ -> d.dismiss() }
                                        .show()
                                }
                            }).dN()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                }
            }

            override fun onFailure(call: Call<GeneralResponse<SignInResponse>>, th: Throwable) {
                th.printStackTrace()
                c(this@LoginActivity).dN()
            }
        })
    }

    // ------------------------------------------------------------------ Forgot password

    private fun showForgotPasswordDialog() {
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_forgot_password_content_view,
            window.decorView as ViewGroup?,
            false
        )
        forgotPasswordEditText = viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email)
        forgotPasswordEditText!!.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {}
            override fun afterTextChanged(editable: Editable) {
                when {
                    editable.length < 2 -> {
                        forgotPasswordEditText!!.error = getString(R.string.pica_id_error_message_1)
                        forgotPasswordValid = false
                    }
                    editable.toString().matches(Regex("^[0-9a-z_](\\.?[0-9a-z_]){1,29}$")) -> {
                        forgotPasswordEditText!!.error = null
                        forgotPasswordValid = true
                    }
                    else -> {
                        forgotPasswordEditText!!.error = getString(R.string.pica_id_error_message_2)
                        forgotPasswordValid = false
                    }
                }
            }
        })
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle)
            .setTitle(R.string.login_forget_password)
            .setView(viewInflate)
            .setCancelable(false)
            .setPositiveButton(R.string.ok) { _, _ ->
                if (forgotPasswordValid) {
                    doForgotPassword(forgotPasswordEditText!!.text.toString())
                } else {
                    Toast.makeText(this, R.string.alert_pica_id_wrong, 0).show()
                }
            }
            .setNegativeButton(R.string.cancel) { d, _ -> d.dismiss() }
            .show()
    }

    private fun doForgotPassword(picaId: String) {
        pV = d(this).dO().a(ForgotPasswordBody(picaId))
        pV!!.enqueue(object : Callback<GeneralResponse<ForgotPasswordResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<ForgotPasswordResponse>>,
                response: Response<GeneralResponse<ForgotPasswordResponse>>
            ) {
                if (response.code() == 200) {
                    val rng = Random(System.currentTimeMillis())
                    val pick = rng.nextInt(3)
                    val data = response.body()?.data
                    val (questionNum, question) = when (pick) {
                        1 -> 2 to (data?.getQuestion2() ?: "")
                        2 -> 3 to (data?.getQuestion3() ?: "")
                        else -> 1 to (data?.getQuestion1() ?: "")
                    }
                    showAnswerDialog(picaId, questionNum, question)
                } else {
                    try {
                        c(this@LoginActivity, response.code(), response.errorBody()!!.string()).dN()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                }
            }

            override fun onFailure(call: Call<GeneralResponse<ForgotPasswordResponse>>, th: Throwable) {
                th.printStackTrace()
                c(this@LoginActivity).dN()
            }
        })
    }

    private fun showAnswerDialog(picaId: String, questionNum: Int, questionText: String) {
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_forgot_password_content_view,
            window.decorView as ViewGroup?,
            false
        )
        val titleView: TextView = viewInflate.findViewById(R.id.textView_dialog_forgot_password_title)
        val answerEdit: EditText = viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email)
        titleView.text = questionText
        answerEdit.hint = "Answer $questionNum"
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle)
            .setTitle(R.string.login_forget_password)
            .setView(viewInflate)
            .setCancelable(false)
            .setPositiveButton(R.string.ok) { _, _ ->
                if (answerEdit.text.isNotEmpty()) {
                    doResetPassword(picaId, questionNum, answerEdit.text.toString())
                }
            }
            .setNegativeButton(R.string.cancel) { d, _ -> d.dismiss() }
            .show()
    }

    private fun doResetPassword(picaId: String, questionNum: Int, answer: String) {
        pW = d(this).dO().a(ResetPasswordBody(picaId, questionNum, answer))
        pW!!.enqueue(object : Callback<GeneralResponse<PasswordResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<PasswordResponse>>,
                response: Response<GeneralResponse<PasswordResponse>>
            ) {
                if (response.code() == 200) {
                    val newPassword = response.body()?.data?.getPassword() ?: ""
                    initialPassword = newPassword
                    try {
                        (getSystemService("clipboard") as ClipboardManager)
                            .setPrimaryClip(ClipData.newPlainText("text", newPassword))
                        Toast.makeText(this@LoginActivity, "新密碼已複製", Toast.LENGTH_SHORT).show()
                        Toast.makeText(this@LoginActivity, "登入後請到「設定」修改密碼", Toast.LENGTH_SHORT).show()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                } else {
                    try {
                        c(this@LoginActivity, response.code(), response.errorBody()!!.string()).dN()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                    }
                }
            }

            override fun onFailure(call: Call<GeneralResponse<PasswordResponse>>, th: Throwable) {
                th.printStackTrace()
                c(this@LoginActivity).dN()
            }
        })
    }

    // ------------------------------------------------------------------ Resend activation

    private fun showResendActivationDialog() {
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_forgot_password_content_view,
            window.decorView as ViewGroup?,
            false
        )
        val resendEdit: EditText = viewInflate.findViewById(R.id.editText_dialog_forgot_password_content_email)
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle)
            .setTitle(R.string.login_resend_activation)
            .setView(viewInflate)
            .setCancelable(false)
            .setPositiveButton(R.string.ok) { _, _ ->
                if (resendEdit.text.isEmpty() || !g.A(resendEdit.text.toString())) {
                    Toast.makeText(this, R.string.alert_empty_email, 0).show()
                }
            }
            .setNegativeButton(R.string.cancel) { d, _ -> d.dismiss() }
            .show()
    }

    // ------------------------------------------------------------------ Lifecycle

    override fun onDestroy() {
        pU?.cancel()
        pV?.cancel()
        pW?.cancel()
        super.onDestroy()
    }
}
