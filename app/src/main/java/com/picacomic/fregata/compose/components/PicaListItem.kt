package com.picacomic.fregata.compose.components

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowForwardIos
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.ListItem
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme

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
    ListItem(
        headlineContent = {
            Text(
                text = label,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
            )
        },
        trailingContent = {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                Text(
                    text = value,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.primary,
                )
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.ArrowForwardIos,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.outline,
                    modifier = Modifier.size(14.dp),
                )
            }
        },
        modifier = modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
    )
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
    ListItem(
        headlineContent = {
            Text(
                text = label,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
            )
        },
        trailingContent = {
            Switch(checked = checked, onCheckedChange = onCheckedChange)
        },
        modifier = modifier.fillMaxWidth(),
    )
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
    ListItem(
        headlineContent = {
            Text(
                text = label,
                style = MaterialTheme.typography.bodyLarge,
                color = if (selected) MaterialTheme.colorScheme.primary
                else MaterialTheme.colorScheme.onSurface,
                fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
            )
        },
        trailingContent = if (selected) {
            {
                Icon(
                    imageVector = Icons.Filled.CheckCircle,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary,
                )
            }
        } else null,
        modifier = modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
    )
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
