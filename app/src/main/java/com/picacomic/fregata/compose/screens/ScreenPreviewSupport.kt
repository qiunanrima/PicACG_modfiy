package com.picacomic.fregata.compose.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Card
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.PreviewParameterProvider
import androidx.compose.ui.unit.dp
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.objects.ThumbnailObject
import com.picacomic.fregata.objects.UserProfileObject

internal data class SplashPreviewModel(
    val isLoading: Boolean,
    val showError: Boolean,
    val showOptions: Boolean,
    val sslVerificationDisabled: Boolean,
)

internal class SplashPreviewProvider : PreviewParameterProvider<SplashPreviewModel> {
    override val values = sequenceOf(
        SplashPreviewModel(
            isLoading = true,
            showError = false,
            showOptions = false,
            sslVerificationDisabled = false
        ),
        SplashPreviewModel(
            isLoading = false,
            showError = true,
            showOptions = true,
            sslVerificationDisabled = true
        )
    )
}

internal data class LoginPreviewModel(
    val email: String,
    val password: String,
    val isLoading: Boolean,
    val showResendActivation: Boolean,
)

internal class LoginPreviewProvider : PreviewParameterProvider<LoginPreviewModel> {
    override val values = sequenceOf(
        LoginPreviewModel(
            email = "",
            password = "",
            isLoading = false,
            showResendActivation = false
        ),
        LoginPreviewModel(
            email = "knight@picacomic.com",
            password = "12345678",
            isLoading = true,
            showResendActivation = true
        )
    )
}

internal class SettingsPreviewProvider : PreviewParameterProvider<SettingsState> {
    override val values = sequenceOf(
        SettingsState(
            apkVersionTitle = "2.2.1.3.3.4",
            screenOrientationIndex = 0,
            screenOrientationValue = "直向",
            scrollDirectionIndex = 0,
            scrollDirectionValue = "由上到下",
            autoPagingIntervalMs = 1200,
            autoPagingValue = "1.2秒",
            autoPagingDraftIntervalMs = 1200,
            imageQualityIndex = 3,
            imageQualityValue = "高",
            themeColorIndex = 2,
            themeColorValue = "Miracle Neon",
            cacheTitleValue = "42MB",
            pinTitleValue = "屏蔽密码",
            pinValue = "取消／更改密码",
            nightModeEnabled = false,
            volumePagingEnabled = true,
            testingEnabled = false,
            performanceEnabled = true,
            activeDialog = null,
        ),
        SettingsState(
            apkVersionTitle = "2.2.1.3.3.4",
            screenOrientationIndex = 1,
            screenOrientationValue = "横向",
            scrollDirectionIndex = 1,
            scrollDirectionValue = "由左到右",
            autoPagingIntervalMs = 1800,
            autoPagingValue = "1.8秒",
            autoPagingDraftIntervalMs = 1800,
            imageQualityIndex = 1,
            imageQualityValue = "中",
            themeColorIndex = 1,
            themeColorValue = "迷红黑",
            cacheTitleValue = "42MB",
            pinTitleValue = "屏蔽密码 (使用中)",
            pinValue = "取消／更改密码",
            nightModeEnabled = true,
            volumePagingEnabled = true,
            testingEnabled = true,
            performanceEnabled = false,
            activeDialog = SettingsDialog.ThemeColor,
        )
    )
}

@Composable
internal inline fun <reified VM : ViewModel> previewAwareViewModel(
    provided: VM? = null,
): VM? {
    val inPreview = LocalInspectionMode.current
    return if (inPreview) {
        provided
    } else {
        provided ?: viewModel<VM>()
    }
}

@Composable
internal fun PreviewListPanel(
    title: String,
    items: List<String>,
    modifier: Modifier = Modifier,
) {
    Card(modifier = modifier.fillMaxWidth()) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            items.forEachIndexed { index, item ->
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = item,
                        style = MaterialTheme.typography.bodyLarge
                    )
                    if (index % 2 == 0) {
                        Box(
                            modifier = Modifier
                                .width(56.dp)
                                .height(12.dp)
                                .background(
                                    color = MaterialTheme.colorScheme.surfaceVariant,
                                    shape = RoundedCornerShape(999.dp)
                                )
                        )
                    }
                }
            }
        }
    }
}

@Composable
internal fun PreviewGridPanel(
    title: String,
    items: List<String>,
    columns: Int,
    modifier: Modifier = Modifier,
) {
    Card(modifier = modifier.fillMaxWidth()) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            items.chunked(columns).forEach { rowItems ->
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    rowItems.forEach { item ->
                        Card(
                            modifier = Modifier
                                .weight(1f)
                                .height(88.dp)
                        ) {
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(88.dp)
                                    .background(MaterialTheme.colorScheme.surfaceVariant),
                                contentAlignment = Alignment.Center
                            ) {
                                Text(
                                    text = item,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }
                        }
                    }
                    repeat(columns - rowItems.size) {
                        Box(modifier = Modifier.weight(1f))
                    }
                }
            }
        }
    }
}

@Composable
internal fun PreviewChatPanel(
    title: String,
    messages: List<Pair<String, Boolean>>,
    modifier: Modifier = Modifier,
) {
    Card(modifier = modifier.fillMaxWidth()) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            messages.forEach { (text, isMine) ->
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = if (isMine) Arrangement.End else Arrangement.Start
                ) {
                    Box(
                        modifier = Modifier
                            .background(
                                color = if (isMine) {
                                    MaterialTheme.colorScheme.primaryContainer
                                } else {
                                    MaterialTheme.colorScheme.surfaceVariant
                                },
                                shape = RoundedCornerShape(16.dp)
                            )
                            .padding(horizontal = 12.dp, vertical = 8.dp)
                    ) {
                        Text(text = text, style = MaterialTheme.typography.bodyMedium)
                    }
                }
            }
        }
    }
}

internal fun profilePreviewUser(): UserProfileObject {
    val avatar = ThumbnailObject(
        "https://storage1.picacomic.com",
        "profile-avatar.jpg",
        "profile-avatar.jpg"
    )
    return UserProfileObject().apply {
        setUserId("user-preview")
        setEmail("knight@picacomic.com")
        setName("Knight")
        setTitle("哔咔骑士")
        setBirthday("2000-01-01")
        setGender("bot")
        setSlogan("今天也在补 Compose 迁移。")
        setRole("knight")
        setLevel(8)
        setExp(1280)
        setPunched(false)
        setVerified(true)
        setAvatar(avatar)
    }
}
