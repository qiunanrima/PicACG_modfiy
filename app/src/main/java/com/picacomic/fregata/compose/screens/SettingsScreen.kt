package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.PreviewParameter
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.compose.components.PicaConfirmDialog
import com.picacomic.fregata.compose.components.PicaSingleChoiceDialog
import com.picacomic.fregata.compose.components.PicaValueListItem
import com.picacomic.fregata.compose.components.PicaSwitchListItem
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow

enum class SettingsDialog {
    ScreenOrientation,
    ScrollDirection,
    AutoPaging,
    ImageQuality,
    ThemeColor,
    LauncherIcon,
    ThemeColorUnsupported,
}

data class SettingsState(
    val apkVersionTitle: String = "",
    val screenOrientationIndex: Int = 0,
    val screenOrientationValue: String = "",
    val scrollDirectionIndex: Int = 0,
    val scrollDirectionValue: String = "",
    val autoPagingIntervalMs: Int = 1000,
    val autoPagingValue: String = "",
    val autoPagingDraftIntervalMs: Int = 1000,
    val imageQualityIndex: Int = 0,
    val imageQualityValue: String = "",
    val themeColorIndex: Int = 0,
    val themeColorValue: String = "",
    val launcherIconIndex: Int = 0,
    val launcherIconValue: String = "",
    val cacheTitleValue: String = "",
    val pinTitleValue: String = "",
    val pinValue: String = "",
    val nightModeEnabled: Boolean = false,
    val volumePagingEnabled: Boolean = false,
    val testingEnabled: Boolean = false,
    val performanceEnabled: Boolean = false,
    val activeDialog: SettingsDialog? = null,
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    state: SettingsState,
    onScreenOrientation: () -> Unit,
    onScrollDirection: () -> Unit,
    onAutoPaging: () -> Unit,
    onImageQuality: () -> Unit,
    onThemeColor: () -> Unit,
    onLauncherIcon: () -> Unit,
    onContinueDownload: () -> Unit,
    onApkVersion: () -> Unit,
    onCache: () -> Unit,
    onFaq: () -> Unit,
    onPin: () -> Unit,
    onPassword: () -> Unit,
    onLogout: () -> Unit,
    onNightModeChanged: (Boolean) -> Unit,
    onVolumePagingChanged: (Boolean) -> Unit,
    onTestingChanged: (Boolean) -> Unit,
    onPerformanceChanged: (Boolean) -> Unit,
    onDialogDismiss: () -> Unit,
    onScreenOrientationSelected: (Int) -> Unit,
    onScrollDirectionSelected: (Int) -> Unit,
    onImageQualitySelected: (Int) -> Unit,
    onThemeColorSelected: (Int) -> Unit,
    onLauncherIconSelected: (Int) -> Unit,
    onAutoPagingDraftChanged: (Int) -> Unit,
    onAutoPagingConfirmed: () -> Unit,
) {
    val screenOrientationOptions = stringArrayResource(R.array.setting_options_screen_orientations)
    val scrollDirectionOptions = stringArrayResource(R.array.setting_options_scroll_directions)
    val imageQualityOptions = stringArrayResource(R.array.setting_options_image_qualities)
    val themeColorOptions = stringArrayResource(R.array.setting_theme_colors)
    val launcherIconOptions = listOf("默认图标", "Miracle Neon")

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                CenterAlignedTopAppBar(
                    title = {
                        Text(
                            text = stringResource(R.string.title_setting),
                            style = MaterialTheme.typography.titleLarge,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ),
                    scrollBehavior = scrollBehavior
                )
            },
            containerColor = MaterialTheme.colorScheme.background
        ) { innerPadding ->
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(innerPadding)
                    .padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                SettingsSection(title = stringResource(R.string.setting_comic_viewer_title)) {
                    PicaValueListItem(
                        label = stringResource(R.string.setting_comic_viewer_screen_orientation),
                        value = state.screenOrientationValue,
                        onClick = onScreenOrientation
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.setting_comic_viewer_scroll_direction),
                        value = state.scrollDirectionValue,
                        onClick = onScrollDirection
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.setting_comic_viewer_auto_paging_interval),
                        value = state.autoPagingValue,
                        onClick = onAutoPaging
                    )
                    PicaSwitchListItem(
                        label = stringResource(R.string.setting_comic_viewer_night_mode),
                        checked = state.nightModeEnabled,
                        onCheckedChange = onNightModeChanged
                    )
                    PicaSwitchListItem(
                        label = stringResource(R.string.setting_comic_viewer_volume_paging_control),
                        checked = state.volumePagingEnabled,
                        onCheckedChange = onVolumePagingChanged
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.setting_comic_viewer_image_quality),
                        value = state.imageQualityValue,
                        onClick = onImageQuality,
                        showDivider = false
                    )
                }

                SettingsSection(title = stringResource(R.string.setting_testing_title)) {
                    PicaSwitchListItem(
                        label = stringResource(R.string.setting_comic_viewer_testing_version),
                        checked = state.testingEnabled,
                        onCheckedChange = onTestingChanged,
                        showDivider = false
                    )
                }

                SettingsSection(title = stringResource(R.string.setting_other_title)) {
                    PicaSwitchListItem(
                        label = stringResource(R.string.setting_performance_enhancement),
                        checked = state.performanceEnabled,
                        onCheckedChange = onPerformanceChanged
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.setting_theme_color),
                        value = state.themeColorValue,
                        onClick = onThemeColor
                    )
                    PicaValueListItem(
                        label = "应用图标",
                        value = state.launcherIconValue,
                        onClick = onLauncherIcon
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.alert_continue_download_comic_title),
                        value = stringResource(R.string.setting_chatroom_open),
                        onClick = onContinueDownload
                    )
                    PicaValueListItem(
                        label = state.apkVersionTitle,
                        value = stringResource(R.string.title_apk_version),
                        onClick = onApkVersion
                    )
                    PicaValueListItem(
                        label = state.cacheTitleValue,
                        value = stringResource(R.string.setting_cache),
                        onClick = onCache
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.setting_faq_title),
                        value = stringResource(R.string.setting_faq),
                        onClick = onFaq
                    )
                    PicaValueListItem(
                        label = state.pinTitleValue,
                        value = state.pinValue,
                        onClick = onPin
                    )
                    PicaValueListItem(
                        label = stringResource(R.string.setting_password_title),
                        value = stringResource(R.string.setting_password),
                        onClick = onPassword,
                        showDivider = false
                    )
                }

                Button(
                    onClick = onLogout,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 4.dp, bottom = 20.dp)
                ) {
                    Text(text = stringResource(R.string.setting_logout))
                }
            }
        }

        when (state.activeDialog) {
            SettingsDialog.ScreenOrientation -> PicaSingleChoiceDialog(
                title = stringResource(R.string.setting_comic_viewer_screen_orientation),
                options = screenOrientationOptions.toList(),
                selectedIndex = state.screenOrientationIndex,
                onSelect = onScreenOrientationSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ScrollDirection -> PicaSingleChoiceDialog(
                title = stringResource(R.string.setting_comic_viewer_scroll_direction),
                options = scrollDirectionOptions.toList(),
                selectedIndex = state.scrollDirectionIndex,
                onSelect = onScrollDirectionSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ImageQuality -> PicaSingleChoiceDialog(
                title = stringResource(R.string.setting_comic_viewer_image_quality),
                options = imageQualityOptions.toList(),
                selectedIndex = state.imageQualityIndex,
                onSelect = onImageQualitySelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ThemeColor -> PicaSingleChoiceDialog(
                title = stringResource(R.string.setting_theme_color),
                options = themeColorOptions.toList(),
                selectedIndex = state.themeColorIndex,
                onSelect = onThemeColorSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.LauncherIcon -> PicaSingleChoiceDialog(
                title = "应用图标",
                options = launcherIconOptions,
                selectedIndex = state.launcherIconIndex,
                onSelect = onLauncherIconSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ThemeColorUnsupported -> PicaConfirmDialog(
                title = stringResource(R.string.alert_version_not_supported_title),
                body = stringResource(R.string.alert_version_not_supported),
                onConfirm = onDialogDismiss,
                onDismiss = onDialogDismiss,
                dismissText = null,
            )

            SettingsDialog.AutoPaging -> AutoPagingDialog(
                intervalMs = state.autoPagingDraftIntervalMs,
                onIntervalChanged = onAutoPagingDraftChanged,
                onConfirm = onAutoPagingConfirmed,
                onDismiss = onDialogDismiss,
            )

            null -> Unit
        }
    }
}

@Composable
private fun AutoPagingDialog(
    intervalMs: Int,
    onIntervalChanged: (Int) -> Unit,
    onConfirm: () -> Unit,
    onDismiss: () -> Unit,
) {
    val progress = ((intervalMs - 1000) / 100f).coerceIn(0f, 100f)
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(text = stringResource(R.string.setting_comic_viewer_auto_paging_interval)) },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Text(
                    text = stringResource(R.string.comic_viewer_setting_panel_auto_paging) +
                        " 【 " +
                        String.format("%.1f", intervalMs / 1000.0f) +
                        stringResource(R.string.second) +
                        " 】"
                )
                Slider(
                    value = progress,
                    onValueChange = { value ->
                        onIntervalChanged(value.toInt().coerceIn(0, 100))
                    },
                    valueRange = 0f..100f,
                    steps = 99
                )
            }
        },
        confirmButton = {
            TextButton(onClick = onConfirm) {
                Text(text = stringResource(R.string.ok))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(text = stringResource(R.string.cancel))
            }
        }
    )
}

@Composable
private fun SettingsSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    Text(
        text = title,
        style = MaterialTheme.typography.titleMedium,
        fontWeight = FontWeight.SemiBold,
        modifier = Modifier.padding(horizontal = 4.dp)
    )
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ),
    ) {
        Column(modifier = Modifier.fillMaxWidth(), content = content)
    }
}

@Preview(showBackground = true)
@Composable
private fun SettingsScreenPreview(
    @PreviewParameter(SettingsPreviewProvider::class) state: SettingsState
) {
    SettingsScreen(
        state = state,
        onScreenOrientation = {},
        onScrollDirection = {},
        onAutoPaging = {},
        onImageQuality = {},
        onThemeColor = {},
        onLauncherIcon = {},
        onContinueDownload = {},
        onApkVersion = {},
        onCache = {},
        onFaq = {},
        onPin = {},
        onPassword = {},
        onLogout = {},
        onNightModeChanged = {},
        onVolumePagingChanged = {},
        onTestingChanged = {},
        onPerformanceChanged = {},
        onDialogDismiss = {},
        onScreenOrientationSelected = {},
        onScrollDirectionSelected = {},
        onImageQualitySelected = {},
        onThemeColorSelected = {},
        onLauncherIconSelected = {},
        onAutoPagingDraftChanged = {},
        onAutoPagingConfirmed = {},
    )
}
