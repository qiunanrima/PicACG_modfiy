package com.picacomic.fregata.compose.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Favorite
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
import androidx.compose.runtime.Composable
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
import com.picacomic.fregata.compose.isPicaExpressiveTheme
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
                color = MaterialTheme.colorScheme.surfaceVariant,
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
            AsyncImage(
                model = ImageRequest.Builder(context)
                    .data(safeUrl)
                    .placeholder(R.drawable.placeholder_avatar_2)
                    .error(R.drawable.placeholder_avatar_2)
                    .fallback(R.drawable.placeholder_avatar_2)
                    .allowHardware(false)
                    .crossfade(true)
                    .build(),
                contentDescription = contentDescription,
                contentScale = contentScale,
                modifier = Modifier.fillMaxSize(),
            )
        }
    }
}

@Composable
fun PicaRankBadge(
    rank: Int,
    modifier: Modifier = Modifier,
) {
    Surface(
        modifier = modifier.size(36.dp),
        shape = CircleShape,
        color = when (rank) {
            1 -> MaterialTheme.colorScheme.primary
            2 -> MaterialTheme.colorScheme.secondary
            3 -> MaterialTheme.colorScheme.tertiary
            else -> MaterialTheme.colorScheme.surfaceVariant
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
    AssistChip(
        onClick = onClick ?: {},
        enabled = onClick != null,
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
        border = BorderStroke(1.dp, MaterialTheme.colorScheme.outline.copy(alpha = 0.35f)),
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
    coverWidth: Dp = 84.dp,
) {
    val expressive = isPicaExpressiveTheme()
    Card(
        onClick = onClick,
        modifier = modifier
            .fillMaxWidth()
            .height(148.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (expressive) {
                MaterialTheme.colorScheme.surfaceContainer
            } else {
                MaterialTheme.colorScheme.surfaceContainerHighest
            },
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = if (expressive) 1.dp else 0.dp),
    ) {
        Row(
            modifier = Modifier
                .fillMaxSize()
                .padding(12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.Top,
        ) {
            PicaRemoteImage(
                thumbnail = thumbnail,
                contentDescription = title,
                modifier = Modifier
                    .width(coverWidth)
                    .aspectRatio(3f / 4.8f)
                    .clip(if (expressive) MaterialTheme.shapes.medium else MaterialTheme.shapes.small),
                fallbackIcon = Icons.Filled.Category,
            )
            Column(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxSize(),
                verticalArrangement = Arrangement.spacedBy(5.dp),
            ) {
                Text(
                    text = title,
                    style = if (expressive) PicaExpressiveType.SectionEmphasized else MaterialTheme.typography.titleMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                if (subtitle.isNotBlank()) {
                    Text(
                        text = subtitle,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
                Column(
                    modifier = Modifier.fillMaxWidth(),
                    verticalArrangement = Arrangement.spacedBy(2.dp),
                ) {
                    likes?.takeIf { it > 0 }?.let {
                        PicaComicMetaText(
                            text = "$it likes",
                            expressive = expressive,
                            primary = true,
                        )
                    }
                    pages?.let {
                        PicaComicMetaText(text = "$it pages", expressive = expressive)
                    }
                    episodes?.let {
                        PicaComicMetaText(text = "$it eps", expressive = expressive)
                    }
                }
                if (categories.isNotEmpty()) {
                    Text(
                        text = categories.take(3).joinToString(" / "),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
        }
    }
}

@Composable
private fun PicaComicMetaText(
    text: String,
    expressive: Boolean,
    primary: Boolean = false,
) {
    Text(
        text = text,
        style = if (expressive && primary) PicaExpressiveType.CompactMetricEmphasized else MaterialTheme.typography.bodySmall,
        color = if (!expressive && primary) {
            MaterialTheme.colorScheme.primary
        } else {
            MaterialTheme.colorScheme.onSurfaceVariant
        },
        maxLines = 1,
        overflow = TextOverflow.Ellipsis,
        modifier = Modifier.fillMaxWidth(),
    )
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
    val expressive = isPicaExpressiveTheme()
    val badges = buildList {
        if (likes > 0) add("$likes likes")
        if (suggested) add("Pick")
        if (adult) add("Adult")
    }

    Card(
        onClick = onClick,
        modifier = modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = if (expressive) {
                MaterialTheme.colorScheme.surfaceContainer
            } else {
                MaterialTheme.colorScheme.surfaceContainerHighest
            },
        ),
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp),
        ) {
            PicaRemoteImage(
                thumbnail = icon,
                contentDescription = title,
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(16f / 9f)
                    .clip(MaterialTheme.shapes.small),
                fallbackIcon = Icons.Filled.SportsEsports,
            )
            Text(
                text = title,
                style = if (expressive) PicaExpressiveType.SectionEmphasized else MaterialTheme.typography.titleMedium,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
            )
            Text(
                text = listOf(publisher, version).filter { it.isNotBlank() }.joinToString(" · "),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            if (badges.isNotEmpty()) {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    badges.forEach { badge ->
                        Text(
                            text = badge,
                            style = MaterialTheme.typography.labelMedium,
                            color = when (badge) {
                                "Pick" -> MaterialTheme.colorScheme.tertiary
                                "Adult" -> MaterialTheme.colorScheme.error
                                else -> if (expressive) {
                                    MaterialTheme.colorScheme.onSurfaceVariant
                                } else {
                                    MaterialTheme.colorScheme.primary
                                }
                            },
                        )
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
            .then(if (onClick != null) Modifier.clickable(onClick = onClick) else Modifier),
        contentAlignment = Alignment.Center,
    ) {
        PicaRemoteImage(
            thumbnail = thumbnail,
            contentDescription = name,
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
) {
    val expressive = isPicaExpressiveTheme()
    Card(
        onClick = onClick,
        modifier = modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerHighest),
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
                    style = if (expressive) PicaExpressiveType.SectionEmphasized else MaterialTheme.typography.titleMedium,
                    maxLines = 1,
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
    val expressive = isPicaExpressiveTheme()
    Row(
        modifier = modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        metrics.forEach { (label, value) ->
            Surface(
                modifier = Modifier.weight(1f),
                shape = MaterialTheme.shapes.medium,
                color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f),
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 10.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Text(
                        text = value,
                        style = if (expressive) PicaExpressiveType.MetricEmphasized else MaterialTheme.typography.titleMedium,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    Spacer(modifier = Modifier.height(2.dp))
                    Text(
                        text = label,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                }
            }
        }
    }
}
