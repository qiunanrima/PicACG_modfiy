package com.picacomic.fregata.activities

import android.Manifest
import android.annotation.TargetApi
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.CountDownTimer
import android.provider.Settings
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.app.AppCompatDelegate
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.core.view.PointerIconCompat
import com.picacomic.fregata.a_pkg.i
import com.picacomic.fregata.fragments.ChatroomContainerFragment
import com.picacomic.fregata.fragments.ChatroomFragment
import com.picacomic.fregata.fragments.CustomPicaAppContainerFragment
import com.picacomic.fregata.fragments.ImagePopupFragment
import com.picacomic.fregata.fragments.LockDialogFragment
import com.picacomic.fregata.fragments.ProfilePopupFragment
import com.picacomic.fregata.fragments.ProgressDialogFragment
import com.picacomic.fregata.fragments.ProgressLoadingFragment
import com.picacomic.fregata.fragments.TitleEditPopupFragment
import com.picacomic.fregata.objects.UserProfileObject
import com.picacomic.fregata.utils.e
import com.picacomic.fregata.utils.f
import com.picacomic.fregata.utils.g
import com.picacomic.fregata.utils.views.AlertDialogCenter
import kotlin.math.abs

/* JADX INFO: loaded from: classes.dex */
open class BaseActivity : AppCompatActivity() {
    private var hm: Long = 0
    private var hn: CountDownTimer? = null
    var ho: i? = null

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        super.onCreate(bundle)
        g.aw(this)
    }

    fun onBackPressed(view: View?) {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            this.ho!!.b(view)
        } else if (this is MainActivity) {
            AlertDialogCenter.ageNotEnough(this)
        } else {
            super.onBackPressed()
        }
        bC()
    }

    // androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            val chatroomFragment =
                getSupportFragmentManager().findFragmentByTag(ChatroomFragment.TAG) as ChatroomFragment?
            val chatroomContainerFragment =
                getSupportFragmentManager().findFragmentByTag(ChatroomContainerFragment.TAG) as ChatroomContainerFragment?
            val customPicaAppContainerFragment =
                getSupportFragmentManager().findFragmentByTag(CustomPicaAppContainerFragment.TAG) as CustomPicaAppContainerFragment?
            if (chatroomFragment != null && chatroomFragment.isVisible()) {
                this.ho!!.b(chatroomFragment.getView())
            } else if (chatroomContainerFragment != null && chatroomContainerFragment.isVisible()) {
                this.ho!!.b(chatroomContainerFragment.getView())
            } else if (customPicaAppContainerFragment != null && customPicaAppContainerFragment.isVisible()) {
                this.ho!!.b(customPicaAppContainerFragment.getView())
            } else {
                super.onBackPressed()
            }
        } else if (this is MainActivity) {
            AlertDialogCenter.leavePica(this, object : View.OnClickListener {
                // from class: com.picacomic.fregata.activities.BaseActivity.1
                // android.view.View.OnClickListener
                override fun onClick(view: View?) {
                    this@BaseActivity.finishAffinity()
                    this@BaseActivity.finish()
                    System.exit(0)
                }
            })
        } else {
            super.onBackPressed()
        }
        bC()
    }

    fun a(iVar: i?) {
        this.ho = iVar
    }

    fun bA() {
        if ((getSupportFragmentManager().findFragmentByTag(ProgressLoadingFragment.TAG) as ProgressLoadingFragment?) == null) {
            getSupportFragmentManager().beginTransaction()
                .add(ProgressLoadingFragment(), ProgressLoadingFragment.TAG)
                .commitAllowingStateLoss()
        }
    }

    fun bB() {
        if ((getSupportFragmentManager().findFragmentByTag(ProgressDialogFragment.TAG) as ProgressDialogFragment?) == null) {
            getSupportFragmentManager().beginTransaction()
                .add(ProgressDialogFragment.dH(), ProgressDialogFragment.TAG)
                .commitAllowingStateLoss()
        }
    }

    fun C(str: String?) {
        if ((getSupportFragmentManager().findFragmentByTag(ProgressDialogFragment.TAG) as ProgressDialogFragment?) != null || getSupportFragmentManager() == null) {
            return
        }
        try {
            getSupportFragmentManager().beginTransaction()
                .add(ProgressDialogFragment.ai(str), ProgressDialogFragment.TAG)
                .commitAllowingStateLoss()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun bC() {
        val supportFragmentManager = getSupportFragmentManager()
        if (supportFragmentManager == null) {
            f.aA("dismiss null manager")
            return
        }
        if (abs(this.hm - System.currentTimeMillis()) < 50) {
            this.hm = System.currentTimeMillis()
            f.D(TAG, "call delay - last = " + this.hm + " current = " + System.currentTimeMillis())
            c(500L)
            return
        }
        this.hm = System.currentTimeMillis()
        f.D(TAG, "No delay -   last = " + this.hm + " current = " + System.currentTimeMillis())
        try {
            val progressDialogFragment =
                supportFragmentManager.findFragmentByTag(ProgressDialogFragment.TAG) as ProgressDialogFragment?
            if (progressDialogFragment != null) {
                f.aA("dismiss progress dialog")
                if (getSupportFragmentManager() != null) {
                    getSupportFragmentManager().beginTransaction().remove(progressDialogFragment)
                        .commit()
                }
            }
            val progressLoadingFragment =
                supportFragmentManager.findFragmentByTag(ProgressLoadingFragment.TAG) as ProgressLoadingFragment?
            if (progressLoadingFragment != null) {
                f.aA("dismiss progress loading")
                if (getSupportFragmentManager() != null) {
                    getSupportFragmentManager().beginTransaction().remove(progressLoadingFragment)
                        .commit()
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun c(j: Long) {
        this.hn = object : CountDownTimer(j, j) {
            // from class: com.picacomic.fregata.activities.BaseActivity.2
            // android.os.CountDownTimer
            override fun onTick(j2: Long) {
            }

            // android.os.CountDownTimer
            override fun onFinish() {
                this@BaseActivity.bC()
            }
        }
        this.hn!!.start()
    }

    fun D(str: String?) {
        if ((getSupportFragmentManager().findFragmentByTag(ImagePopupFragment.TAG) as ImagePopupFragment?) != null || getSupportFragmentManager() == null) {
            return
        }
        try {
            getSupportFragmentManager().beginTransaction()
                .add(ImagePopupFragment.ae(str), ImagePopupFragment.TAG).commit()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun E(str: String?) {
        if ((getSupportFragmentManager().findFragmentByTag(ProfilePopupFragment.TAG) as ProfilePopupFragment?) != null || getSupportFragmentManager() == null) {
            return
        }
        try {
            getSupportFragmentManager().beginTransaction()
                .add(ProfilePopupFragment.ah(str), ProfilePopupFragment.TAG).commit()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun a(userProfileObject: UserProfileObject?) {
        if ((getSupportFragmentManager().findFragmentByTag(ProfilePopupFragment.TAG) as ProfilePopupFragment?) != null || getSupportFragmentManager() == null) {
            return
        }
        try {
            getSupportFragmentManager().beginTransaction()
                .add(ProfilePopupFragment.c(userProfileObject), ProfilePopupFragment.TAG).commit()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun h(str: String?, str2: String?) {
        if ((getSupportFragmentManager().findFragmentByTag(TitleEditPopupFragment.TAG) as TitleEditPopupFragment?) != null || getSupportFragmentManager() == null) {
            return
        }
        try {
            getSupportFragmentManager().beginTransaction()
                .add(TitleEditPopupFragment.o(str, str2), TitleEditPopupFragment.TAG).commit()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun bD() {
        if ((getSupportFragmentManager().findFragmentByTag(LockDialogFragment.TAG) as LockDialogFragment?) != null || getSupportFragmentManager() == null) {
            return
        }
        try {
            getSupportFragmentManager().beginTransaction()
                .add(LockDialogFragment(), LockDialogFragment.TAG).commit()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    @TargetApi(23)
    fun bE(): Boolean {
        if (Settings.canDrawOverlays(this)) {
            return true
        }
        startActivityForResult(
            Intent(
                "android.settings.action.MANAGE_OVERLAY_PERMISSION",
                Uri.parse("package:" + getPackageName())
            ), 1005
        )
        return false
    }

    fun requestPermission() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
            return
        }

        val permissions = mutableListOf<String>()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_MEDIA_IMAGES) != PackageManager.PERMISSION_GRANTED) {
                permissions.add(Manifest.permission.READ_MEDIA_IMAGES)
            }
        }
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.RECORD_AUDIO)
        }
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.CAMERA)
        }

        if (permissions.isNotEmpty()) {
            ActivityCompat.requestPermissions(
                this,
                permissions.distinct().toTypedArray(),
                PointerIconCompat.TYPE_CONTEXT_MENU
            )
        }
    }

    // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    override fun onRequestPermissionsResult(i: Int, strArr: Array<out String>, iArr: IntArray) {
        super.onRequestPermissionsResult(i, strArr, iArr)
        when (i) {
            PointerIconCompat.TYPE_CONTEXT_MENU -> if (iArr.size > 0) {
                val i2 = iArr[0]
            }

            PointerIconCompat.TYPE_HAND -> if (iArr.size > 0) {
                val i3 = iArr[0]
            }

            PointerIconCompat.TYPE_HELP -> if (iArr.size > 0) {
                val i4 = iArr[0]
            }

            PointerIconCompat.TYPE_WAIT -> if (iArr.size > 0 && iArr[0] == 0) {
                startActivity(Intent(this, LoginActivity::class.java as Class<*>))
                finish()
            } else {
                finish()
            }
        }
    }

    // androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onPause() {
        var strY: String? = null
        super.onPause()
        if (this.hn != null) {
            bC()
            this.hn!!.cancel()
            this.hn = null
        }
        if ((this is LoginActivity) || (this is PopupActivity) || (e.y(this)
                .also { strY = it }) == null || strY!!.length <= 0
        ) {
            return
        }
        bD()
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onStop() {
        super.onStop()
    }

    // androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onResume() {
        super.onResume()
        g.ar(this)
    }

    companion object {
        const val TAG: String = "BaseActivity"

        init {
            AppCompatDelegate.setCompatVectorFromResourcesEnabled(true)
        }
    }
}
