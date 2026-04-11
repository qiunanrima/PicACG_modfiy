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
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

data class SettingsState(
    val apkVersionTitle: String = "",
    val screenOrientationValue: String = "",
    val scrollDirectionValue: String = "",
    val autoPagingValue: String = "",
    val imageQualityValue: String = "",
    val themeColorValue: String = "",
    val cacheTitleValue: String = "",
    val pinTitleValue: String = "",
    val pinValue: String = "",
    val nightModeEnabled: Boolean = false,
    val volumePagingEnabled: Boolean = false,
    val testingEnabled: Boolean = false,
    val performanceEnabled: Boolean = false,
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
) {
    PicaComposeTheme {
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
