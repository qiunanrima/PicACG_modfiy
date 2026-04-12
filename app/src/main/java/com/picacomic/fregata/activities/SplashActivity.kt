package com.picacomic.fregata.activities

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.runtime.LaunchedEffect
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.screens.SplashScreen
import com.picacomic.fregata.compose.viewmodels.SplashViewModel

class SplashActivity : BaseActivity() {
    private val viewModel: SplashViewModel by viewModels()

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()
        viewModel.initialize()

        setContent {
            SplashScreen(
                isLoading = viewModel.isLoading,
                showError = viewModel.showError,
                showOptions = viewModel.showOptions,
                onRetry = viewModel::retry,
                onServer1 = { viewModel.selectServer(1) },
                onServer2 = { viewModel.selectServer(2) },
                onServer3 = { viewModel.selectServer(3) },
            )

            LaunchedEffect(viewModel.navigateToLoginEvent) {
                if (viewModel.navigateToLoginEvent > 0) {
                    navigateToLogin()
                }
            }

            LaunchedEffect(viewModel.restartRequiredEvent) {
                if (viewModel.restartRequiredEvent > 0) {
                    Toast.makeText(this@SplashActivity, R.string.restart_application, Toast.LENGTH_SHORT).show()
                    finishAffinity()
                    finish()
                    System.exit(0)
                }
            }
        }
    }

    private fun navigateToLogin() {
        startActivity(Intent(this, LoginActivity::class.java as Class<*>))
        finish()
    }

    companion object {
        const val TAG: String = "SplashActivity"

        @JvmField
        var iV: Boolean = false

        init {
            AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        }
    }
}
