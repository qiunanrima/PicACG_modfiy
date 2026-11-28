package com.picacomic.fregata.compose.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.ui.Alignment
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.safeDrawing
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
    val colors = MaterialTheme.colorScheme
    if (vertical) {
        WideNavigationRail(
            modifier = Modifier.fillMaxHeight(),
            windowInsets = WindowInsets.safeDrawing.only(
                WindowInsetsSides.Start + WindowInsetsSides.Vertical,
            ),
        ) {
            Column(
                modifier = Modifier.verticalScroll(rememberScrollState()),
                horizontalAlignment = Alignment.CenterHorizontally,
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
                            selectedIndicatorColor = colors.secondaryContainer,
                            selectedIconColor = colors.onSecondaryContainer,
                        ),
                    )
                }
            }
        }
        return
    }

    ShortNavigationBar {
        items.forEach { screen ->
            ShortNavigationBarItem(
                colors = ShortNavigationBarItemDefaults.colors(
                    selectedIndicatorColor = colors.secondaryContainer,
                    selectedIconColor = colors.onSecondaryContainer,
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
    val icon = if (currentRoute == screen.route) {
        screen.selectedIcon ?: screen.unselectedIcon
    } else {
        screen.unselectedIcon ?: screen.selectedIcon
    } ?: return
    Icon(
        imageVector = icon,
        contentDescription = null,
    )
}
