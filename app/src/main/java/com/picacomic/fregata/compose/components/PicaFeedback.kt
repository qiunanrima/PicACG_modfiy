package com.picacomic.fregata.compose.components

import androidx.annotation.DrawableRes
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.SearchOff
import androidx.compose.material3.Icon
import androidx.compose.material3.Surface
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.isPicaExpressiveTheme

// ─── 加载中 ──────────────────────────────────────────────────────────────────

/**
 * 居中显示的加载指示器，用于页面或列表的加载状态。
 *
 * @param modifier 可传入 fillMaxSize() 等约束让它占满父容器
 */
@Composable
fun PicaLoadingIndicator(
    modifier: Modifier = Modifier.fillMaxSize(),
) {
    val expressive = isPicaExpressiveTheme()
    Box(
        modifier = modifier,
        contentAlignment = Alignment.Center,
    ) {
        if (expressive) {
            val transition = rememberInfiniteTransition(label = "pica_loading")
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                repeat(4) { index ->
                    val scale by transition.animateFloat(
                        initialValue = 0.85f,
                        targetValue = 1.15f,
                        animationSpec = infiniteRepeatable(
                            animation = tween(durationMillis = 720, delayMillis = index * 90),
                        ),
                        label = "pica_loading_scale_$index",
                    )
                    val alpha = 0.35f + (index * 0.15f)
                    Surface(
                        modifier = Modifier.size(width = 14.dp * scale, height = 28.dp * scale),
                        shape = MaterialTheme.shapes.extraLarge,
                        color = MaterialTheme.colorScheme.primary.copy(alpha = alpha),
                    ) {}
                }
            }
        } else {
            androidx.compose.material3.CircularProgressIndicator(
                color = MaterialTheme.colorScheme.primary,
            )
        }
    }
}

// ─── 空态 ────────────────────────────────────────────────────────────────────

/**
 * 居中显示的空态占位，含图标和说明文字。
 *
 * @param message     主说明文字
 * @param icon        图标，默认为搜索为空图标
 * @param modifier    同 [PicaLoadingIndicator]
 */
@Composable
fun PicaEmptyState(
    message: String,
    modifier: Modifier = Modifier.fillMaxSize(),
    icon: ImageVector = Icons.Outlined.SearchOff,
) {
    Column(
        modifier = modifier.padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.outline,
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = message,
            style = MaterialTheme.typography.bodyLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center,
        )
    }
}

// ─── Preview ─────────────────────────────────────────────────────────────────

@Preview(showBackground = true)
@Composable
private fun PicaLoadingIndicatorPreview() {
    PicaComposeTheme {
        PicaLoadingIndicator()
    }
}

@Preview(showBackground = true)
@Composable
private fun PicaEmptyStatePreview() {
    PicaComposeTheme {
        PicaEmptyState(message = "暂无内容")
    }
}
