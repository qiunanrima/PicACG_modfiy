package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.Lock
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
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
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import kotlinx.coroutines.delay

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
        var hasError by remember { mutableStateOf(false) }

        LaunchedEffect(Unit) {
            focusRequesters.first().requestFocus()
        }

        LaunchedEffect(hasError) {
            if (hasError) {
                delay(800L)
                hasError = false
            }
        }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(Color.Black),
            contentAlignment = Alignment.Center,
        ) {
            Surface(
                modifier = Modifier
                    .padding(horizontal = 28.dp)
                    .widthIn(max = 360.dp)
                    .fillMaxWidth(),
                shape = RoundedCornerShape(28.dp),
                color = MaterialTheme.colorScheme.surface.copy(alpha = 0.96f),
                tonalElevation = 6.dp,
                shadowElevation = 18.dp,
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 24.dp, vertical = 30.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center,
                ) {
                    Surface(
                        modifier = Modifier.size(54.dp),
                        shape = CircleShape,
                        color = MaterialTheme.colorScheme.primaryContainer,
                        contentColor = MaterialTheme.colorScheme.onPrimaryContainer,
                    ) {
                        Box(contentAlignment = Alignment.Center) {
                            Icon(
                                imageVector = Icons.Outlined.Lock,
                                contentDescription = null,
                                modifier = Modifier.size(28.dp),
                            )
                        }
                    }

                    Text(
                        text = titleText ?: stringResource(R.string.lock_dialog_title),
                        color = if (hasError) {
                            MaterialTheme.colorScheme.error
                        } else {
                            MaterialTheme.colorScheme.onSurface
                        },
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        textAlign = TextAlign.Center,
                        modifier = Modifier
                            .padding(top = 18.dp)
                            .clickable {
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
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                        modifier = Modifier
                            .padding(top = 24.dp)
                            .fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        repeat(4) { index ->
                            LockPinDigitField(
                                value = digits[index],
                                hasError = hasError,
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
                                                hasError = true
                                                focusRequesters.first().requestFocus()
                                            }
                                        }
                                    }
                                },
                                modifier = Modifier
                                    .weight(1f)
                                    .height(58.dp)
                                    .focusRequester(focusRequesters[index]),
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun LockPinDigitField(
    value: String,
    hasError: Boolean,
    onValueChange: (String) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    val borderColor = when {
        hasError -> colorScheme.error
        value.isNotEmpty() -> colorScheme.primary
        else -> colorScheme.outlineVariant
    }
    val containerColor = when {
        hasError -> colorScheme.errorContainer.copy(alpha = 0.30f)
        value.isNotEmpty() -> colorScheme.primaryContainer.copy(alpha = 0.46f)
        else -> colorScheme.surfaceVariant.copy(alpha = 0.58f)
    }

    BasicTextField(
        value = value,
        onValueChange = onValueChange,
        singleLine = true,
        textStyle = MaterialTheme.typography.titleLarge.copy(
            textAlign = TextAlign.Center,
            fontWeight = FontWeight.Bold,
            color = if (hasError) colorScheme.error else colorScheme.onSurface,
        ),
        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Phone),
        cursorBrush = SolidColor(colorScheme.primary),
        modifier = modifier
            .clip(RoundedCornerShape(16.dp))
            .background(containerColor),
        decorationBox = { innerTextField ->
            Surface(
                modifier = Modifier.fillMaxSize(),
                shape = RoundedCornerShape(16.dp),
                color = Color.Transparent,
                border = BorderStroke(1.5.dp, borderColor),
            ) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center,
                ) {
                    innerTextField()
                }
            }
        },
    )
}
