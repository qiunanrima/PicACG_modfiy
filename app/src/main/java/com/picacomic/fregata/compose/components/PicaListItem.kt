package com.picacomic.fregata.compose.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateContentSize
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.scaleIn
import androidx.compose.animation.scaleOut
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowRight
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
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
    val scale by animateFloatAsState(
        targetValue = if (pressed) 0.985f else 1f,
        animationSpec = PicaExpressiveMotion.Press,
        label = "picaValueListItemScale"
    )
    val containerColor by animateColorAsState(
        targetValue = if (pressed) {
            if (expressive) MaterialTheme.colorScheme.secondaryContainer else MaterialTheme.colorScheme.surfaceVariant
        } else {
            Color.Transparent
        },
        animationSpec = tween(durationMillis = 180, easing = FastOutSlowInEasing),
        label = "picaValueListItemContainer"
    )
    val valueColor by animateColorAsState(
        targetValue = if (pressed) {
            if (expressive) MaterialTheme.colorScheme.onSecondaryContainer else MaterialTheme.colorScheme.onSurface
        } else {
            if (expressive) MaterialTheme.colorScheme.secondary else MaterialTheme.colorScheme.onSurface
        },
        animationSpec = tween(durationMillis = 180, easing = FastOutSlowInEasing),
        label = "picaValueListItemValue"
    )
    val chevronOffset by animateDpAsState(
        targetValue = if (pressed) 4.dp else 0.dp,
        animationSpec = PicaExpressiveMotion.EmphasizedDp,
        label = "picaValueListItemChevron"
    )

    Surface(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .scale(scale)
            .animateContentSize(),
        shape = if (expressive) MaterialTheme.shapes.large else MaterialTheme.shapes.medium,
        color = containerColor,
        tonalElevation = if (expressive && pressed) 2.dp else 0.dp,
        interactionSource = interactionSource,
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 6.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                text = label,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
                modifier = Modifier.weight(1f),
            )
            Text(
                text = value,
                style = MaterialTheme.typography.bodyMedium,
                color = valueColor,
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
    val scale by animateFloatAsState(
        targetValue = if (pressed) 0.985f else 1f,
        animationSpec = PicaExpressiveMotion.Press,
        label = "picaSwitchListItemScale"
    )
    val containerColor by animateColorAsState(
        targetValue = when {
            checked -> if (expressive) MaterialTheme.colorScheme.surfaceContainer else MaterialTheme.colorScheme.secondaryContainer
            pressed -> if (expressive) MaterialTheme.colorScheme.surfaceContainerHigh else MaterialTheme.colorScheme.secondaryContainer
            else -> Color.Transparent
        },
        animationSpec = tween(durationMillis = 180, easing = FastOutSlowInEasing),
        label = "picaSwitchListItemContainer"
    )
    val labelColor by animateColorAsState(
        targetValue = if (checked) {
            if (expressive) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSecondaryContainer
        } else {
            if (expressive) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurfaceVariant
        },
        animationSpec = tween(durationMillis = 180, easing = FastOutSlowInEasing),
        label = "picaSwitchListItemLabel"
    )

    Surface(
        onClick = { onCheckedChange(!checked) },
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .scale(scale)
            .animateContentSize(),
        shape = if (expressive) MaterialTheme.shapes.large else MaterialTheme.shapes.medium,
        color = containerColor,
        tonalElevation = if (expressive && (checked || pressed)) 2.dp else 0.dp,
        interactionSource = interactionSource,
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 6.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Text(
                text = label,
                style = if (expressive && checked) PicaExpressiveType.LabelEmphasized else MaterialTheme.typography.bodyLarge,
                color = labelColor,
                fontWeight = if (checked) FontWeight.SemiBold else FontWeight.Medium,
                modifier = Modifier.weight(1f),
            )
            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange,
                modifier = Modifier.scale(0.86f),
                colors = SwitchDefaults.colors(
                    checkedThumbColor = if (expressive) MaterialTheme.colorScheme.onSecondary else MaterialTheme.colorScheme.onPrimary,
                    checkedTrackColor = if (expressive) MaterialTheme.colorScheme.secondary else MaterialTheme.colorScheme.primary,
                    checkedBorderColor = if (expressive) MaterialTheme.colorScheme.secondary else MaterialTheme.colorScheme.primary,
                    uncheckedThumbColor = MaterialTheme.colorScheme.outline,
                    uncheckedTrackColor = MaterialTheme.colorScheme.surfaceVariant,
                    uncheckedBorderColor = MaterialTheme.colorScheme.outline,
                )
            )
        }
    }
    if (showDivider) HorizontalDivider()
}

// ─── 单选行（用于 Dialog 内部）──────────────────────────────────────────────

/**
 * 单选列表行，选中时尾部显示勾选图标。
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
    val scale by animateFloatAsState(
        targetValue = if (pressed) 0.985f else 1f,
        animationSpec = PicaExpressiveMotion.Press,
        label = "picaRadioListItemScale"
    )
    val containerColor by animateColorAsState(
        targetValue = when {
            selected -> if (expressive) MaterialTheme.colorScheme.surfaceContainer else MaterialTheme.colorScheme.secondaryContainer
            pressed -> if (expressive) MaterialTheme.colorScheme.surfaceContainerHigh else MaterialTheme.colorScheme.secondaryContainer
            else -> Color.Transparent
        },
        animationSpec = tween(durationMillis = 180, easing = FastOutSlowInEasing),
        label = "picaRadioListItemContainer"
    )
    val contentColor by animateColorAsState(
        targetValue = if (selected) {
            if (expressive) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSecondaryContainer
        } else {
            if (expressive) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurfaceVariant
        },
        animationSpec = tween(durationMillis = 180, easing = FastOutSlowInEasing),
        label = "picaRadioListItemContent"
    )

    Surface(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .scale(scale)
            .animateContentSize(),
        shape = if (expressive) MaterialTheme.shapes.medium else MaterialTheme.shapes.small,
        color = containerColor,
        tonalElevation = if (expressive && (selected || pressed)) 2.dp else 0.dp,
        interactionSource = interactionSource,
    ) {
        ListItem(
            colors = ListItemDefaults.colors(
                containerColor = containerColor,
            ),
            headlineContent = {
                Text(
                    text = label,
                    style = MaterialTheme.typography.bodyLarge,
                    color = contentColor,
                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                )
            },
            trailingContent = {
                AnimatedVisibility(
                    visible = selected,
                    enter = fadeIn(animationSpec = tween(120)) +
                        scaleIn(
                            initialScale = 0.78f,
                            animationSpec = PicaExpressiveMotion.Emphasized
                        ),
                    exit = fadeOut(animationSpec = tween(90)) +
                        scaleOut(targetScale = 0.78f, animationSpec = tween(90)),
                ) {
                    Icon(
                        imageVector = Icons.Filled.CheckCircle,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary,
                    )
                }
            },
            modifier = Modifier.fillMaxWidth(),
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
