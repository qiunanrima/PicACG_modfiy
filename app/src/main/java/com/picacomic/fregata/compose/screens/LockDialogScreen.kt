package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

@Composable
fun LockDialogContent(
    pin: String,
    onUnlock: () -> Unit,
) {
    PicaComposeTheme {
        val focusRequesters = remember { List(4) { FocusRequester() } }
        val digits = remember { mutableStateListOf("", "", "", "") }
        var titleClickCount by remember { mutableIntStateOf(0) }
        var titleText by remember { mutableStateOf<String?>(null) }

        LaunchedEffect(Unit) {
            focusRequesters.first().requestFocus()
        }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black),
            contentAlignment = Alignment.Center,
        ) {
            androidx.compose.foundation.layout.Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
            ) {
                Text(
                    text = titleText ?: stringResource(R.string.lock_dialog_title),
                    color = MaterialTheme.colorScheme.primary,
                    fontSize = 24.sp,
                    fontWeight = FontWeight.Bold,
                    textAlign = TextAlign.Center,
                    modifier = Modifier.clickable {
                        if (titleClickCount > 30) {
                            onUnlock()
                            return@clickable
                        }
                        titleClickCount++
                        if (30 - titleClickCount < 4) {
                            titleText = ((30 - titleClickCount) + 2).toString()
                        }
                    },
                )

                Row(
                    horizontalArrangement = Arrangement.spacedBy(16.dp),
                    modifier = Modifier
                        .align(Alignment.CenterHorizontally)
                        .size(width = 240.dp, height = 88.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    repeat(4) { index ->
                        LockPinDigitField(
                            value = digits[index],
                            onValueChange = { value ->
                                val next = value.filter { it.isDigit() }.takeLast(1)
                                digits[index] = next
                                if (next.length == 1) {
                                    if (index < 3) {
                                        focusRequesters[index + 1].requestFocus()
                                    } else {
                                        val input = digits.joinToString("")
                                        if (pin.equals(input, ignoreCase = true)) {
                                            onUnlock()
                                        } else {
                                            repeat(4) { digits[it] = "" }
                                            focusRequesters.first().requestFocus()
                                        }
                                    }
                                }
                            },
                            modifier = Modifier
                                .size(48.dp)
                                .focusRequester(focusRequesters[index]),
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun LockPinDigitField(
    value: String,
    onValueChange: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    OutlinedTextField(
        value = value,
        onValueChange = onValueChange,
        singleLine = true,
        textStyle = MaterialTheme.typography.titleLarge.copy(
            textAlign = TextAlign.Center,
            fontWeight = FontWeight.Bold,
        ),
        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Phone),
        colors = OutlinedTextFieldDefaults.colors(
            focusedTextColor = MaterialTheme.colorScheme.primary,
            unfocusedTextColor = MaterialTheme.colorScheme.primary,
            focusedBorderColor = MaterialTheme.colorScheme.primary,
            unfocusedBorderColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.72f),
            focusedContainerColor = Color.Transparent,
            unfocusedContainerColor = Color.Transparent,
            cursorColor = MaterialTheme.colorScheme.primary,
        ),
        modifier = modifier,
    )
}
