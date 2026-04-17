package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaLoginComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private var emailState by mutableStateOf("")
    private var passwordState by mutableStateOf("")
    private var showResendActivationState by mutableStateOf(false)

    private var emailChangedListener: OnStringChangedListener? by mutableStateOf(null)
    private var passwordChangedListener: OnStringChangedListener? by mutableStateOf(null)
    private var loginAction: Runnable? by mutableStateOf(null)
    private var registerAction: Runnable? by mutableStateOf(null)
    private var forgotPasswordAction: Runnable? by mutableStateOf(null)
    private var resendActivationAction: Runnable? by mutableStateOf(null)

    fun setEmail(value: String) {
        emailState = value
    }

    fun setPassword(value: String) {
        passwordState = value
    }

    fun getEmailValue(): String = emailState

    fun getPasswordValue(): String = passwordState

    fun setShowResendActivation(value: Boolean) {
        showResendActivationState = value
    }

    fun setOnEmailChangedListener(value: OnStringChangedListener?) {
        emailChangedListener = value
    }

    fun setOnPasswordChangedListener(value: OnStringChangedListener?) {
        passwordChangedListener = value
    }

    fun setOnLoginAction(value: Runnable?) {
        loginAction = value
    }

    fun setOnRegisterAction(value: Runnable?) {
        registerAction = value
    }

    fun setOnForgotPasswordAction(value: Runnable?) {
        forgotPasswordAction = value
    }

    fun setOnResendActivationAction(value: Runnable?) {
        resendActivationAction = value
    }

    @Preview
@Composable
    override fun Content() {
        PicaComposeTheme {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .background(MaterialTheme.colorScheme.background)
                    .padding(horizontal = 20.dp, vertical = 24.dp)
            ) {
                Spacer(modifier = Modifier.height(32.dp))
                Column(
                    modifier = Modifier.fillMaxWidth(),
                    verticalArrangement = Arrangement.spacedBy(24.dp)
                ) {
                    Image(
                        painter = painterResource(id = R.drawable.splash_title_new),
                        contentDescription = null,
                        modifier = Modifier.fillMaxWidth()
                    )
                    Card(
                        modifier = Modifier.fillMaxWidth(),
                        shape = RoundedCornerShape(28.dp)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(20.dp),
                            verticalArrangement = Arrangement.spacedBy(12.dp)
                        ) {
                            OutlinedTextField(
                                value = emailState,
                                onValueChange = {
                                    emailState = it
                                    emailChangedListener?.onChanged(it)
                                },
                                label = { Text(text = context.getString(R.string.login_email)) },
                                singleLine = true,
                                keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(
                                    keyboardType = KeyboardType.Email,
                                    imeAction = ImeAction.Next
                                ),
                                modifier = Modifier.fillMaxWidth()
                            )
                            OutlinedTextField(
                                value = passwordState,
                                onValueChange = {
                                    passwordState = it
                                    passwordChangedListener?.onChanged(it)
                                },
                                label = { Text(text = context.getString(R.string.login_password)) },
                                singleLine = true,
                                visualTransformation = PasswordVisualTransformation(),
                                keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(
                                    keyboardType = KeyboardType.Password,
                                    imeAction = ImeAction.Done
                                ),
                                modifier = Modifier.fillMaxWidth()
                            )
                            Button(
                                onClick = { loginAction?.run() },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Text(text = context.getString(R.string.login_login_button))
                            }
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween
                            ) {
                                TextButton(onClick = { registerAction?.run() }) {
                                    Text(text = context.getString(R.string.login_register))
                                }
                                if (showResendActivationState) {
                                    TextButton(onClick = { resendActivationAction?.run() }) {
                                        Text(text = context.getString(R.string.login_resend_activation))
                                    }
                                }
                                TextButton(onClick = { forgotPasswordAction?.run() }) {
                                    Text(text = context.getString(R.string.login_forget_password))
                                }
                            }
                        }
                    }
                }
                Spacer(modifier = Modifier.height(32.dp))
            }
        }
    }
}
