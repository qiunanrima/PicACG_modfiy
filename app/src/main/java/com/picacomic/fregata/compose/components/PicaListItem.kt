package com.picacomic.fregata.compose.components

import androidx.compose.animation.animateContentSize
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowRight
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.PicaExpressiveMotion
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.isPicaExpressiveTheme

// ─── 可点击条目（label + value + 箭头）──────────────────────────────────────

/**
 * 标准可点击列表行，尾部显示 value 文本 + 箭头图标。
 * 用于 Settings 中"选择型"选项（方向、质量、主题等）。
 */
@Composable
fun PicaValueListItem(
    label: String,
    value: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    showDivider: Boolean = true,
) {
    val expressive = isPicaExpressiveTheme()
    val interactionSource = remember { MutableInteractionSource() }
    val pressed by interactionSource.collectIsPressedAsState()
    val containerColor by animateColorAsState(
        targetValue = if (pressed) {
            MaterialTheme.colorScheme.surfaceContainer
        } else {
            Color.Transparent
        },
        animationSpec = PicaExpressiveMotion.fastEffectsSpec(),
        label = "picaValueListItemContainer"
    )
    val valueColor by animateColorAsState(
        targetValue = if (pressed) {
            MaterialTheme.colorScheme.onSurface
        } else {
            MaterialTheme.colorScheme.onSurface
        },
        animationSpec = PicaExpressiveMotion.fastEffectsSpec(),
        label = "picaValueListItemValue"
    )
    val chevronOffset by animateDpAsState(
        targetValue = if (expressive && pressed) 4.dp else 0.dp,
        animationSpec = PicaExpressiveMotion.defaultSpatialSpec(),
        label = "picaValueListItemChevron"
    )

    Surface(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .animateContentSize(animationSpec = PicaExpressiveMotion.defaultSpatialSpec()),
        shape = if (expressive) MaterialTheme.shapes.large else MaterialTheme.shapes.medium,
        color = containerColor,
        tonalElevation = if (expressive && pressed) 2.dp else 0.dp,
        interactionSource = interactionSource,
    ) {
        ListItem(
            headlineContent = {
                Text(
                    text = label,
                    style = PicaExpressiveType.ListItemEmphasized,
                )
            },
            trailingContent = {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text(
                        text = value,
                        style = MaterialTheme.typography.bodyMedium,
                        color = valueColor,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.widthIn(max = 156.dp),
                    )
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.KeyboardArrowRight,
                        contentDescription = null,
                        tint = valueColor,
                        modifier = Modifier
                            .padding(start = 4.dp)
                            .offset(x = chevronOffset)
                    )
                }
            },
            colors = ListItemDefaults.colors(containerColor = Color.Transparent),
        )
    }
    if (showDivider) HorizontalDivider()
}

// ─── Switch 行 ──────────────────────────────────────────────────────────────

/**
 * 带 Switch 的列表行。
 */
@Composable
fun PicaSwitchListItem(
    label: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
    showDivider: Boolean = true,
) {
    val expressive = isPicaExpressiveTheme()
    val interactionSource = remember { MutableInteractionSource() }
    val pressed by interactionSource.collectIsPressedAsState()
    val containerColor by animateColorAsState(
        targetValue = when {
            checked -> MaterialTheme.colorScheme.surfaceContainerHigh
            pressed -> MaterialTheme.colorScheme.surfaceContainer
            else -> Color.Transparent
        },
        animationSpec = PicaExpressiveMotion.fastEffectsSpec(),
        label = "picaSwitchListItemContainer"
    )
    val labelColor by animateColorAsState(
        targetValue = if (checked) {
            MaterialTheme.colorScheme.onSurface
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        },
        animationSpec = PicaExpressiveMotion.fastEffectsSpec(),
        label = "picaSwitchListItemLabel"
    )

    Surface(
        onClick = { onCheckedChange(!checked) },
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .animateContentSize(animationSpec = PicaExpressiveMotion.defaultSpatialSpec()),
        shape = if (expressive) MaterialTheme.shapes.large else MaterialTheme.shapes.medium,
        color = containerColor,
        tonalElevation = if (expressive && (checked || pressed)) 2.dp else 0.dp,
        interactionSource = interactionSource,
    ) {
        ListItem(
            headlineContent = {
                Text(
                    text = label,
                    style = if (checked) PicaExpressiveType.ListItemEmphasized else PicaExpressiveType.ListItem,
                    color = labelColor,
                )
            },
            trailingContent = {
                Switch(
                    checked = checked,
                    onCheckedChange = onCheckedChange,
                )
            },
            colors = ListItemDefaults.colors(containerColor = Color.Transparent),
        )
    }
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
    val expressive = isPicaExpressiveTheme()
    val interactionSource = remember { MutableInteractionSource() }
    val pressed by interactionSource.collectIsPressedAsState()
    val containerColor by animateColorAsState(
        targetValue = when {
            selected -> MaterialTheme.colorScheme.surfaceContainerHigh
            pressed -> MaterialTheme.colorScheme.surfaceContainer
            else -> Color.Transparent
        },
        animationSpec = PicaExpressiveMotion.fastEffectsSpec(),
        label = "picaRadioListItemContainer"
    )
    val contentColor by animateColorAsState(
        targetValue = if (selected) {
            MaterialTheme.colorScheme.onSurface
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        },
        animationSpec = PicaExpressiveMotion.fastEffectsSpec(),
        label = "picaRadioListItemContent"
    )

    Surface(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .animateContentSize(animationSpec = PicaExpressiveMotion.defaultSpatialSpec()),
        shape = if (expressive) MaterialTheme.shapes.medium else MaterialTheme.shapes.small,
        color = containerColor,
        tonalElevation = if (expressive && (selected || pressed)) 2.dp else 0.dp,
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
            PicaValueListItem(label = "主题风格", value = "粉红白", onClick = {}, showDivider = false)
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
