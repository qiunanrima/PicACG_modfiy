package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.clickable
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
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RadioButton
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

enum class SettingsDialog {
    ScreenOrientation,
    ScrollDirection,
    AutoPaging,
    ImageQuality,
    ThemeColor,
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
    val cacheTitleValue: String = "",
    val pinTitleValue: String = "",
    val pinValue: String = "",
    val nightModeEnabled: Boolean = false,
    val volumePagingEnabled: Boolean = false,
    val testingEnabled: Boolean = false,
    val performanceEnabled: Boolean = false,
    val activeDialog: SettingsDialog? = null,
)

@Composable
fun SettingsScreen(
    state: SettingsState,
    onScreenOrientation: () -> Unit,
    onScrollDirection: () -> Unit,
    onAutoPaging: () -> Unit,
    onImageQuality: () -> Unit,
    onThemeColor: () -> Unit,
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
    onAutoPagingDraftChanged: (Int) -> Unit,
    onAutoPagingConfirmed: () -> Unit,
) {
    val screenOrientationOptions = stringArrayResource(R.array.setting_options_screen_orientations)
    val scrollDirectionOptions = stringArrayResource(R.array.setting_options_scroll_directions)
    val imageQualityOptions = stringArrayResource(R.array.setting_options_image_qualities)
    val themeColorOptions = stringArrayResource(R.array.setting_theme_colors)

    PicaComposeTheme {
        Column(
            modifier = Modifier.fillMaxSize()
        ) {
            Surface(shadowElevation = 2.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 20.dp, vertical = 14.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = stringResource(R.string.title_setting),
                        style = MaterialTheme.typography.titleLarge
                    )
                }
            }
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                SettingsSection(title = stringResource(R.string.setting_comic_viewer_title)) {
                    SettingsValueRow(
                        label = stringResource(R.string.setting_comic_viewer_screen_orientation),
                        value = state.screenOrientationValue,
                        onClick = onScreenOrientation
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.setting_comic_viewer_scroll_direction),
                        value = state.scrollDirectionValue,
                        onClick = onScrollDirection
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.setting_comic_viewer_auto_paging_interval),
                        value = state.autoPagingValue,
                        onClick = onAutoPaging
                    )
                    SettingsSwitchRow(
                        label = stringResource(R.string.setting_comic_viewer_night_mode),
                        checked = state.nightModeEnabled,
                        onCheckedChange = onNightModeChanged
                    )
                    SettingsSwitchRow(
                        label = stringResource(R.string.setting_comic_viewer_volume_paging_control),
                        checked = state.volumePagingEnabled,
                        onCheckedChange = onVolumePagingChanged
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.setting_comic_viewer_image_quality),
                        value = state.imageQualityValue,
                        onClick = onImageQuality
                    )
                }

                SettingsSection(title = stringResource(R.string.setting_testing_title)) {
                    SettingsSwitchRow(
                        label = stringResource(R.string.setting_comic_viewer_testing_version),
                        checked = state.testingEnabled,
                        onCheckedChange = onTestingChanged
                    )
                }

                SettingsSection(title = stringResource(R.string.setting_other_title)) {
                    SettingsSwitchRow(
                        label = stringResource(R.string.setting_performance_enhancement),
                        checked = state.performanceEnabled,
                        onCheckedChange = onPerformanceChanged
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.setting_theme_color),
                        value = state.themeColorValue,
                        onClick = onThemeColor
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.alert_continue_download_comic_title),
                        value = stringResource(R.string.setting_chatroom_open),
                        onClick = onContinueDownload
                    )
                    SettingsValueRow(
                        label = state.apkVersionTitle,
                        value = stringResource(R.string.title_apk_version),
                        onClick = onApkVersion
                    )
                    SettingsValueRow(
                        label = state.cacheTitleValue,
                        value = stringResource(R.string.setting_cache),
                        onClick = onCache
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.setting_faq_title),
                        value = stringResource(R.string.setting_faq),
                        onClick = onFaq
                    )
                    SettingsValueRow(
                        label = state.pinTitleValue,
                        value = state.pinValue,
                        onClick = onPin
                    )
                    SettingsValueRow(
                        label = stringResource(R.string.setting_password_title),
                        value = stringResource(R.string.setting_password),
                        onClick = onPassword
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
            SettingsDialog.ScreenOrientation -> SettingsSingleChoiceDialog(
                title = stringResource(R.string.setting_comic_viewer_screen_orientation),
                options = screenOrientationOptions.toList(),
                selectedIndex = state.screenOrientationIndex,
                onSelect = onScreenOrientationSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ScrollDirection -> SettingsSingleChoiceDialog(
                title = stringResource(R.string.setting_comic_viewer_scroll_direction),
                options = scrollDirectionOptions.toList(),
                selectedIndex = state.scrollDirectionIndex,
                onSelect = onScrollDirectionSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ImageQuality -> SettingsSingleChoiceDialog(
                title = stringResource(R.string.setting_comic_viewer_image_quality),
                options = imageQualityOptions.toList(),
                selectedIndex = state.imageQualityIndex,
                onSelect = onImageQualitySelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ThemeColor -> SettingsSingleChoiceDialog(
                title = stringResource(R.string.setting_theme_color),
                options = themeColorOptions.toList(),
                selectedIndex = state.themeColorIndex,
                onSelect = onThemeColorSelected,
                onDismiss = onDialogDismiss,
            )

            SettingsDialog.ThemeColorUnsupported -> AlertDialog(
                onDismissRequest = onDialogDismiss,
                title = { Text(text = stringResource(R.string.alert_version_not_supported_title)) },
                text = { Text(text = stringResource(R.string.alert_version_not_supported)) },
                confirmButton = {
                    TextButton(onClick = onDialogDismiss) {
                        Text(text = stringResource(R.string.ok))
                    }
                },
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
private fun SettingsSingleChoiceDialog(
    title: String,
    options: List<String>,
    selectedIndex: Int,
    onSelect: (Int) -> Unit,
    onDismiss: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(text = title) },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                options.forEachIndexed { index, option ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { onSelect(index) },
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        RadioButton(
                            selected = selectedIndex == index,
                            onClick = { onSelect(index) }
                        )
                        Text(text = option)
                    }
                }
            }
        },
        confirmButton = {},
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text(text = stringResource(R.string.cancel))
            }
        }
    )
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
    content:@Composable ColumnScope.() -> Unit
) {
    Text(
        text = title,
        style = MaterialTheme.typography.titleMedium,
        fontWeight = FontWeight.SemiBold,
        modifier = Modifier.padding(horizontal = 4.dp)
    )
    Card(modifier = Modifier.fillMaxWidth()) {
        Column(modifier = Modifier.fillMaxWidth(), content = content)
    }
}

@Composable
private fun SettingsValueRow(label: String, value: String, onClick: () -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(horizontal = 16.dp, vertical = 14.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyLarge,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(1f)
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.primary
        )
    }
    HorizontalDivider()
}

@Composable
private fun SettingsSwitchRow(
    label: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 10.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodyLarge,
            fontWeight = FontWeight.Medium,
            modifier = Modifier.weight(1f)
        )
        Switch(checked = checked, onCheckedChange = onCheckedChange)
    }
    HorizontalDivider()
}

@Preview(showBackground = true)
@Composable
private fun SettingsScreenPreview() {
    SettingsScreen(
        state = SettingsState(
            apkVersionTitle = "1.0.0",
            screenOrientationIndex = 0,
            screenOrientationValue = "Portrait",
            scrollDirectionIndex = 0,
            scrollDirectionValue = "Top to Bottom",
            autoPagingIntervalMs = 1000,
            autoPagingValue = "1000ms",
            autoPagingDraftIntervalMs = 1000,
            imageQualityIndex = 3,
            imageQualityValue = "High",
            themeColorIndex = 0,
            themeColorValue = "Default",
            cacheTitleValue = "20MB",
            pinTitleValue = "PIN",
            pinValue = "Off",
            nightModeEnabled = false,
            volumePagingEnabled = true,
            testingEnabled = false,
            performanceEnabled = true
        ),
        onScreenOrientation = {},
        onScrollDirection = {},
        onAutoPaging = {},
        onImageQuality = {},
        onThemeColor = {},
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
        onAutoPagingDraftChanged = {},
        onAutoPagingConfirmed = {},
    )
}
