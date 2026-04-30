package com.picacomic.fregata.compose.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.Badge
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.PicaComposeTheme

data class PicaActionItem(
    val icon: ImageVector,
    val contentDescription: String?,
    val count: String? = null,
    val selected: Boolean = false,
    val enabled: Boolean = true,
    val onClick: () -> Unit,
)

enum class PicaEpisodeGridItemState {
    Default,
    Downloading,
    Downloaded,
    Selected,
}

@Composable
fun PicaTag(
    text: String,
    onClick: (() -> Unit)?,
    modifier: Modifier = Modifier,
    selected: Boolean = false,
    enabled: Boolean = true,
) {
    val shape = MaterialTheme.shapes.small
    val containerColor = if (selected) {
        MaterialTheme.colorScheme.primaryContainer
    } else {
        MaterialTheme.colorScheme.surface
    }
    val contentColor = if (selected) {
        MaterialTheme.colorScheme.onPrimaryContainer
    } else {
        MaterialTheme.colorScheme.primary
    }
    val borderColor = if (selected) {
        Color.Transparent
    } else {
        MaterialTheme.colorScheme.outline.copy(alpha = 0.32f)
    }

    Surface(
        color = containerColor,
        contentColor = contentColor,
        shape = shape,
        tonalElevation = if (selected) 2.dp else 0.dp,
        border = BorderStroke(1.dp, borderColor),
        modifier = modifier
            .clip(shape)
            .then(
                if (onClick != null) {
                    Modifier.clickable(enabled = enabled, onClick = onClick)
                } else {
                    Modifier
                }
            )
    ) {
        Text(
            text = text,
            style = MaterialTheme.typography.labelMedium,
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
        )
    }
}

@Composable
fun PicaStatRow(
    label: String,
    value: String,
    modifier: Modifier = Modifier,
    supportingText: String? = null,
    valueColor: Color = MaterialTheme.colorScheme.onSurface,
    onClick: (() -> Unit)? = null,
) {
    val shape = MaterialTheme.shapes.medium

    Row(
        modifier = modifier
            .fillMaxWidth()
            .clip(shape)
            .then(
                if (onClick != null) {
                    Modifier.clickable(onClick = onClick)
                } else {
                    Modifier
                }
            )
            .padding(vertical = 6.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.weight(0.8f),
        )
        Column(
            modifier = Modifier.weight(1.2f),
            horizontalAlignment = Alignment.End,
        ) {
            Text(
                text = value,
                style = MaterialTheme.typography.bodyLarge,
                fontWeight = FontWeight.Medium,
                color = valueColor,
                textAlign = TextAlign.End,
            )
            if (!supportingText.isNullOrBlank()) {
                Text(
                    text = supportingText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    textAlign = TextAlign.End,
                )
            }
        }
    }
}

@Composable
fun PicaSectionHeader(
    title: String,
    modifier: Modifier = Modifier,
    supportingText: String? = null,
    actionLabel: String? = null,
    onActionClick: (() -> Unit)? = null,
) {
    Row(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(2.dp),
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold,
            )
            if (!supportingText.isNullOrBlank()) {
                Text(
                    text = supportingText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
        if (!actionLabel.isNullOrBlank() && onActionClick != null) {
            Text(
                text = actionLabel,
                style = MaterialTheme.typography.labelLarge,
                color = MaterialTheme.colorScheme.primary,
                modifier = Modifier
                    .clip(MaterialTheme.shapes.small)
                    .clickable(onClick = onActionClick)
                    .padding(horizontal = 8.dp, vertical = 6.dp),
            )
        }
    }
}

@Composable
fun PicaActionRow(
    primaryText: String,
    onPrimaryClick: () -> Unit,
    modifier: Modifier = Modifier,
    primarySupportingText: String? = null,
    primaryEnabled: Boolean = true,
    actions: List<PicaActionItem> = emptyList(),
) {
    Row(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Button(
            onClick = onPrimaryClick,
            enabled = primaryEnabled,
            modifier = Modifier
                .weight(1.6f)
                .height(72.dp),
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
            ) {
                Text(
                    text = primaryText,
                    style = MaterialTheme.typography.labelLarge,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    textAlign = TextAlign.Center,
                )
                if (!primarySupportingText.isNullOrBlank()) {
                    Text(
                        text = primarySupportingText,
                        style = MaterialTheme.typography.labelSmall,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        textAlign = TextAlign.Center,
                    )
                }
            }
        }

        actions.forEach { action ->
            PicaActionStatButton(
                item = action,
                modifier = Modifier.weight(1f),
            )
        }
    }
}

@Composable
fun PicaEpisodeGridItem(
    title: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    state: PicaEpisodeGridItemState = PicaEpisodeGridItemState.Default,
    enabled: Boolean = true,
) {
    val shape = MaterialTheme.shapes.medium
    val containerColor = when (state) {
        PicaEpisodeGridItemState.Default -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f)
        PicaEpisodeGridItemState.Downloading -> MaterialTheme.colorScheme.primaryContainer
        PicaEpisodeGridItemState.Downloaded -> MaterialTheme.colorScheme.primaryContainer
        PicaEpisodeGridItemState.Selected -> MaterialTheme.colorScheme.secondaryContainer
    }
    val contentColor = when (state) {
        PicaEpisodeGridItemState.Default -> MaterialTheme.colorScheme.onSurface
        PicaEpisodeGridItemState.Downloading -> MaterialTheme.colorScheme.onPrimaryContainer
        PicaEpisodeGridItemState.Downloaded -> MaterialTheme.colorScheme.onPrimaryContainer
        PicaEpisodeGridItemState.Selected -> MaterialTheme.colorScheme.onSecondaryContainer
    }
    val borderColor = when (state) {
        PicaEpisodeGridItemState.Default -> MaterialTheme.colorScheme.outline.copy(alpha = 0.18f)
        PicaEpisodeGridItemState.Downloading -> MaterialTheme.colorScheme.primary.copy(alpha = 0.38f)
        PicaEpisodeGridItemState.Downloaded -> MaterialTheme.colorScheme.primary.copy(alpha = 0.32f)
        PicaEpisodeGridItemState.Selected -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.42f)
    }

    Surface(
        color = containerColor,
        contentColor = contentColor,
        shape = shape,
        tonalElevation = if (state == PicaEpisodeGridItemState.Default) 0.dp else 2.dp,
        border = BorderStroke(1.dp, borderColor),
        modifier = modifier
            .height(46.dp)
            .clip(shape)
            .clickable(enabled = enabled, onClick = onClick),
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 10.dp, vertical = 6.dp),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = if (state == PicaEpisodeGridItemState.Default) {
                    FontWeight.Medium
                } else {
                    FontWeight.SemiBold
                },
                textAlign = TextAlign.Center,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            if (!subtitle.isNullOrBlank()) {
                Text(
                    text = subtitle,
                    style = MaterialTheme.typography.labelSmall,
                    color = contentColor.copy(alpha = 0.82f),
                    textAlign = TextAlign.Center,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
    }
}

@Composable
fun PicaRecommendationCard(
    title: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    supportingText: String? = null,
    thumbnail: @Composable BoxScope.() -> Unit = {
        Box(
            modifier = Modifier
                .matchParentSize()
                .background(MaterialTheme.colorScheme.surfaceVariant),
            contentAlignment = Alignment.Center,
        ) {
            Text(
                text = "Cover",
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    },
) {
    Card(
        modifier = modifier
            .height(214.dp)
            .clip(MaterialTheme.shapes.small)
            .clickable(onClick = onClick),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface,
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(128.dp)
                    .clip(MaterialTheme.shapes.extraSmall),
            ) {
                thumbnail()
            }
            Text(
                text = title,
                style = MaterialTheme.typography.bodySmall,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                text = supportingText.orEmpty(),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

@Composable
private fun PicaActionStatButton(
    item: PicaActionItem,
    modifier: Modifier = Modifier,
) {
    val containerColor = if (item.selected) {
        MaterialTheme.colorScheme.secondaryContainer
    } else {
        MaterialTheme.colorScheme.surface
    }
    val contentColor = if (item.selected) {
        MaterialTheme.colorScheme.onSecondaryContainer
    } else {
        MaterialTheme.colorScheme.onSurface
    }
    Surface(
        color = containerColor,
        contentColor = contentColor,
        shape = MaterialTheme.shapes.medium,
        tonalElevation = if (item.selected) 3.dp else 1.dp,
        border = BorderStroke(
            width = 1.dp,
            color = if (item.selected) {
                MaterialTheme.colorScheme.secondary.copy(alpha = 0.38f)
            } else {
                MaterialTheme.colorScheme.outline.copy(alpha = 0.18f)
            },
        ),
        modifier = modifier
            .height(72.dp)
            .clip(MaterialTheme.shapes.medium)
            .clickable(enabled = item.enabled, onClick = item.onClick),
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 8.dp, vertical = 10.dp),
        ) {
            Icon(
                imageVector = item.icon,
                contentDescription = item.contentDescription,
                modifier = Modifier
                    .align(Alignment.Center)
                    .size(22.dp),
            )
            if (!item.count.isNullOrBlank()) {
                Badge(
                    modifier = Modifier.align(Alignment.TopEnd),
                    containerColor = MaterialTheme.colorScheme.primary,
                    contentColor = MaterialTheme.colorScheme.onPrimary,
                ) {
                    Text(
                        text = item.count,
                        style = MaterialTheme.typography.labelSmall,
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun PicaComicBlocksPreview() {
    PicaComposeTheme {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
        ) {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                PicaTag(text = "短篇", onClick = {})
                PicaTag(text = "校园", onClick = {}, selected = true)
            }
            PicaStatRow(
                label = "作者",
                value = "Miracle Knight",
                supportingText = "点击查看作品",
            )
            PicaSectionHeader(
                title = "章节",
                supportingText = "共 24 话",
                actionLabel = "更多",
                onActionClick = {},
            )
            PicaActionRow(
                primaryText = "开始阅读",
                primarySupportingText = "从第 3 话 P.12 继续",
                onPrimaryClick = {},
                actions = listOf(
                    PicaActionItem(
                        icon = Icons.Filled.Home,
                        contentDescription = "comment",
                        count = "12",
                        onClick = {},
                    ),
                    PicaActionItem(
                        icon = Icons.Filled.Person,
                        contentDescription = "like",
                        count = "128",
                        onClick = {},
                    ),
                ),
            )
            Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                PicaEpisodeGridItem(
                    title = "第 1 话",
                    subtitle = "已下载",
                    state = PicaEpisodeGridItemState.Downloaded,
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
                PicaEpisodeGridItem(
                    title = "第 2 话",
                    subtitle = "阅读中",
                    state = PicaEpisodeGridItemState.Selected,
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
                PicaEpisodeGridItem(
                    title = "第 3 话",
                    subtitle = "下载中",
                    state = PicaEpisodeGridItemState.Downloading,
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
            }
            Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                PicaRecommendationCard(
                    title = "猜你喜欢 A",
                    supportingText = "短篇",
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
                PicaRecommendationCard(
                    title = "猜你喜欢 B",
                    supportingText = "恋爱",
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
                PicaRecommendationCard(
                    title = "猜你喜欢 C",
                    supportingText = "校园",
                    onClick = {},
                    modifier = Modifier.weight(1f),
                    thumbnail = {
                        Box(
                            modifier = Modifier
                                .matchParentSize()
                                .background(MaterialTheme.colorScheme.primaryContainer),
                            contentAlignment = Alignment.Center,
                        ) {
                            Icon(
                                imageVector = Icons.Filled.Category,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.onPrimaryContainer,
                            )
                        }
                    },
                )
            }
        }
    }
}
