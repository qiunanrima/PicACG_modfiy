package com.picacomic.fregata.activities

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.lifecycle.viewmodel.compose.viewModel
import com.picacomic.fregata.compose.navigation.Screen
import com.picacomic.fregata.compose.screens.ApkVersionListScreen
import com.picacomic.fregata.compose.screens.ChangePasswordScreen
import com.picacomic.fregata.compose.screens.ChangePinScreen
import com.picacomic.fregata.compose.screens.CommentScreen
import com.picacomic.fregata.compose.screens.QuestionScreen
import com.picacomic.fregata.compose.screens.SettingsScreen
import com.picacomic.fregata.compose.viewmodels.SettingsViewModel
import com.picacomic.fregata.utils.g

class PopupActivity : BaseActivity() {
    override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        val type = intent.getStringExtra(EXTRA_KEY_TYPE)
        if (type.isNullOrBlank()) {
            finish()
            return
        }

        setContent {
            when {
                type.equals(TYPE_KEY_COMMENT, ignoreCase = true) -> {
                    val comicId = intent.getStringExtra(EXTRA_KEY_COMIC_ID)
                    if (comicId.isNullOrBlank()) {
                        LaunchedEffect(Unit) { finish() }
                    } else {
                        CommentScreen(
                            comicId = comicId,
                            onBack = { finish() },
                            onComicClick = { id ->
                                startActivity(
                                    Intent(this@PopupActivity, MainActivity::class.java).apply {
                                        putExtra(EXTRA_OPEN_COMIC_ID, id)
                                    }
                                )
                            },
                            onGameClick = { id ->
                                startActivity(
                                    Intent(this@PopupActivity, MainActivity::class.java).apply {
                                        putExtra(EXTRA_OPEN_GAME_ID, id)
                                    }
                                )
                            },
                        )
                    }
                }

                type.equals(TYPE_KEY_SETTING, ignoreCase = true) -> {
                    PopupSettingsHost(onBack = { finish() })
                }

                else -> {
                    LaunchedEffect(Unit) { finish() }
                }
            }
        }
    }

    @Composable
    private fun PopupSettingsHost(onBack: () -> Unit) {
        val settingsViewModel: SettingsViewModel = viewModel()
        var page by remember { mutableStateOf(PopupSettingsPage.Settings) }

        LaunchedEffect(Unit) {
            settingsViewModel.loadSettings()
        }

        when (page) {
            PopupSettingsPage.Settings -> {
                SettingsScreen(
                    state = settingsViewModel.state,
                    onScreenOrientation = settingsViewModel::openScreenOrientationDialog,
                    onScrollDirection = settingsViewModel::openScrollDirectionDialog,
                    onAutoPaging = settingsViewModel::openAutoPagingDialog,
                    onImageQuality = settingsViewModel::openImageQualityDialog,
                    onThemeColor = settingsViewModel::openThemeColorDialog,
                    onLauncherIcon = settingsViewModel::openLauncherIconDialog,
                    onContinueDownload = { g.av(this@PopupActivity) },
                    onApkVersion = { page = PopupSettingsPage.ApkVersion },
                    onCache = {
                        startActivity(
                            Intent("android.settings.APPLICATION_DETAILS_SETTINGS").apply {
                                data = Uri.fromParts("package", packageName, null)
                            }
                        )
                    },
                    onFaq = { page = PopupSettingsPage.Question },
                    onPin = { page = PopupSettingsPage.ChangePin },
                    onPassword = { page = PopupSettingsPage.ChangePassword },
                    onLogout = {
                        settingsViewModel.logout()
                        finish()
                    },
                    onNightModeChanged = settingsViewModel::toggleNightMode,
                    onVolumePagingChanged = settingsViewModel::toggleVolumePaging,
                    onTestingChanged = settingsViewModel::toggleTesting,
                    onPerformanceChanged = settingsViewModel::togglePerformance,
                    onDialogDismiss = settingsViewModel::dismissDialog,
                    onScreenOrientationSelected = settingsViewModel::selectScreenOrientationIndex,
                    onScrollDirectionSelected = settingsViewModel::selectScrollDirectionIndex,
                    onImageQualitySelected = settingsViewModel::selectImageQualityIndex,
                    onThemeColorSelected = { index ->
                        val previous = settingsViewModel.state.themeColorIndex
                        settingsViewModel.selectThemeColorIndex(index)
                        if (previous != index) {
                            startActivity(Intent(this@PopupActivity, PopupActivity::class.java).apply {
                                putExtra(EXTRA_KEY_TYPE, TYPE_KEY_SETTING)
                            })
                            finish()
                        }
                    },
                    onLauncherIconSelected = settingsViewModel::selectLauncherIconIndex,
                    onAutoPagingDraftChanged = settingsViewModel::updateAutoPagingDraftProgress,
                    onAutoPagingConfirmed = settingsViewModel::confirmAutoPagingInterval,
                )
            }

            PopupSettingsPage.ApkVersion -> ApkVersionListScreen(
                onBack = { page = PopupSettingsPage.Settings },
            )

            PopupSettingsPage.Question -> QuestionScreen(
                onBack = { page = PopupSettingsPage.Settings },
            )

            PopupSettingsPage.ChangePin -> ChangePinScreen(
                onBack = { page = PopupSettingsPage.Settings },
            )

            PopupSettingsPage.ChangePassword -> ChangePasswordScreen(
                onBack = { page = PopupSettingsPage.Settings },
            )
        }
    }

    private enum class PopupSettingsPage {
        Settings,
        ApkVersion,
        Question,
        ChangePin,
        ChangePassword,
    }

    companion object {
        const val TAG: String = "PopupActivity"
        const val EXTRA_KEY_TYPE: String = "EXTRA_KEY_TYPE"
        const val EXTRA_KEY_COMIC_ID: String = "EXTRA_KEY_COMIC_ID"
        const val EXTRA_OPEN_COMIC_ID: String = "EXTRA_OPEN_COMIC_ID"
        const val EXTRA_OPEN_GAME_ID: String = "EXTRA_OPEN_GAME_ID"
        const val TYPE_KEY_COMMENT: String = "TYPE_KEY_COMMENT"
        const val TYPE_KEY_SETTING: String = "TYPE_KEY_SETTING"
    }
}
