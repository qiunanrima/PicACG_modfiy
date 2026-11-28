package com.picacomic.fregata.compose.components

import androidx.compose.foundation.layout.BoxWithConstraints

import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.heading
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.toggleableState
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.semantics.semantics
import androidx.compose.foundation.selection.toggleable

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.Badge
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.FilterChip
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.runtime.remember
import androidx.compose.animation.core.animateDpAsState
import com.picacomic.fregata.compose.pressMotion
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
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.compose.PicaControlTokens

data class PicaActionItem(
    val icon: ImageVector,
    val contentDescription: String?,
    val count: String? = null,
    val selected: Boolean = false,
    val enabled: Boolean = true,
    val onClick: () -> Unit,
    val reportsSelection: Boolean = false,
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
    selectedIcon: ImageVector = Icons.Filled.Check,
) {
    val flatFilterChipElevation = FilterChipDefaults.filterChipElevation(
        elevation = 0.dp,
        pressedElevation = 0.dp,
        focusedElevation = 0.dp,
        hoveredElevation = 0.dp,
        draggedElevation = 0.dp,
        disabledElevation = 0.dp,
    )
    if (onClick != null) {
        FilterChip(
            selected = selected,
            onClick = onClick,
            enabled = enabled,
            label = {
                Text(
                    text = text,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            },
            modifier = modifier,
            colors = FilterChipDefaults.filterChipColors(
                containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
                selectedContainerColor = MaterialTheme.colorScheme.secondaryContainer,
                selectedLabelColor = MaterialTheme.colorScheme.onSecondaryContainer,
                selectedLeadingIconColor = MaterialTheme.colorScheme.onSecondaryContainer,
            ),
            leadingIcon = if (selected) {
                {
                    Icon(
                        selectedIcon,
                        contentDescription = null,
                        modifier = Modifier.size(FilterChipDefaults.IconSize),
                    )
                }
            } else {
                null
            },
            border = null,
            shape = RoundedCornerShape(animateDpAsState(if (selected) 8.dp else 24.dp, MaterialTheme.motionScheme.fastSpatialSpec()).value),
            elevation = flatFilterChipElevation,
        )
    } else {
        PicaInfoChip(text = text, modifier = modifier)
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
                style = PicaExpressiveType.BodyEmphasized,
                color = valueColor,
                textAlign = TextAlign.Start,
            )
            if (!supportingText.isNullOrBlank()) {
                Text(
                    text = supportingText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    textAlign = TextAlign.Start,
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
                style = PicaExpressiveType.SectionEmphasized,
                modifier = Modifier.semantics { heading() },
                color = MaterialTheme.colorScheme.onSurface,
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
            TextButton(onClick = onActionClick) {
                Text(text = actionLabel)
            }
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
    val primaryButton: @Composable (Modifier) -> Unit = { buttonModifier ->
        Button(
            contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 8.dp),
            shapes = ButtonDefaults.shapes(),
            onClick = onPrimaryClick,
            enabled = primaryEnabled,
            modifier = buttonModifier
                .heightIn(min = PicaControlTokens.ActionRowHeight),
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
    }

    BoxWithConstraints(modifier.fillMaxWidth()) {
        val fontScale = LocalDensity.current.fontScale.coerceAtLeast(1f)
        val stackActions = actions.isNotEmpty() && maxWidth < 350.dp * fontScale
        if (stackActions) {
            val gap = 3.dp
            val actionsPerRow = ((maxWidth + gap) / (64.dp * fontScale + gap)).toInt().coerceAtLeast(1)
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                primaryButton(Modifier.fillMaxWidth())
                actions.chunked(actionsPerRow).forEach { group ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) { ActionButtons(group) }
                }
            }
        } else {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(3.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                primaryButton(Modifier.weight(1.6f))
                ActionButtons(actions)
            }
        }
    }
}

@Composable
internal fun <T> PicaEpisodeGrid(
    episodes: List<T>,
    itemContent: @Composable (Int, T, Modifier) -> Unit,
) {
    val gap = 12.dp
    BoxWithConstraints(Modifier.fillMaxWidth()) {
        val minCellWidth = 88.dp * LocalDensity.current.fontScale.coerceAtLeast(1f)
        val columns = ((maxWidth + gap) / (minCellWidth + gap)).toInt().coerceIn(1, 8)
        Column(verticalArrangement = Arrangement.spacedBy(gap)) {
            episodes.chunked(columns).forEachIndexed { rowIndex, row ->
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                    row.forEachIndexed { columnIndex, episode ->
                        itemContent(rowIndex * columns + columnIndex, episode, Modifier.weight(1f))
                    }
                    repeat(columns - row.size) { Box(Modifier.weight(1f)) }
                }
            }
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
    selectionMode: Boolean = false,
) {
    val shape = MaterialTheme.shapes.medium
    val containerColor = when (state) {
        PicaEpisodeGridItemState.Default -> MaterialTheme.colorScheme.surfaceContainerLow
        PicaEpisodeGridItemState.Downloading -> MaterialTheme.colorScheme.primaryContainer
        PicaEpisodeGridItemState.Downloaded -> MaterialTheme.colorScheme.tertiaryContainer
        PicaEpisodeGridItemState.Selected -> MaterialTheme.colorScheme.secondaryContainer
    }
    val contentColor = when (state) {
        PicaEpisodeGridItemState.Default -> MaterialTheme.colorScheme.onSurface
        PicaEpisodeGridItemState.Downloading -> MaterialTheme.colorScheme.onPrimaryContainer
        PicaEpisodeGridItemState.Downloaded -> MaterialTheme.colorScheme.onTertiaryContainer
        PicaEpisodeGridItemState.Selected -> MaterialTheme.colorScheme.onSecondaryContainer
    }

    val interaction = if (selectionMode) {
        Modifier.toggleable(
            value = state == PicaEpisodeGridItemState.Selected,
            enabled = enabled,
            role = Role.Checkbox,
            onValueChange = { onClick() },
        )
    } else {
        Modifier.clickable(enabled = enabled, role = Role.Button, onClick = onClick)
    }
    Surface(
        color = containerColor,
        contentColor = contentColor,
        shape = shape,
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant),
        modifier = modifier
            .clip(shape)
            .then(interaction),
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(min = PicaControlTokens.EpisodeItemMinHeight)
                .padding(horizontal = 10.dp, vertical = 6.dp),
            verticalArrangement = Arrangement.Center,
            horizontalAlignment = Alignment.CenterHorizontally,
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = if (state == PicaEpisodeGridItemState.Default) {
                    FontWeight.Normal
                } else {
                    FontWeight.Medium
                },
                textAlign = TextAlign.Center,
                minLines = 2,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                text = subtitle.orEmpty(),
                style = MaterialTheme.typography.labelSmall,
                color = contentColor,
                textAlign = TextAlign.Center,
                minLines = 2,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
        }
    }
}

@Composable
fun PicaRecommendationCard(
    title: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    categories: List<String> = emptyList(),
    thumbnail: @Composable BoxScope.() -> Unit = {
        Box(
            modifier = Modifier
                .matchParentSize()
                .background(MaterialTheme.colorScheme.surfaceContainerHigh),
            contentAlignment = Alignment.Center,
        ) {
            Icon(
                imageVector = Icons.Filled.Category,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    },
) {
    val recommendationContainer = MaterialTheme.colorScheme.surfaceContainerLow

    val pressSource = androidx.compose.runtime.remember { androidx.compose.foundation.interaction.MutableInteractionSource() }
    Card(
        onClick = onClick,
        interactionSource = pressSource,
        modifier = modifier.pressMotion(pressSource),
        colors = CardDefaults.cardColors(
            containerColor = recommendationContainer,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ),
        shape = RoundedCornerShape(20.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 0.dp),
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(3f / 4f)
                    .clip(RoundedCornerShape(18.dp)),
            ) {
                thumbnail()
                categories.firstOrNull(String::isNotBlank)?.let { badge ->
                    Surface(Modifier.align(Alignment.BottomStart).padding(6.dp), shape = CircleShape,
                        color = MaterialTheme.colorScheme.primaryFixed, contentColor = MaterialTheme.colorScheme.onPrimaryFixed) {
                        Text(badge, Modifier.padding(horizontal = 8.dp, vertical = 2.dp), maxLines = 1, overflow = TextOverflow.Ellipsis, style = MaterialTheme.typography.labelSmall)
                    }
                }
            }
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                minLines = 2,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )

        }
    }
}

@Composable
private fun androidx.compose.foundation.layout.RowScope.ActionButtons(actions: List<PicaActionItem>) {
    actions.forEach { item ->
        val interaction = remember { MutableInteractionSource() }
        val pressed = interaction.collectIsPressedAsState()
        val weight = animateFloatAsState(if (pressed.value) 1.18f else 1f, MaterialTheme.motionScheme.fastSpatialSpec())
        PicaActionStatButton(item, interaction, Modifier.weight(weight.value))
    }
}

@Composable
private fun PicaActionStatButton(
    item: PicaActionItem,
    interaction: MutableInteractionSource,
    modifier: Modifier = Modifier,
) {
    val colors = MaterialTheme.colorScheme
    val containerColor = animateColorAsState(if (item.selected) colors.tertiaryContainer else colors.secondaryContainer, MaterialTheme.motionScheme.fastEffectsSpec())
    val contentColor = animateColorAsState(if (item.selected) colors.onTertiaryContainer else colors.onSecondaryContainer, MaterialTheme.motionScheme.fastEffectsSpec())
    val iconSize = animateDpAsState(if (item.selected) 24.dp else 22.dp, MaterialTheme.motionScheme.fastSpatialSpec())
    val radius = animateDpAsState(if (item.selected) 12.dp else 32.dp, MaterialTheme.motionScheme.fastSpatialSpec())
    Card(
        onClick = item.onClick,
        interactionSource = interaction,
        enabled = item.enabled,
        modifier = modifier.semantics {
            if (item.reportsSelection) {
                role = Role.Switch
                toggleableState = ToggleableState(item.selected)
            }
        },
        shape = RoundedCornerShape(radius.value),
        colors = CardDefaults.cardColors(
            containerColor = containerColor.value,
            contentColor = contentColor.value,
        ),
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(min = PicaControlTokens.ActionRowHeight)
                .padding(horizontal = 4.dp, vertical = 6.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(4.dp, Alignment.CenterVertically),
        ) {
            Icon(
                imageVector = item.icon,
                contentDescription = item.contentDescription,
                modifier = Modifier.size(iconSize.value),
            )
            if (!item.count.isNullOrBlank()) {
                Badge(
                    containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
                    contentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                ) {
                    Text(
                        text = item.count,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
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
                    categories = listOf("短篇"),
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
                PicaRecommendationCard(
                    title = "猜你喜欢 B",
                    categories = listOf("恋爱"),
                    onClick = {},
                    modifier = Modifier.weight(1f),
                )
                PicaRecommendationCard(
                    title = "猜你喜欢 C",
                    categories = listOf("校园"),
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
