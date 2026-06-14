package com.picacomic.fregata.compose.components

import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Icon
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarDefaults
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationRail
import androidx.compose.material3.NavigationRailItem
import androidx.compose.material3.ShortNavigationBar
import androidx.compose.material3.ShortNavigationBarItem
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.compose.isPicaExpressiveTheme
import com.picacomic.fregata.compose.navigation.Screen

@Composable
fun PicaNavigationBar(
    items: List<Screen>,
    currentRoute: String?,
    onItemClick: (Screen) -> Unit,
    vertical: Boolean = false,
) {
    if (vertical) {
        NavigationRail(
            modifier = Modifier
                .fillMaxHeight()
                .width(72.dp),
            containerColor = NavigationBarDefaults.containerColor,
        ) {
            items.forEach { screen ->
                NavigationRailItem(
                    modifier = Modifier
                        .weight(1f)
                        .padding(vertical = 4.dp),
                    selected = currentRoute == screen.route,
                    onClick = { onItemClick(screen) },
                    icon = { PicaNavigationIcon(screen, currentRoute) },
                    label = { Text(stringResource(id = screen.titleRes)) },
                    alwaysShowLabel = false,
                )
            }
        }
        return
    }

    if (isPicaExpressiveTheme()) {
        ShortNavigationBar {
            items.forEach { screen ->
                ShortNavigationBarItem(
                    selected = currentRoute == screen.route,
                    onClick = { onItemClick(screen) },
                    icon = { PicaNavigationIcon(screen, currentRoute) },
                    label = null,
                )
            }
        }
    } else {
        NavigationBar {
            items.forEach { screen ->
                NavigationBarItem(
                    selected = currentRoute == screen.route,
                    onClick = { onItemClick(screen) },
                    icon = { PicaNavigationIcon(screen, currentRoute) },
                    label = { Text(stringResource(id = screen.titleRes)) },
                    alwaysShowLabel = false,
                )
            }
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
