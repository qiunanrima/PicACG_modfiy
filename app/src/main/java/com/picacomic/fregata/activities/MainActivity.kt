package com.picacomic.fregata.activities

import android.app.AlertDialog
import android.content.Context
import android.content.DialogInterface
import android.content.res.Configuration
import android.os.Bundle
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.View.OnTouchListener
import android.view.ViewGroup
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.EditText
import android.widget.ImageButton
import android.widget.RelativeLayout
import android.widget.TextView
import android.widget.Toast
import com.google.gson.Gson
import com.picacomic.fregata.R
import com.picacomic.fregata.b.d
import com.picacomic.fregata.compose.views.OnIntChangedListener
import com.picacomic.fregata.compose.views.PicaMainBottomBarComposeView
import com.picacomic.fregata.databinding.ActivityMainBinding
import com.picacomic.fregata.fragments.CategoryFragment
import com.picacomic.fregata.fragments.GameFragment
import com.picacomic.fregata.fragments.HomeFragment
import com.picacomic.fregata.fragments.OneTimeUpdateQAFragment
import com.picacomic.fregata.fragments.ProfileFragment
import com.picacomic.fregata.fragments.SettingFragment
import com.picacomic.fregata.objects.requests.AdjustExpBody
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.InitialResponse
import com.picacomic.fregata.objects.responses.RegisterResponse
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import com.picacomic.fregata.utils.views.BannerWebview
import com.picacomic.fregata.utils.views.PopupWebview
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import kotlin.math.abs

/* JADX INFO: loaded from: classes.dex */
class MainActivity : BaseActivity(), View.OnClickListener {
    var binding: ActivityMainBinding? = null
    var bannerWebview: BannerWebview? = null
    var button_controlBlock: ImageButton? = null
    var button_controlExp: ImageButton? = null
    var composeView_tabbar: PicaMainBottomBarComposeView? = null
    var iA: Animation? = null
    var iB: Animation? = null
    var iC: Animation? = null
    var iD: Animation? = null
    var iE: Animation? = null
    var iF: Call<GeneralResponse<InitialResponse?>?>? = null
    var iG: Call<RegisterResponse?>? = null
    var iH: InitialResponse? = null
    var iI: RelativeLayout.LayoutParams? = null
    private var iJ = 0
    private var iK = 0
    var iL: Long = 0
    @JvmField
    var iM: Boolean = false
    var iN: Boolean = false
    var popupWebview: PopupWebview? = null

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onSaveInstanceState(bundle: Bundle) {
        super.onSaveInstanceState(bundle)
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        this.binding = ActivityMainBinding.inflate(getLayoutInflater())
        setContentView(this.binding!!.getRoot())

        this.bannerWebview = this.binding!!.bannerWebview
        this.button_controlBlock = this.binding!!.imageButtonControlBlock
        this.button_controlExp = this.binding!!.imageButtonControlExp
        this.composeView_tabbar = this.binding!!.composeViewMainTabbar
        this.popupWebview = this.binding!!.popupWebview

        e.j(this, null as String?)
        e.l(this, null as String?)
        init()
        bF()
        bH()
        val strY = e.y(this)
        if (strY == null || strY.length <= 0) {
            return
        }
        bD()
    }

    fun bK() {
        this.iA = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_exit)
        this.iA!!.setAnimationListener(object : Animation.AnimationListener {
            // from class: com.picacomic.fregata.activities.MainActivity.1
            // android.view.animation.Animation.AnimationListener
            override fun onAnimationRepeat(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationStart(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationEnd(animation: Animation?) {
                this@MainActivity.composeView_tabbar!!.setVisibility(8)
            }
        })
        this.iB = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_enter)
        this.iB!!.setAnimationListener(object : Animation.AnimationListener {
            // from class: com.picacomic.fregata.activities.MainActivity.3
            // android.view.animation.Animation.AnimationListener
            override fun onAnimationRepeat(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationStart(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationEnd(animation: Animation?) {
                this@MainActivity.composeView_tabbar!!.setVisibility(0)
            }
        })
        this.iC = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_exit)
        this.iC!!.setAnimationListener(object : Animation.AnimationListener {
            // from class: com.picacomic.fregata.activities.MainActivity.4
            // android.view.animation.Animation.AnimationListener
            override fun onAnimationRepeat(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationStart(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationEnd(animation: Animation?) {
                this@MainActivity.bannerWebview!!.setVisibility(8)
            }
        })
        this.iD = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_enter)
        this.iD!!.setAnimationListener(object : Animation.AnimationListener {
            // from class: com.picacomic.fregata.activities.MainActivity.5
            // android.view.animation.Animation.AnimationListener
            override fun onAnimationRepeat(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationStart(animation: Animation?) {
            }

            // android.view.animation.Animation.AnimationListener
            override fun onAnimationEnd(animation: Animation?) {
                this@MainActivity.bannerWebview!!.setVisibility(0)
            }
        })
    }

    fun init() {
        bK()
    }

    fun t(i: Int) {
        bK()
        if (i == 0) {
            if (this.composeView_tabbar!!.getVisibility() != 0) {
                if (e.x(this)) {
                    this.composeView_tabbar!!.setVisibility(0)
                    return
                } else {
                    this.composeView_tabbar!!.startAnimation(this.iB)
                    return
                }
            }
            return
        }
        if (this.composeView_tabbar!!.getVisibility() == 0) {
            if (e.x(this)) {
                this.composeView_tabbar!!.setVisibility(8)
            } else {
                this.composeView_tabbar!!.startAnimation(this.iA)
            }
        }
    }

    fun bV() {
        if (this.bannerWebview != null) {
            this.bannerWebview!!.setVisibility(8)
            this.bannerWebview!!.hide()
        }
    }

    fun F(str: String?) {
        if (this.bannerWebview == null) {
            this.bannerWebview = BannerWebview(this)
        }
        this.bannerWebview!!.setVisibility(0)
        this.bannerWebview!!.show(str)
    }

    fun bF() {
        this.composeView_tabbar!!.setOnTabSelectedListener(object : OnIntChangedListener {
            // from class: com.picacomic.fregata.activities.MainActivity.11
            // com.picacomic.fregata.compose.views.OnIntChangedListener
            override fun onChanged(i: Int) {
                this@MainActivity.u(i)
            }
        })
    }

    fun bH() {
        u(0)
        bX()
        g.av(this)
    }

    fun bI() {
        if (this.iH == null || this.iH!!.latestApplication == null) {
            return
        }
        f.D(BaseActivity.Companion.TAG, this.iH!!.latestApplication.toString())
        if (this.iH!!.notification != null && !this.iH!!.notification.getNotificationId()
                .equals(e.aj(this), ignoreCase = true)
        ) {
            e.x(this, this.iH!!.notification.getNotificationId())
            e.o(this as Context, true)
        } else {
            e.o(this as Context, false)
        }
        e.k(this, Gson().toJson(this.iH!!.getCategories()))
        val version = this.iH!!.latestApplication.getVersion()
        if (g.C(this, version)) {
            AlertDialogCenter.showUpdateApkAlertDialog(
                this,
                this.iH!!.latestApplication,
                g.D(this, version)
            )
        }
        if (this.iH!!.isIdUpdated) {
            return
        }
        getSupportFragmentManager().popBackStack()
        getSupportFragmentManager().beginTransaction()
            .replace(R.id.container, OneTimeUpdateQAFragment(), OneTimeUpdateQAFragment.TAG)
            .commit()
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onResume() {
        super.onResume()
        bK()
    }

    // android.app.Activity
    override fun onRestart() {
        super.onRestart()
        bK()
    }

    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onStop() {
        if (this.iF != null) {
            this.iF!!.cancel()
        }
        if (this.iG != null) {
            this.iG!!.cancel()
        }
        if (this.iC != null) {
            this.iC!!.cancel()
        }
        if (this.iD != null) {
            this.iD!!.cancel()
        }
        if (this.iB != null) {
            this.iB!!.cancel()
        }
        if (this.iA != null) {
            this.iA!!.cancel()
        }
        if (this.iE != null) {
            this.iE!!.cancel()
        }
        super.onStop()
    }

    fun u(i: Int) {
        if (this.composeView_tabbar != null) {
            this.composeView_tabbar!!.setSelectedIndex(i)
            when (i) {
                0 -> {
                    getSupportFragmentManager().popBackStack()
                    getSupportFragmentManager().beginTransaction()
                        .replace(R.id.container, HomeFragment(), HomeFragment.TAG).commit()
                }

                1 -> {
                    getSupportFragmentManager().popBackStack()
                    getSupportFragmentManager().beginTransaction()
                        .replace(R.id.container, CategoryFragment(), CategoryFragment.TAG).commit()
                }

                2 -> {
                    getSupportFragmentManager().popBackStack()
                    getSupportFragmentManager().beginTransaction()
                        .replace(R.id.container, GameFragment(), GameFragment.TAG).commit()
                }

                3 -> {
                    getSupportFragmentManager().popBackStack()
                    getSupportFragmentManager().beginTransaction()
                        .replace(R.id.container, ProfileFragment(), ProfileFragment.TAG).commit()
                }

                4 -> {
                    getSupportFragmentManager().popBackStack()
                    getSupportFragmentManager().beginTransaction()
                        .replace(R.id.container, SettingFragment(), SettingFragment.TAG).commit()
                }
            }
        }
    }

    fun bX() {
        this.iF = d(this).dO().ak(e.z(this))
        this.iF!!.enqueue(object : Callback<GeneralResponse<InitialResponse?>?> {
            // from class: com.picacomic.fregata.activities.MainActivity.6
            // retrofit2.Callback
            override fun onResponse(
                call: Call<GeneralResponse<InitialResponse?>?>,
                response: Response<GeneralResponse<InitialResponse?>?>
            ) {
                if (response.code() == 200) {
                    f.aA(response.body()!!.data.toString())
                    this@MainActivity.iH = response.body()!!.data
                    val str = response.body()!!.data!!.imageServer
                    if (str != null && str.length > 0) {
                        f.D(BaseActivity.Companion.TAG, "SET Image Storage")
                        e.q(this@MainActivity, str)
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@MainActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                this@MainActivity.bI()
            }

            // retrofit2.Callback
            override fun onFailure(call: Call<GeneralResponse<InitialResponse?>?>, th: Throwable) {
                th.printStackTrace()
                com.picacomic.fregata.b.c(this@MainActivity).dN()
                this@MainActivity.bI()
            }
        })
    }

    fun a(i: Int, str: String?) {
        this.iG = d(this).dO().a(e.z(this), AdjustExpBody(i, str))
        this.iG!!.enqueue(object : Callback<RegisterResponse?> {
            // from class: com.picacomic.fregata.activities.MainActivity.7
            // retrofit2.Callback
            override fun onResponse(
                call: Call<RegisterResponse?>,
                response: Response<RegisterResponse?>
            ) {
                if (response.code() == 200) {
                    if (this@MainActivity != null) {
                        Toast.makeText(this@MainActivity, "ADUST SUCCESS", 0).show()
                    }
                } else {
                    try {
                        com.picacomic.fregata.b.c(
                            this@MainActivity,
                            response.code(),
                            response.errorBody()!!.string()
                        ).dN()
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
            }

            // retrofit2.Callback
            override fun onFailure(call: Call<RegisterResponse?>, th: Throwable) {
                th.printStackTrace()
                com.picacomic.fregata.b.c(this@MainActivity).dN()
                this@MainActivity.bI()
            }
        })
    }

    fun bY() {
        this.iI = RelativeLayout.LayoutParams(-2, -2)
        this.button_controlExp!!.setVisibility(0)
        this.button_controlBlock!!.setVisibility(0)
        this.iM = false
        this.iN = false
        this.button_controlBlock!!.setOnClickListener(object : View.OnClickListener {
            // from class: com.picacomic.fregata.activities.MainActivity.8
            // android.view.View.OnClickListener
            override fun onClick(view: View?) {
                this@MainActivity.v(2)
            }
        })
        this.button_controlExp!!.setOnTouchListener(object : OnTouchListener {
            // from class: com.picacomic.fregata.activities.MainActivity.9
            var iR: Int = 0
            var iS: Int = 0
            var iT: Boolean = false

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            // android.view.View.OnTouchListener
            override fun onTouch(view: View?, motionEvent: MotionEvent): Boolean {
                val rawX = motionEvent.getRawX().toInt()
                val rawY = motionEvent.getRawY().toInt()
                when (motionEvent.getAction()) {
                    0 -> {
                        this.iR = rawX
                        this.iS = rawY
                        this.iT = true
                        this@MainActivity.iL = System.currentTimeMillis()
                        this@MainActivity.iJ = rawX - this@MainActivity.iI!!.leftMargin
                        this@MainActivity.iK = rawY - this@MainActivity.iI!!.topMargin
                        return false
                    }

                    1 -> {
                        if (System.currentTimeMillis() - this@MainActivity.iL < 500 && this.iT && this@MainActivity != null) {
                            this@MainActivity.v(1)
                        }
                        return false
                    }

                    2 -> {
                        if (abs(this.iR - rawX) < 10 && abs(this.iS - rawY) < 10) {
                            this.iT = true
                        } else {
                            this.iT = false
                        }
                        this@MainActivity.iI!!.leftMargin = rawX - this@MainActivity.iJ
                        this@MainActivity.iI!!.topMargin = rawY - this@MainActivity.iK
                        this@MainActivity.button_controlExp!!.setLayoutParams(this@MainActivity.iI)
                        return false
                    }

                    else -> return false
                }
            }
        })
    }

    fun v(i: Int) {
        if (i == 1) {
            if (this.iM) {
                l(false)
            } else {
                l(true)
            }
            m(false)
            return
        }
        if (i == 2) {
            if (this.iN) {
                m(false)
            } else {
                m(true)
            }
            l(false)
        }
    }

    fun l(z: Boolean) {
        if (z) {
            this.button_controlExp!!.setImageResource(R.drawable.icon_exp)
            this.iM = true
        } else {
            this.button_controlExp!!.setImageResource(R.drawable.icon_exp_gray)
            this.iM = false
        }
    }

    fun m(z: Boolean) {
        if (z) {
            this.button_controlBlock!!.setImageResource(R.drawable.icon_block)
            this.iN = true
        } else {
            this.button_controlBlock!!.setImageResource(R.drawable.icon_block_gray)
            this.iN = false
        }
    }

    fun i(str: String?, str2: String?) {
        val viewInflate = (getSystemService("layout_inflater") as LayoutInflater).inflate(
            R.layout.dialog_exp_content_view,
            findViewById<View?>(android.R.id.content) as ViewGroup?,
            false
        )
        val textView =
            viewInflate.findViewById<View?>(R.id.textView_exp_content_view_username) as TextView
        val editText =
            viewInflate.findViewById<View?>(R.id.editText_exp_content_view_exp) as EditText?
        textView.setText(str + "\nID: " + str2)
        AlertDialog.Builder(this, R.style.MyAlertDialogStyle).setTitle(str).setView(viewInflate)
            .setPositiveButton(R.string.ok, object : DialogInterface.OnClickListener {
                // from class: com.picacomic.fregata.activities.MainActivity.2
                // android.content.DialogInterface.OnClickListener
                override fun onClick(dialogInterface: DialogInterface, i: Int) {
                    if (editText == null || editText.getText() == null || editText.getText()
                            .toString().equals("", ignoreCase = true)
                    ) {
                        return
                    }
                    this@MainActivity.a(editText.getText().toString().toInt(), str2)
                    this@MainActivity.l(false)
                    dialogInterface.dismiss()
                }
            }).setNegativeButton(R.string.cancel, object : DialogInterface.OnClickListener {
                // from class: com.picacomic.fregata.activities.MainActivity.10
                // android.content.DialogInterface.OnClickListener
                override fun onClick(dialogInterface: DialogInterface, i: Int) {
                    this@MainActivity.l(false)
                    dialogInterface.dismiss()
                }
            }).show()
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    override fun onConfigurationChanged(configuration: Configuration) {
        super.onConfigurationChanged(configuration)
    }

    // android.view.View.OnClickListener
    override fun onClick(view: View?) {
    }
}
