package com.picacomic.fregata.compose.components

import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.isPicaExpressiveTheme

@Composable
fun PicaPrimaryButton(
    text: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true
) {
    val expressive = isPicaExpressiveTheme()

    Button(
        onClick = onClick,
        enabled = enabled,
        shape = if (expressive) MaterialTheme.shapes.extraLarge else MaterialTheme.shapes.large,
        colors = ButtonDefaults.buttonColors(
            containerColor = MaterialTheme.colorScheme.primary,
            contentColor = MaterialTheme.colorScheme.onPrimary,
        ),
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = if (expressive) 56.dp else 48.dp)
    ) {
        Text(
            text = text,
            style = if (expressive) PicaExpressiveType.LabelEmphasized else MaterialTheme.typography.labelLarge,
        )
    }
}
