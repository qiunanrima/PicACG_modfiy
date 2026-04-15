package com.picacomic.fregata.compose.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

// ─── 确认 Dialog ────────────────────────────────────────────────────────────

/**
 * 通用确认弹窗，含标题、可选正文、确认/取消按钮。
 *
 * @param title         弹窗标题
 * @param body          可选正文说明文字
 * @param confirmText   确认按钮文字，默认 "确定"
 * @param dismissText   取消按钮文字，默认 "取消"；传 null 则不显示取消按钮
 * @param onConfirm     点击确认时回调
 * @param onDismiss     点击取消或弹窗外区域时回调
 */
@Composable
fun PicaConfirmDialog(
    title: String,
    body: String? = null,
    confirmText: String = stringResource(R.string.ok),
    dismissText: String? = stringResource(R.string.cancel),
    onConfirm: () -> Unit,
    onDismiss: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(text = title) },
        text = body?.let { { Text(text = it) } },
        confirmButton = {
            TextButton(onClick = {
                onConfirm()
                onDismiss()
            }) {
                Text(text = confirmText)
            }
        },
        dismissButton = dismissText?.let {
            {
                TextButton(onClick = onDismiss) {
                    Text(text = it)
                }
            }
        },
    )
}

// ─── 单选 Dialog ─────────────────────────────────────────────────────────────

/**
 * 通用单选弹窗，选项列表使用 [PicaRadioListItem]。
 * 点击选项后立即回调并关闭弹窗。
 *
 * @param title         弹窗标题
 * @param options       选项文字列表
 * @param selectedIndex 当前选中项下标
 * @param onSelect      选中某项时回调，参数为选中下标
 * @param onDismiss     点击取消或弹窗外区域时回调
 */
@Composable
fun PicaSingleChoiceDialog(
    title: String,
    options: List<String>,
    selectedIndex: Int,
    onSelect: (Int) -> Unit,
    onDismiss: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(text = title) },
        text = {
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(0.dp),
            ) {
                options.forEachIndexed { index, option ->
                    PicaRadioListItem(
                        label = option,
                        selected = selectedIndex == index,
                        onClick = {
                            onSelect(index)
                            onDismiss()
                        },
                    )
                }
            }
        },
        confirmButton = {},
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(
                    text = stringResource(R.string.cancel),
                    color = MaterialTheme.colorScheme.outline,
                )
            }
        },
    )
}

// ─── Preview ─────────────────────────────────────────────────────────────────

@Preview(showBackground = true)
@Composable
private fun PicaConfirmDialogPreview() {
    PicaComposeTheme {
        PicaConfirmDialog(
            title = "确认退出登录？",
            body = "退出后需要重新输入账号密码。",
            onConfirm = {},
            onDismiss = {},
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun PicaConfirmDialogNoBodyPreview() {
    PicaComposeTheme {
        PicaConfirmDialog(
            title = "当前版本不支持此功能",
            onConfirm = {},
            onDismiss = {},
            dismissText = null,
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun PicaSingleChoiceDialogPreview() {
    PicaComposeTheme {
        PicaSingleChoiceDialog(
            title = "屏幕方向",
            options = listOf("跟随系统", "竖屏", "横屏"),
            selectedIndex = 1,
            onSelect = {},
            onDismiss = {},
        )
    }
}
