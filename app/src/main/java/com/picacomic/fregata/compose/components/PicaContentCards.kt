@file:OptIn(androidx.compose.foundation.layout.ExperimentalLayoutApi::class)

package com.picacomic.fregata.compose.components

import androidx.compose.ui.graphics.painter.ColorPainter
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember

import androidx.compose.material3.OutlinedCard
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Image
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.SportsEsports
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import com.picacomic.fregata.compose.pressMotion
import androidx.compose.runtime.Composable
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.IconButton
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import coil.request.ImageRequest
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaExpressiveType
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.utils.g

@Composable
fun PicaRemoteImage(
    thumbnail: ThumbnailObject?,
    contentDescription: String?,
    modifier: Modifier = Modifier,
    contentScale: ContentScale = ContentScale.Crop,
    fallbackIcon: ImageVector = Icons.Filled.Image,
) {
    val imageUrl = thumbnail?.let { g.b(it) }.orEmpty()
    PicaImageUrl(
        imageUrl = imageUrl,
        contentDescription = contentDescription,
        modifier = modifier,
        contentScale = contentScale,
        fallbackIcon = fallbackIcon,
    )
}

@Composable
fun PicaImageUrl(
    imageUrl: String?,
    contentDescription: String?,
    modifier: Modifier = Modifier,
    contentScale: ContentScale = ContentScale.Crop,
    fallbackIcon: ImageVector = Icons.Filled.Image,
) {
    val safeUrl = imageUrl.orEmpty()
    Box(
        modifier = modifier,
        contentAlignment = Alignment.Center,
    ) {
        if (safeUrl.isBlank()) {
            Surface(
                modifier = Modifier.fillMaxSize(),
                color = MaterialTheme.colorScheme.surfaceContainerHigh,
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = fallbackIcon,
                        contentDescription = contentDescription,
                        tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
        } else {
            val context = androidx.compose.ui.platform.LocalContext.current
            val failed = remember(safeUrl) { mutableStateOf(false) }
            val attempt = remember(safeUrl) { mutableIntStateOf(0) }
            key(safeUrl, attempt.intValue) {
                AsyncImage(
                    model = remember(context, safeUrl) {
                        ImageRequest.Builder(context)
                            .data(safeUrl)
                            .allowHardware(false)
                            .crossfade(true)
                            .build()
                    },
                    contentDescription = contentDescription,
                    placeholder = ColorPainter(MaterialTheme.colorScheme.surfaceContainerHigh),
                    onLoading = { failed.value = false },
                    onSuccess = { failed.value = false },
                    onError = { failed.value = true },
                    contentScale = contentScale,
                    modifier = Modifier.fillMaxSize(),
                )
            }
            if (failed.value) {
                Surface(
                    modifier = Modifier.matchParentSize(),
                    color = MaterialTheme.colorScheme.surfaceContainerHigh,
                    contentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        IconButton(onClick = { attempt.intValue++ }) {
                            Icon(Icons.Filled.Refresh, contentDescription = stringResource(R.string.retry_image_load))
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun PicaRankBadge(
    rank: Int,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier.defaultMinSize(minWidth = 36.dp, minHeight = 36.dp),
        shape = CircleShape,
        color = when (rank) {
            1 -> MaterialTheme.colorScheme.primary
            2 -> MaterialTheme.colorScheme.secondary
            3 -> MaterialTheme.colorScheme.tertiary
            else -> MaterialTheme.colorScheme.surfaceContainerHighest
        },
        contentColor = when (rank) {
            1 -> MaterialTheme.colorScheme.onPrimary
            2 -> MaterialTheme.colorScheme.onSecondary
            3 -> MaterialTheme.colorScheme.onTertiary
            else -> MaterialTheme.colorScheme.onSurfaceVariant
        },
    ) {
        Box(contentAlignment = Alignment.Center) {
            Text(
                text = rank.toString(),
                style = PicaExpressiveType.CompactMetricEmphasized,
                modifier = Modifier.padding(horizontal = 6.dp, vertical = 4.dp),
                maxLines = 1,
            )
        }
    }
}

@Composable
fun PicaInfoChip(
    text: String,
    modifier: Modifier = Modifier,
    icon: ImageVector? = null,
    onClick: (() -> Unit)? = null,
) {
    if (onClick == null) {
        Surface(
            modifier = modifier,
            shape = CircleShape,
            color = MaterialTheme.colorScheme.secondaryContainer,
            contentColor = MaterialTheme.colorScheme.onSecondaryContainer,
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                if (icon != null) {
                    Icon(icon, contentDescription = null, modifier = Modifier.size(16.dp))
                }
                Text(text = text, maxLines = 1, overflow = TextOverflow.Ellipsis, style = MaterialTheme.typography.labelSmall)
            }
        }
        return
    }
    AssistChip(
        onClick = onClick,
        label = {
            Text(
                text = text,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
        },
        leadingIcon = icon?.let {
            {
                Icon(
                    imageVector = it,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                )
            }
        },
        modifier = modifier,
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant),
    )
}

@Composable
fun PicaComicListCard(
    title: String,
    subtitle: String,
    thumbnail: ThumbnailObject?,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    likes: Int? = null,
    pages: Int? = null,
    episodes: Int? = null,
    categories: List<String> = emptyList(),
    coverWidth: Dp = 76.dp,
    shape: androidx.compose.ui.graphics.Shape = androidx.compose.foundation.shape.RoundedCornerShape(20.dp),
    quickAction: (@Composable () -> Unit)? = null,
    lastViewedAt: Long? = null,
) {
    val pressSource = androidx.compose.runtime.remember { androidx.compose.foundation.interaction.MutableInteractionSource() }
    androidx.compose.material3.Card(
        onClick = onClick,
        interactionSource = pressSource,
        shape = shape,
        modifier = modifier.pressMotion(pressSource)
            .fillMaxWidth()
            .heightIn(min = 136.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerLow,
        ),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top,
        ) {
            PicaRemoteImage(
                thumbnail = thumbnail,
                contentDescription = null,
                modifier = Modifier
                    .width(coverWidth)
                    .aspectRatio(3f / 4.8f)
                    .clip(MaterialTheme.shapes.medium),
                fallbackIcon = Icons.Filled.Category,
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(3.dp),
            ) {
                val titleStyle = PicaExpressiveType.SectionEmphasized
                val subtitleStyle = MaterialTheme.typography.bodyMedium
                val headingHeight = with(androidx.compose.ui.platform.LocalDensity.current) {
                    titleStyle.lineHeight.toDp() * 2 + subtitleStyle.lineHeight.toDp() + 2.dp
                }
                Column(Modifier.heightIn(min = headingHeight), verticalArrangement = Arrangement.spacedBy(2.dp)) {
                    Text(
                        text = title,
                        style = titleStyle,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                    )
                    Text(
                        text = subtitle,
                        style = subtitleStyle,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
                Row(
                    modifier = Modifier.horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                ) {
                    val metrics = listOfNotNull(
                        likes?.takeIf { it > 0 }?.let { stringResource(R.string.comic_list_likes, compactCount(it)) },
                        pages?.let { stringResource(R.string.comic_list_pages, it) },
                        episodes?.let { stringResource(R.string.comic_list_episodes, it) },
                    )
                    Text(
                        text = metrics.joinToString(" · "),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                    )
                }
                val tags = categories.filter(String::isNotBlank).take(3)
                val time = lastViewedAt?.let {
                        android.text.format.DateUtils.formatDateTime(
                            androidx.compose.ui.platform.LocalContext.current, it,
                            android.text.format.DateUtils.FORMAT_SHOW_DATE or android.text.format.DateUtils.FORMAT_SHOW_YEAR or
                                android.text.format.DateUtils.FORMAT_NUMERIC_DATE or android.text.format.DateUtils.FORMAT_SHOW_TIME,
                        )
                    }
                Text(
                    text = if (time == null) "" else stringResource(R.string.comic_last_viewed_at, time),
                    modifier = Modifier.horizontalScroll(rememberScrollState()),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                )
                Row(
                    modifier = Modifier.horizontalScroll(rememberScrollState()),
                    horizontalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    if (tags.isEmpty()) {
                        Text("", style = MaterialTheme.typography.labelSmall, modifier = Modifier.padding(vertical = 4.dp))
                    } else {
                        tags.forEach { PicaInfoChip(text = it) }
                    }
                }
            }
            if (quickAction != null) Box(Modifier.align(Alignment.Bottom)) { quickAction() }
        }
    }
}

@Composable
internal fun PicaCategoryChips(categories: List<String>) {
    if (categories.isEmpty()) return
    FlowRow(
        horizontalArrangement = Arrangement.spacedBy(4.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        categories.forEach { PicaInfoChip(text = it) }
    }
}

@Composable
internal fun compactCount(count: Int): String {
    val divisor = when {
        count >= 100_000_000 -> 100_000_000
        count >= 10_000 -> 10_000
        else -> return count.toString()
    }
    val whole = count / divisor
    val tenth = count % divisor / (divisor / 10)
    val number = if (tenth == 0) whole.toString() else "$whole.$tenth"
    return stringResource(if (divisor == 10_000) R.string.count_wan else R.string.count_yi, number)
}

@Composable
fun PicaGameCard(
    title: String,
    publisher: String,
    version: String,
    icon: ThumbnailObject?,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    likes: Int = 0,
    adult: Boolean = false,
    suggested: Boolean = false,
) {
    val badges = buildList {
        if (likes > 0) add(stringResource(R.string.comic_list_likes, compactCount(likes)))
        if (suggested) add(stringResource(R.string.game_tag_recommended))
        if (adult) add(stringResource(R.string.game_tag_adult))
    }

    val pressSource = androidx.compose.runtime.remember { androidx.compose.foundation.interaction.MutableInteractionSource() }
    OutlinedCard(
        onClick = onClick,
        interactionSource = pressSource,
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant),
        modifier = modifier.pressMotion(pressSource).fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerLow,
        ),
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            PicaRemoteImage(
                thumbnail = icon,
                contentDescription = null,
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(16f / 9f)
                    .clip(MaterialTheme.shapes.small),
                fallbackIcon = Icons.Filled.SportsEsports,
            )
            Text(
                text = title,
                style = PicaExpressiveType.SectionEmphasized,
                minLines = 2,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            val metadata = listOf(publisher, version).filter(String::isNotBlank).joinToString(" · ")
            if (metadata.isNotEmpty()) {
                Text(
                    text = metadata,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
            }
            if (badges.isNotEmpty()) {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(6.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    badges.forEach { badge ->
                        PicaInfoChip(text = badge)
                    }
                }
            }
        }
    }
}

@Composable
fun PicaUserAvatar(
    thumbnail: ThumbnailObject?,
    name: String?,
    modifier: Modifier = Modifier,
    onClick: (() -> Unit)? = null,
) {
    Box(
        modifier = modifier
            .clip(CircleShape)
            .then(if (onClick != null) Modifier.clickable(role = Role.Button, onClick = onClick) else Modifier),
        contentAlignment = Alignment.Center,
    ) {
        PicaRemoteImage(
            thumbnail = thumbnail,
            contentDescription = name?.takeIf { it.isNotBlank() }
                ?: if (onClick != null) stringResource(R.string.profile_edit_avatar) else null,
            modifier = Modifier.fillMaxSize(),
            fallbackIcon = Icons.Filled.Person,
        )
    }
}

@Composable
fun PicaTwoLineCard(
    title: String,
    body: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    leading: (@Composable () -> Unit)? = null,
    trailing: (@Composable () -> Unit)? = null,
    supporting: String? = null,
    categories: List<String> = emptyList(),
) {
    val pressSource = androidx.compose.runtime.remember { androidx.compose.foundation.interaction.MutableInteractionSource() }
    Card(
        onClick = onClick,
        interactionSource = pressSource,
        modifier = modifier.pressMotion(pressSource).fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow),
    ) {
        Row(
            modifier = Modifier.padding(12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            leading?.invoke()
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                Text(
                    text = title,
                    style = PicaExpressiveType.SectionEmphasized,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
                Text(
                    text = body,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis,
                )
                if (!supporting.isNullOrBlank()) {
                    Text(
                        text = supporting,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
                PicaCategoryChips(categories.filter(String::isNotBlank))
            }
            trailing?.invoke()
        }
    }
}

@Composable
fun PicaMetricRow(
    metrics: List<Pair<String, String>>,
    modifier: Modifier = Modifier,
) {
    FlowRow(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        metrics.forEach { (label, value) ->
            Surface(
                modifier = Modifier.widthIn(min = 72.dp),
                shape = MaterialTheme.shapes.medium,
                color = MaterialTheme.colorScheme.surfaceContainerHigh,
                contentColor = MaterialTheme.colorScheme.onSurface,
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 10.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Text(
                        text = value,
                        style = PicaExpressiveType.CompactMetricEmphasized,
                        textAlign = androidx.compose.ui.text.style.TextAlign.Start,
                    )
                    Spacer(modifier = Modifier.height(2.dp))
                    Text(
                        text = label,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        textAlign = androidx.compose.ui.text.style.TextAlign.Start,
                    )
                }
            }
        }
    }
}
