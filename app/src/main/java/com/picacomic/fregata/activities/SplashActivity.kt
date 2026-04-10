package com.picacomic.fregata.activities

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatDelegate
import com.picacomic.fregata.MyApplication
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.views.PicaSplashComposeView
import com.picacomic.fregata.databinding.ActivitySplashBinding
import com.picacomic.fregata.objects.responses.WakaInitResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

/* JADX INFO: loaded from: classes.dex */
class SplashActivity : BaseActivity() {
    var binding: ActivitySplashBinding? = null
    var composeView_splash: PicaSplashComposeView? = null
    var iW: Call<WakaInitResponse?>? = null

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        this.binding = ActivitySplashBinding.inflate(getLayoutInflater())
        setContentView(this.binding!!.getRoot())

        this.composeView_splash = this.binding!!.composeViewSplash
        this.composeView_splash!!.setLoading(true)
        this.composeView_splash!!.setShowError(false)
        this.composeView_splash!!.setShowOptions(false)
        this.composeView_splash!!.setOnRetryAction(object : Runnable {
            // from class: com.picacomic.fregata.activities.SplashActivity.1
            // java.lang.Runnable
            override fun run() {
                this@SplashActivity.composeView_splash!!.setShowError(false)
                this@SplashActivity.composeView_splash!!.setShowOptions(false)
                this@SplashActivity.composeView_splash!!.setLoading(true)
                this@SplashActivity.w(3)
            }
        })
        this.composeView_splash!!.setOnServer1Action(object : Runnable {
            // from class: com.picacomic.fregata.activities.SplashActivity.2
            // java.lang.Runnable
            override fun run() {
                e.p(this@SplashActivity as Context, false)
                e.i(this@SplashActivity, 1)
                this@SplashActivity.bZ()
            }
        })
        this.composeView_splash!!.setOnServer2Action(object : Runnable {
            // from class: com.picacomic.fregata.activities.SplashActivity.3
            // java.lang.Runnable
            override fun run() {
                e.p(this@SplashActivity as Context, true)
                e.i(this@SplashActivity, 2)
                try {
                    MyApplication.bw()
                    this@SplashActivity.bZ()
                } catch (e: Exception) {
                    e.printStackTrace()
                    Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show()
                    this@SplashActivity.finishAffinity()
                    this@SplashActivity.finish()
                    System.exit(0)
                }
            }
        })
        this.composeView_splash!!.setOnServer3Action(object : Runnable {
            // from class: com.picacomic.fregata.activities.SplashActivity.4
            // java.lang.Runnable
            override fun run() {
                e.p(this@SplashActivity as Context, true)
                e.i(this@SplashActivity, 3)
                try {
                    this@SplashActivity.bZ()
                } catch (e: Exception) {
                    e.printStackTrace()
                    Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show()
                    this@SplashActivity.finishAffinity()
                    this@SplashActivity.finish()
                    System.exit(0)
                }
            }
        })

        w(3)
        if (e.am(this) == null || e.am(this).equals("", ignoreCase = true) || e.ao(this) == null) {
            return
        }
        this.composeView_splash!!.setLoading(false)
        this.composeView_splash!!.setShowOptions(true)
    }

    fun w(i: Int) {
        this.iW = com.picacomic.fregata.b.e(this).dO().dM()
        this.iW!!.enqueue(object : Callback<WakaInitResponse?> {
            // from class: com.picacomic.fregata.activities.SplashActivity.5
            // retrofit2.Callback
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
                        e.a(MyApplication.by(), HashSet<Any?>(addresses))
                    }
                    if (this@SplashActivity.composeView_splash != null) {
                        this@SplashActivity.composeView_splash!!.setLoading(false)
                        this@SplashActivity.composeView_splash!!.setShowError(false)
                        this@SplashActivity.composeView_splash!!.setShowOptions(true)
                    }
                    if (response.body()!!.getMessage() == null || response.body()!!
                            .getMessage().length <= 1 || this@SplashActivity == null
                    ) {
                        return
                    }
                    //AlertDialogCenter.showAnnouncementAlertDialog(SplashActivity.this, null, null, response.body().getMessage(), null, null);
                    return
                }
                val i2 = i - 1
                if (i2 < 0) {
                    if (this@SplashActivity.composeView_splash != null) {
                        this@SplashActivity.composeView_splash!!.setLoading(false)
                        this@SplashActivity.composeView_splash!!.setShowOptions(false)
                        this@SplashActivity.composeView_splash!!.setShowError(true)
                    }
                } else if (this@SplashActivity.composeView_splash != null) {
                    this@SplashActivity.w(i2)
                }
            }

            // retrofit2.Callback
            override fun onFailure(call: Call<WakaInitResponse?>, th: Throwable) {
                th.printStackTrace()
                val i2 = i - 1
                if (i2 < 0) {
                    if (this@SplashActivity.composeView_splash != null) {
                        this@SplashActivity.composeView_splash!!.setLoading(false)
                        this@SplashActivity.composeView_splash!!.setShowOptions(false)
                        this@SplashActivity.composeView_splash!!.setShowError(true)
                    }
                } else if (this@SplashActivity.composeView_splash != null) {
                    iV = true
                    this@SplashActivity.w(i2)
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
        var iV: Boolean = false

        init {
            AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        }
    }
}
