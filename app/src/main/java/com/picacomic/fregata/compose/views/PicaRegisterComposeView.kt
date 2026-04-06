package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaRegisterComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private var usernameState by mutableStateOf("")
    private var emailState by mutableStateOf("")
    private var passwordState by mutableStateOf("")
    private var passwordConfirmState by mutableStateOf("")
    private var question1State by mutableStateOf("")
    private var answer1State by mutableStateOf("")
    private var question2State by mutableStateOf("")
    private var answer2State by mutableStateOf("")
    private var question3State by mutableStateOf("")
    private var answer3State by mutableStateOf("")
    private var birthdayTextState by mutableStateOf("")
    private var gendersState by mutableStateOf(listOf<String>())
    private var selectedGenderIndexState by mutableIntStateOf(0)

    private var backAction: Runnable? by mutableStateOf(null)
    private var birthdayAction: Runnable? by mutableStateOf(null)
    private var submitAction: Runnable? by mutableStateOf(null)

    fun setUsername(value: String) { usernameState = value }
    fun setEmail(value: String) { emailState = value }
    fun setPassword(value: String) { passwordState = value }
    fun setPasswordConfirm(value: String) { passwordConfirmState = value }
    fun setQuestion1(value: String) { question1State = value }
    fun setAnswer1(value: String) { answer1State = value }
    fun setQuestion2(value: String) { question2State = value }
    fun setAnswer2(value: String) { answer2State = value }
    fun setQuestion3(value: String) { question3State = value }
    fun setAnswer3(value: String) { answer3State = value }
    fun setBirthdayText(value: String) { birthdayTextState = value }
    fun setGenders(values: Array<String>) { gendersState = values.toList() }
    fun setSelectedGenderIndex(value: Int) { selectedGenderIndexState = value }

    fun getUsernameValue(): String = usernameState
    fun getEmailValue(): String = emailState
    fun getPasswordValue(): String = passwordState
    fun getPasswordConfirmValue(): String = passwordConfirmState
    fun getQuestion1Value(): String = question1State
    fun getAnswer1Value(): String = answer1State
    fun getQuestion2Value(): String = question2State
    fun getAnswer2Value(): String = answer2State
    fun getQuestion3Value(): String = question3State
    fun getAnswer3Value(): String = answer3State
    fun getSelectedGenderIndex(): Int = selectedGenderIndexState

    fun setOnBackAction(value: Runnable?) { backAction = value }
    fun setOnBirthdayAction(value: Runnable?) { birthdayAction = value }
    fun setOnSubmitAction(value: Runnable?) { submitAction = value }

    @Composable
    override fun Content() {
        PicaComposeTheme {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.background)
                    .padding(16.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Start
                ) {
                    OutlinedButton(onClick = { backAction?.run() }) {
                        Text(text = context.getString(R.string.backbutton))
                    }
                }
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f)
                        .padding(top = 12.dp)
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .verticalScroll(rememberScrollState())
                            .padding(20.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        RegisterField(usernameState, { usernameState = it }, context.getString(R.string.register_username), KeyboardType.Text, ImeAction.Next)
                        RegisterField(emailState, { emailState = it }, context.getString(R.string.register_pica_id), KeyboardType.Email, ImeAction.Next)
                        RegisterField(passwordState, { passwordState = it }, context.getString(R.string.register_password), KeyboardType.Password, ImeAction.Next, true)
                        RegisterField(passwordConfirmState, { passwordConfirmState = it }, context.getString(R.string.register_password_confirm), KeyboardType.Password, ImeAction.Next, true)
                        RegisterField(question1State, { question1State = it }, context.getString(R.string.register_question_1), KeyboardType.Text, ImeAction.Next)
                        RegisterField(answer1State, { answer1State = it }, context.getString(R.string.register_answer_1), KeyboardType.Text, ImeAction.Next)
                        RegisterField(question2State, { question2State = it }, context.getString(R.string.register_question_2), KeyboardType.Text, ImeAction.Next)
                        RegisterField(answer2State, { answer2State = it }, context.getString(R.string.register_answer_2), KeyboardType.Text, ImeAction.Next)
                        RegisterField(question3State, { question3State = it }, context.getString(R.string.register_question_3), KeyboardType.Text, ImeAction.Next)
                        RegisterField(answer3State, { answer3State = it }, context.getString(R.string.register_answer_3), KeyboardType.Text, ImeAction.Done)
                        OutlinedButton(
                            onClick = { birthdayAction?.run() },
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(
                                text = if (birthdayTextState.isBlank()) {
                                    context.getString(R.string.register_date_of_birth)
                                } else {
                                    birthdayTextState
                                }
                            )
                        }
                        Text(
                            text = context.getString(R.string.register_gender),
                            style = MaterialTheme.typography.titleSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            gendersState.forEachIndexed { index, label ->
                                Button(
                                    onClick = { selectedGenderIndexState = index },
                                    modifier = Modifier.weight(1f),
                                    enabled = selectedGenderIndexState != index
                                ) {
                                    Text(text = label)
                                }
                            }
                        }
                    }
                }
                Button(
                    onClick = { submitAction?.run() },
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 12.dp)
                ) {
                    Text(text = context.getString(R.string.register_register_button))
                }
            }
        }
    }

    @Composable
    private fun RegisterField(
        value: String,
        onValueChange: (String) -> Unit,
        label: String,
        keyboardType: KeyboardType,
        imeAction: ImeAction,
        isPassword: Boolean = false
    ) {
        OutlinedTextField(
            value = value,
            onValueChange = onValueChange,
            label = { Text(text = label) },
            singleLine = true,
            visualTransformation = if (isPassword) PasswordVisualTransformation() else androidx.compose.ui.text.input.VisualTransformation.None,
            keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(
                keyboardType = keyboardType,
                imeAction = imeAction
            ),
            modifier = Modifier.fillMaxWidth()
        )
    }
}
