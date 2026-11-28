package com.picacomic.fregata.compose.components

import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawingPadding
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.WideNavigationRailItemDefaults
import androidx.compose.material3.ShortNavigationBarItemDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.WideNavigationRail
import androidx.compose.material3.WideNavigationRailItem
import androidx.compose.material3.ShortNavigationBar
import androidx.compose.material3.ShortNavigationBarItem
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.navigation.Screen

@Composable
fun PicaNavigationBar(
    items: List<Screen>,
    currentRoute: String?,
    onItemClick: (Screen) -> Unit,
    vertical: Boolean = false,
) {
    if (vertical) {
        WideNavigationRail(
            modifier = Modifier.fillMaxHeight().safeDrawingPadding(),
            windowInsets = WindowInsets(0, 0, 0, 0),
        ) {
            items.forEach { screen ->
                WideNavigationRailItem(
                    modifier = Modifier.padding(vertical = 4.dp),
                    selected = currentRoute == screen.route,
                    onClick = { onItemClick(screen) },
                    icon = { PicaNavigationIcon(screen, currentRoute) },
                    label = { Text(stringResource(id = screen.titleRes)) },
                    railExpanded = false,
                    colors = WideNavigationRailItemDefaults.colors(
                        selectedIndicatorColor = MaterialTheme.colorScheme.secondaryContainer,
                        selectedIconColor = MaterialTheme.colorScheme.onSecondaryContainer,
                    ),
                )
            }
        }
        return
    }

    ShortNavigationBar {
        items.forEach { screen ->
            ShortNavigationBarItem(
                colors = ShortNavigationBarItemDefaults.colors(
                    selectedIndicatorColor = MaterialTheme.colorScheme.secondaryContainer,
                    selectedIconColor = MaterialTheme.colorScheme.onSecondaryContainer,
                ),
                selected = currentRoute == screen.route,
                onClick = { onItemClick(screen) },
                icon = { PicaNavigationIcon(screen, currentRoute) },
                label = { Text(stringResource(id = screen.titleRes)) },
            )
        }
    }
}

@Composable
private fun PicaNavigationIcon(
    screen: Screen,
    currentRoute: String?,
) {
    Icon(
        imageVector = if (currentRoute == screen.route) {
            screen.selectedIcon!!
        } else {
            screen.unselectedIcon!!
        },
        contentDescription = stringResource(id = screen.titleRes),
    )
}
