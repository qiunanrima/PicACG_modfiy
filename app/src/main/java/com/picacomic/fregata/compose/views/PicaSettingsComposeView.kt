package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
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
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaSettingsComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private var apkVersionTitleState by mutableStateOf("")
    private var screenOrientationValueState by mutableStateOf("")
    private var scrollDirectionValueState by mutableStateOf("")
    private var autoPagingValueState by mutableStateOf("")
    private var imageQualityValueState by mutableStateOf("")
    private var themeColorValueState by mutableStateOf("")
    private var cacheTitleValueState by mutableStateOf("")
    private var pinTitleValueState by mutableStateOf("")
    private var pinValueState by mutableStateOf("")

    private var nightModeEnabledState by mutableStateOf(false)
    private var volumePagingEnabledState by mutableStateOf(false)
    private var testingEnabledState by mutableStateOf(false)
    private var performanceEnabledState by mutableStateOf(false)

    private var screenOrientationAction: Runnable? by mutableStateOf(null)
    private var scrollDirectionAction: Runnable? by mutableStateOf(null)
    private var autoPagingAction: Runnable? by mutableStateOf(null)
    private var imageQualityAction: Runnable? by mutableStateOf(null)
    private var themeColorAction: Runnable? by mutableStateOf(null)
    private var continueDownloadAction: Runnable? by mutableStateOf(null)
    private var apkVersionAction: Runnable? by mutableStateOf(null)
    private var cacheAction: Runnable? by mutableStateOf(null)
    private var faqAction: Runnable? by mutableStateOf(null)
    private var pinAction: Runnable? by mutableStateOf(null)
    private var passwordAction: Runnable? by mutableStateOf(null)
    private var logoutAction: Runnable? by mutableStateOf(null)

    private var nightModeChanged: OnBooleanChangedListener? by mutableStateOf(null)
    private var volumePagingChanged: OnBooleanChangedListener? by mutableStateOf(null)
    private var testingChanged: OnBooleanChangedListener? by mutableStateOf(null)
    private var performanceChanged: OnBooleanChangedListener? by mutableStateOf(null)

    fun setApkVersionTitle(value: String) {
        apkVersionTitleState = value
    }

    fun setScreenOrientationValue(value: String) {
        screenOrientationValueState = value
    }

    fun setScrollDirectionValue(value: String) {
        scrollDirectionValueState = value
    }

    fun setAutoPagingValue(value: String) {
        autoPagingValueState = value
    }

    fun setImageQualityValue(value: String) {
        imageQualityValueState = value
    }

    fun setThemeColorValue(value: String) {
        themeColorValueState = value
    }

    fun setCacheTitleValue(value: String) {
        cacheTitleValueState = value
    }

    fun setPinTitleValue(value: String) {
        pinTitleValueState = value
    }

    fun setPinValue(value: String) {
        pinValueState = value
    }

    fun setNightModeEnabled(value: Boolean) {
        nightModeEnabledState = value
    }

    fun setVolumePagingEnabled(value: Boolean) {
        volumePagingEnabledState = value
    }

    fun setTestingEnabled(value: Boolean) {
        testingEnabledState = value
    }

    fun setPerformanceEnabled(value: Boolean) {
        performanceEnabledState = value
    }

    fun setOnScreenOrientationAction(value: Runnable?) {
        screenOrientationAction = value
    }

    fun setOnScrollDirectionAction(value: Runnable?) {
        scrollDirectionAction = value
    }

    fun setOnAutoPagingAction(value: Runnable?) {
        autoPagingAction = value
    }

    fun setOnImageQualityAction(value: Runnable?) {
        imageQualityAction = value
    }

    fun setOnThemeColorAction(value: Runnable?) {
        themeColorAction = value
    }

    fun setOnContinueDownloadAction(value: Runnable?) {
        continueDownloadAction = value
    }

    fun setOnApkVersionAction(value: Runnable?) {
        apkVersionAction = value
    }

    fun setOnCacheAction(value: Runnable?) {
        cacheAction = value
    }

    fun setOnFaqAction(value: Runnable?) {
        faqAction = value
    }

    fun setOnPinAction(value: Runnable?) {
        pinAction = value
    }

    fun setOnPasswordAction(value: Runnable?) {
        passwordAction = value
    }

    fun setOnLogoutAction(value: Runnable?) {
        logoutAction = value
    }

    fun setOnNightModeChanged(value: OnBooleanChangedListener?) {
        nightModeChanged = value
    }

    fun setOnVolumePagingChanged(value: OnBooleanChangedListener?) {
        volumePagingChanged = value
    }

    fun setOnTestingChanged(value: OnBooleanChangedListener?) {
        testingChanged = value
    }

    fun setOnPerformanceChanged(value: OnBooleanChangedListener?) {
        performanceChanged = value
    }

    @Preview
    @Composable
    override fun Content() {
        PicaComposeTheme {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                SettingsSection(
                    title = context.getString(R.string.setting_comic_viewer_title)
                ) {
                    SettingsValueRow(
                        label = context.getString(R.string.setting_comic_viewer_screen_orientation),
                        value = screenOrientationValueState,
                        onClick = { screenOrientationAction?.run() }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.setting_comic_viewer_scroll_direction),
                        value = scrollDirectionValueState,
                        onClick = { scrollDirectionAction?.run() }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.setting_comic_viewer_auto_paging_interval),
                        value = autoPagingValueState,
                        onClick = { autoPagingAction?.run() }
                    )
                    SettingsSwitchRow(
                        label = context.getString(R.string.setting_comic_viewer_night_mode),
                        checked = nightModeEnabledState,
                        onCheckedChange = {
                            nightModeEnabledState = it
                            nightModeChanged?.onChanged(it)
                        }
                    )
                    SettingsSwitchRow(
                        label = context.getString(R.string.setting_comic_viewer_volume_paging_control),
                        checked = volumePagingEnabledState,
                        onCheckedChange = {
                            volumePagingEnabledState = it
                            volumePagingChanged?.onChanged(it)
                        }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.setting_comic_viewer_image_quality),
                        value = imageQualityValueState,
                        onClick = { imageQualityAction?.run() }
                    )
                }

                SettingsSection(
                    title = context.getString(R.string.setting_testing_title)
                ) {
                    SettingsSwitchRow(
                        label = context.getString(R.string.setting_comic_viewer_testing_version),
                        checked = testingEnabledState,
                        onCheckedChange = {
                            testingEnabledState = it
                            testingChanged?.onChanged(it)
                        }
                    )
                }

                SettingsSection(
                    title = context.getString(R.string.setting_other_title)
                ) {
                    SettingsSwitchRow(
                        label = context.getString(R.string.setting_performance_enhancement),
                        checked = performanceEnabledState,
                        onCheckedChange = {
                            performanceEnabledState = it
                            performanceChanged?.onChanged(it)
                        }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.setting_theme_color),
                        value = themeColorValueState,
                        onClick = { themeColorAction?.run() }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.alert_continue_download_comic_title),
                        value = context.getString(R.string.setting_chatroom_open),
                        onClick = { continueDownloadAction?.run() }
                    )
                    SettingsValueRow(
                        label = apkVersionTitleState,
                        value = context.getString(R.string.title_apk_version),
                        onClick = { apkVersionAction?.run() }
                    )
                    SettingsValueRow(
                        label = cacheTitleValueState,
                        value = context.getString(R.string.setting_cache),
                        onClick = { cacheAction?.run() }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.setting_faq_title),
                        value = context.getString(R.string.setting_faq),
                        onClick = { faqAction?.run() }
                    )
                    SettingsValueRow(
                        label = pinTitleValueState,
                        value = pinValueState,
                        onClick = { pinAction?.run() }
                    )
                    SettingsValueRow(
                        label = context.getString(R.string.setting_password_title),
                        value = context.getString(R.string.setting_password),
                        onClick = { passwordAction?.run() }
                    )
                }

                Button(
                    onClick = { logoutAction?.run() },
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 4.dp, bottom = 20.dp)
                ) {
                    Text(text = context.getString(R.string.setting_logout))
                }
            }
        }
    }

    @Preview
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

    @Preview
    @Composable
    private fun SettingsValueRow(
        label: String,
        value: String,
        onClick: () -> Unit
    ) {
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

    @Preview
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
            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange
            )
        }
        HorizontalDivider()
    }
}
