package com.picacomic.fregata.compose.components

import androidx.compose.ui.semantics.Role
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.draw.clip
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.selection.toggleable
import androidx.compose.animation.animateContentSize
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.widthIn
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.getValue
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.PicaExpressiveMotion
import com.picacomic.fregata.compose.PicaExpressiveType

@Composable
fun PicaValueListItem(
    label: String,
    value: String,
    onClick: () -> Unit,
    segmentShape: Shape = RoundedCornerShape(20.dp),
) {
    Surface(
        onClick = onClick,
        modifier = Modifier.fillMaxWidth(),
        shape = segmentShape,
        color = MaterialTheme.colorScheme.surfaceContainer,
    ) {
        ListItem(
            headlineContent = { Text(label, style = MaterialTheme.typography.bodyLarge) },
            trailingContent = {
                Text(
                    text = value,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.widthIn(max = 156.dp),
                )
            },
            colors = ListItemDefaults.colors(containerColor = Color.Transparent),
        )
    }
}

@Composable
fun PicaSwitchListItem(
    label: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
    showDivider: Boolean = false,
    segmentShape: Shape = RoundedCornerShape(20.dp),
) {
    ListItem(
        modifier = modifier
            .clip(segmentShape)
            .toggleable(value = checked, role = Role.Switch, onValueChange = onCheckedChange),
        headlineContent = { Text(label, style = MaterialTheme.typography.bodyLarge) },
        trailingContent = { Switch(checked = checked, onCheckedChange = null) },
        colors = ListItemDefaults.colors(containerColor = MaterialTheme.colorScheme.surfaceContainer),
    )
    if (showDivider) HorizontalDivider()
}

// ─── 单选行（用于 Dialog 内部）──────────────────────────────────────────────

/**
 * 单选列表行，尾部使用官方 RadioButton。
 * 适合在 [PicaSingleChoiceDialog] 内部使用。
 */
@Composable
fun PicaRadioListItem(
    label: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    showDivider: Boolean = false,
) {
    val interactionSource = remember { MutableInteractionSource() }
    val pressed by interactionSource.collectIsPressedAsState()
    val containerColor by animateColorAsState(
        targetValue = when {
            selected -> MaterialTheme.colorScheme.surfaceContainerHigh
            pressed -> MaterialTheme.colorScheme.surfaceContainer
            else -> Color.Transparent
        },
        animationSpec = PicaExpressiveMotion.colorStateSpec(),
        label = "picaRadioListItemContainer"
    )
    val contentColor by animateColorAsState(
        targetValue = if (selected) {
            MaterialTheme.colorScheme.onSurface
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        },
        animationSpec = PicaExpressiveMotion.colorStateSpec(),
        label = "picaRadioListItemContent"
    )

    Surface(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .animateContentSize(animationSpec = PicaExpressiveMotion.contentResizeSpec()),
        shape = MaterialTheme.shapes.medium,
        color = containerColor,
        tonalElevation = if ((selected || pressed)) 2.dp else 0.dp,
        interactionSource = interactionSource,
    ) {
        ListItem(
            headlineContent = {
                Text(
                    text = label,
                    style = if (selected) PicaExpressiveType.ListItemEmphasized else PicaExpressiveType.ListItem,
                    color = contentColor,
                )
            },
            trailingContent = {
                RadioButton(
                    selected = selected,
                    onClick = onClick,
                )
            },
            colors = ListItemDefaults.colors(containerColor = Color.Transparent),
        )
    }
    if (showDivider) HorizontalDivider()
}

// ─── Preview ────────────────────────────────────────────────────────────────

@Preview(showBackground = true)
@Composable
private fun PicaValueListItemPreview() {
    PicaComposeTheme {
        Column {
            PicaValueListItem(label = "屏幕方向", value = "跟随系统", onClick = {})
            PicaValueListItem(label = "图片质量", value = "高质量", onClick = {})
            PicaValueListItem(label = "主题风格", value = "粉红白", onClick = {})
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun PicaSwitchListItemPreview() {
    PicaComposeTheme {
        Column {
            PicaSwitchListItem(label = "夜间阅读模式", checked = true, onCheckedChange = {})
            PicaSwitchListItem(label = "音量键翻页", checked = false, onCheckedChange = {}, showDivider = false)
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun PicaRadioListItemPreview() {
    PicaComposeTheme {
        Column {
            PicaRadioListItem(label = "跟随系统", selected = false, onClick = {})
            PicaRadioListItem(label = "竖屏", selected = true, onClick = {})
            PicaRadioListItem(label = "横屏", selected = false, onClick = {})
        }
    }
}
