package com.picacomic.fregata.compose.components

import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.LocalIndication
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.dp

@Composable
internal fun PicaChoiceRow(labels: List<String>, selected: Int, onSelect: (Int) -> Unit, modifier: Modifier = Modifier, expand: Boolean = false) {
    Row(modifier.selectableGroup(), horizontalArrangement = Arrangement.spacedBy(2.dp)) {
        labels.forEachIndexed { index, label ->
            val active = index == selected
            val interaction = remember { MutableInteractionSource() }
            val pressed by interaction.collectIsPressedAsState()
            val radius by animateDpAsState(
                when { pressed -> 8.dp; active -> 12.dp; else -> 24.dp },
                MaterialTheme.motionScheme.fastSpatialSpec(),
            )
            val colors = MaterialTheme.colorScheme
            val fill by animateColorAsState(if (active) colors.secondaryContainer else colors.surfaceContainerHighest, MaterialTheme.motionScheme.fastEffectsSpec())
            val ink by animateColorAsState(if (active) colors.onSecondaryContainer else colors.onSurfaceVariant, MaterialTheme.motionScheme.fastEffectsSpec())
            Surface(
                modifier = if (expand) Modifier.weight(1f) else Modifier,
                shape = RoundedCornerShape(radius),
                color = fill,
                contentColor = ink,
            ) {
                Box(Modifier.selectable(active, interactionSource = interaction, indication = LocalIndication.current, role = Role.Tab) { onSelect(index) }.heightIn(min = 48.dp).padding(horizontal = 12.dp), contentAlignment = Alignment.Center) {
                    Text(label, style = MaterialTheme.typography.labelLarge)
                }
            }
        }
    }
}
