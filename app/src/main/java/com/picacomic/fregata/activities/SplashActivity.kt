package com.picacomic.fregata.activities

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import com.picacomic.fregata.MyApplication
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.screens.SplashScreen
import com.picacomic.fregata.objects.responses.WakaInitResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

/* JADX INFO: loaded from: classes.dex */
class SplashActivity : ComponentActivity() {

    private var isLoadingState by mutableStateOf(true)
    private var showErrorState by mutableStateOf(false)
    private var showOptionsState by mutableStateOf(false)

    private var iW: Call<WakaInitResponse?>? = null

    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        enableEdgeToEdge()

        setContent {
            SplashScreen(
                isLoading = isLoadingState,
                showError = showErrorState,
                showOptions = showOptionsState,
                onRetry = {
                    showErrorState = false
                    showOptionsState = false
                    isLoadingState = true
                    w(3)
                },
                onServer1 = {
                    e.p(this as Context, false)
                    e.i(this, 1)
                    bZ()
                },
                onServer2 = {
                    e.p(this as Context, true)
                    e.i(this, 2)
                    try {
                        MyApplication.bw()
                        bZ()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                        Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show()
                        finishAffinity()
                        finish()
                        System.exit(0)
                    }
                },
                onServer3 = {
                    e.p(this as Context, true)
                    e.i(this, 3)
                    try {
                        bZ()
                    } catch (ex: Exception) {
                        ex.printStackTrace()
                        Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show()
                        finishAffinity()
                        finish()
                        System.exit(0)
                    }
                }
            )
        }

        w(3)
        if (e.am(this) == null || e.am(this).equals("", ignoreCase = true) || e.ao(this) == null) {
            return
        }
        isLoadingState = false
        showOptionsState = true
    }

    fun w(i: Int) {
        this.iW = com.picacomic.fregata.b.e(this).dO().dM()
        this.iW!!.enqueue(object : Callback<WakaInitResponse?> {
            override fun onResponse(
                call: Call<WakaInitResponse?>,
                response: Response<WakaInitResponse?>
            ) {
                if (response != null && response.body() != null && response.body()!!.getStatus()
                        .equals("OK", ignoreCase = true)
                ) {
                    if (response.body()!!.getWaka() != null) {
                        f.aA("ADS BASE LINK = " + response.body()!!.getWaka())
                        e.y(MyApplication.by(), response.body()!!.getWaka())
                    }
                    if (response.body()!!.getAdKeyword() != null) {
                        e.z(MyApplication.by(), response.body()!!.getAdKeyword())
                    }
                    if (response.body()!!.getAddresses() != null && response.body()!!
                            .getAddresses().size > 0
                    ) {
                        val addresses = response.body()!!.getAddresses()
                        f.F(TAG, "ADDRESS IP = " + response.body()!!.getAddresses().toString())
                        e.a(MyApplication.by(), HashSet<String>(addresses))
                    }
                    isLoadingState = false
                    showErrorState = false
                    showOptionsState = true
                    return
                }
                val i2 = i - 1
                if (i2 < 0) {
                    isLoadingState = false
                    showOptionsState = false
                    showErrorState = true
                } else {
                    w(i2)
                }
            }

            override fun onFailure(call: Call<WakaInitResponse?>, th: Throwable) {
                th.printStackTrace()
                val i2 = i - 1
                if (i2 < 0) {
                    isLoadingState = false
                    showOptionsState = false
                    showErrorState = true
                } else {
                    iV = true
                    w(i2)
                }
            }
        })
    }

    fun bZ() {
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
