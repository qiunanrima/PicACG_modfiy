package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.MyApplication
import com.picacomic.fregata.activities.SplashActivity
import com.picacomic.fregata.b.e
import com.picacomic.fregata.objects.responses.WakaInitResponse
import com.picacomic.fregata.utils.f
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class SplashViewModel(application: Application) : AndroidViewModel(application) {
    private val appContext = getApplication<Application>()

    var isLoading by mutableStateOf(true)
        private set

    var showError by mutableStateOf(false)
        private set

    var showOptions by mutableStateOf(false)
        private set

    var sslVerificationDisabled by mutableStateOf(
        com.picacomic.fregata.utils.e.isSslVerificationDisabled(appContext)
    )
        private set

    var navigateToLoginEvent by mutableIntStateOf(0)
        private set

    var restartRequiredEvent by mutableIntStateOf(0)
        private set

    private var initialized = false
    private var initCall: Call<WakaInitResponse?>? = null

    fun initialize() {
        if (initialized) return
        initialized = true
        loadInit(retryCount = 3)
        if (hasCachedServerOptions()) {
            isLoading = false
            showOptions = true
        }
    }

    fun retry() {
        showError = false
        showOptions = false
        isLoading = true
        loadInit(retryCount = 3)
    }

    fun updateSslVerificationDisabled(enabled: Boolean) {
        com.picacomic.fregata.utils.e.setSslVerificationDisabled(appContext, enabled)
        sslVerificationDisabled = enabled
    }

    fun selectServer(server: Int) {
        MyApplication.bw()
        when (server) {
            1 -> {
                com.picacomic.fregata.utils.e.p(appContext, false)
                com.picacomic.fregata.utils.e.i(appContext, 1)
                navigateToLoginEvent++
            }
            2 -> {
                com.picacomic.fregata.utils.e.p(appContext, true)
                com.picacomic.fregata.utils.e.i(appContext, 2)
                navigateToLoginEvent++
            }
            3 -> {
                com.picacomic.fregata.utils.e.p(appContext, true)
                com.picacomic.fregata.utils.e.i(appContext, 3)
                navigateToLoginEvent++
            }
        }
    }

    private fun hasCachedServerOptions(): Boolean {
        return !com.picacomic.fregata.utils.e.am(appContext).isNullOrEmpty() &&
            com.picacomic.fregata.utils.e.ao(appContext) != null
    }

    private fun loadInit(retryCount: Int) {
        initCall?.cancel()
        initCall = e(appContext).dO().dM()
        initCall?.enqueue(object : Callback<WakaInitResponse?> {
            override fun onResponse(call: Call<WakaInitResponse?>, response: Response<WakaInitResponse?>) {
                if (call.isCanceled) return
                val body = response.body()
                if (body != null && body.getStatus().equals("OK", ignoreCase = true)) {
                    body.getWaka()?.let { waka ->
                        f.aA("ADS BASE LINK = $waka")
                        com.picacomic.fregata.utils.e.y(MyApplication.by(), waka)
                    }
                    body.getAdKeyword()?.let { keyword ->
                        com.picacomic.fregata.utils.e.z(MyApplication.by(), keyword)
                    }
                    val addresses = body.getAddresses()
                    if (addresses != null && addresses.isNotEmpty()) {
                        f.F(SplashActivity.TAG, "ADDRESS IP = ${addresses}")
                        com.picacomic.fregata.utils.e.a(MyApplication.by(), HashSet(addresses))
                    }
                    isLoading = false
                    showError = false
                    showOptions = true
                    return
                }

                handleRetryOrError(retryCount - 1)
            }

            override fun onFailure(call: Call<WakaInitResponse?>, t: Throwable) {
                if (call.isCanceled) return
                SplashActivity.iV = true
                handleRetryOrError(retryCount - 1)
            }
        })
    }

    private fun handleRetryOrError(remainingRetries: Int) {
        if (remainingRetries < 0) {
            isLoading = false
            showOptions = false
            showError = true
        } else {
            loadInit(remainingRetries)
        }
    }

    override fun onCleared() {
        initCall?.cancel()
        super.onCleared()
    }
}
