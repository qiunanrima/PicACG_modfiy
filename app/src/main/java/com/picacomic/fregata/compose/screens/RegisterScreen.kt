package com.picacomic.fregata.compose.screens

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CalendarMonth
import androidx.compose.material.icons.filled.HowToReg
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.QuestionAnswer
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaCardSection
import com.picacomic.fregata.compose.components.PicaPrimaryButton
import com.picacomic.fregata.compose.components.PicaTextField

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RegisterScreen(
    username: String,
    email: String,
    password: String,
    passwordConfirm: String,
    question1: String,
    answer1: String,
    question2: String,
    answer2: String,
    question3: String,
    answer3: String,
    birthdayText: String?,
    selectedGenderIndex: Int,
    isLoading: Boolean,
    loadingText: String,
    onUsernameChange: (String) -> Unit,
    onEmailChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onPasswordConfirmChange: (String) -> Unit,
    onQuestion1Change: (String) -> Unit,
    onAnswer1Change: (String) -> Unit,
    onQuestion2Change: (String) -> Unit,
    onAnswer2Change: (String) -> Unit,
    onQuestion3Change: (String) -> Unit,
    onAnswer3Change: (String) -> Unit,
    onGenderChange: (Int) -> Unit,
    onBirthdayClick: () -> Unit,
    onSubmit: () -> Unit,
    onBack: () -> Unit,
) {
    BackHandler(onBack = onBack)

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier
                .fillMaxSize()
                .nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                TopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.login_register),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                            style = MaterialTheme.typography.titleLarge,
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = stringResource(R.string.back),
                            )
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        titleContentColor = MaterialTheme.colorScheme.onSurface,
                        navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                    ),
                    scrollBehavior = scrollBehavior,
                )
            },
            bottomBar = {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    shape = MaterialTheme.shapes.extraSmall,
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                ) {
                    PicaPrimaryButton(
                        text = if (isLoading) loadingText else stringResource(R.string.register_register_button),
                        onClick = onSubmit,
                        enabled = !isLoading,
                        modifier = Modifier.padding(16.dp),
                    )
                }
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { padding ->
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(14.dp),
            ) {
                item {
                    RegisterSection(
                        title = stringResource(R.string.register_username),
                        icon = { Icon(Icons.Filled.Person, contentDescription = null) },
                    ) {
                        PicaTextField(
                            value = username,
                            onValueChange = onUsernameChange,
                            label = stringResource(R.string.register_username),
                            keyboardOptions = KeyboardOptions(
                                keyboardType = KeyboardType.Text,
                                imeAction = ImeAction.Next,
                            ),
                        )
                        PicaTextField(
                            value = email,
                            onValueChange = onEmailChange,
                            label = stringResource(R.string.register_pica_id),
                            keyboardOptions = KeyboardOptions(
                                keyboardType = KeyboardType.Email,
                                imeAction = ImeAction.Next,
                            ),
                        )
                    }
                }

                item {
                    RegisterSection(
                        title = stringResource(R.string.register_password),
                        icon = { Icon(Icons.Filled.Lock, contentDescription = null) },
                    ) {
                        PicaTextField(
                            value = password,
                            onValueChange = onPasswordChange,
                            label = stringResource(R.string.register_password),
                            visualTransformation = PasswordVisualTransformation(),
                            keyboardOptions = KeyboardOptions(
                                keyboardType = KeyboardType.Password,
                                imeAction = ImeAction.Next,
                            ),
                        )
                        PicaTextField(
                            value = passwordConfirm,
                            onValueChange = onPasswordConfirmChange,
                            label = stringResource(R.string.register_password_confirm),
                            visualTransformation = PasswordVisualTransformation(),
                            keyboardOptions = KeyboardOptions(
                                keyboardType = KeyboardType.Password,
                                imeAction = ImeAction.Next,
                            ),
                        )
                    }
                }

                item {
                    RegisterSection(
                        title = stringResource(R.string.register_date_of_birth),
                        icon = { Icon(Icons.Filled.CalendarMonth, contentDescription = null) },
                    ) {
                        OutlinedButton(
                            onClick = onBirthdayClick,
                            modifier = Modifier.fillMaxWidth(),
                        ) {
                            Text(
                                text = birthdayText ?: stringResource(R.string.register_date_of_birth),
                                maxLines = 2,
                                overflow = TextOverflow.Ellipsis,
                            )
                        }
                        GenderSelector(
                            selectedGenderIndex = selectedGenderIndex,
                            onGenderChange = onGenderChange,
                        )
                    }
                }

                item {
                    RegisterSection(
                        title = stringResource(R.string.register_question_1),
                        icon = { Icon(Icons.Filled.QuestionAnswer, contentDescription = null) },
                    ) {
                        PicaTextField(
                            value = question1,
                            onValueChange = onQuestion1Change,
                            label = stringResource(R.string.register_question_1),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = answer1,
                            onValueChange = onAnswer1Change,
                            label = stringResource(R.string.register_answer_1),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = question2,
                            onValueChange = onQuestion2Change,
                            label = stringResource(R.string.register_question_2),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = answer2,
                            onValueChange = onAnswer2Change,
                            label = stringResource(R.string.register_answer_2),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = question3,
                            onValueChange = onQuestion3Change,
                            label = stringResource(R.string.register_question_3),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Next),
                        )
                        PicaTextField(
                            value = answer3,
                            onValueChange = onAnswer3Change,
                            label = stringResource(R.string.register_answer_3),
                            keyboardOptions = KeyboardOptions(imeAction = ImeAction.Done),
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun RegisterSection(
    title: String,
    icon: @Composable () -> Unit,
    content: @Composable () -> Unit,
) {
    PicaCardSection {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            icon()
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.onSurface,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
        Column(
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            content()
        }
    }
}

@Composable
private fun GenderSelector(
    selectedGenderIndex: Int,
    onGenderChange: (Int) -> Unit,
) {
    val genders = stringArrayResource(R.array.register_genders)
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Text(
            text = stringResource(R.string.register_gender),
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            genders.forEachIndexed { index, label ->
                if (selectedGenderIndex == index) {
                    Button(
                        onClick = { onGenderChange(index) },
                        modifier = Modifier.weight(1f),
                    ) {
                        Text(label, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    }
                } else {
                    OutlinedButton(
                        onClick = { onGenderChange(index) },
                        modifier = Modifier.weight(1f),
                    ) {
                        Text(label, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    }
                }
            }
        }
    }
}
