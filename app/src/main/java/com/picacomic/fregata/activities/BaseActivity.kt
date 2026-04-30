package com.picacomic.fregata.activities

import android.Manifest
import android.annotation.TargetApi
import android.app.Dialog
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.drawable.ColorDrawable
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.CountDownTimer
import android.provider.Settings
import android.view.KeyEvent
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.app.AppCompatDelegate
import androidx.compose.ui.platform.ComposeView
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.core.view.PointerIconCompat
import androidx.lifecycle.ViewModelProvider
import com.picacomic.fregata.a_pkg.i
import com.picacomic.fregata.compose.screens.ImagePopupDialogContent
import com.picacomic.fregata.compose.screens.LockDialogContent
import com.picacomic.fregata.compose.screens.ProgressDialogContent
import com.picacomic.fregata.compose.screens.ProgressLoadingContent
import com.picacomic.fregata.compose.screens.ProfilePopupDialogContent
import com.picacomic.fregata.compose.screens.TitleEditDialogContent
import com.picacomic.fregata.compose.viewmodels.ProfilePopupViewModel
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
    private var imagePopupDialog: Dialog? = null
    private var lockDialog: Dialog? = null
    private var progressDialog: Dialog? = null
    private var progressLoadingDialog: Dialog? = null
    private var profilePopupDialog: Dialog? = null
    private var titleEditDialog: Dialog? = null
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
            super.onBackPressed()
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
        if (progressLoadingDialog?.isShowing == true) {
            return
        }
        try {
            val dialog = createProgressDialog(cancelable = true, canceledOnTouchOutside = true)
            progressLoadingDialog = dialog
            dialog.setContentView(
                ComposeView(this).apply {
                    setContent {
                        ProgressLoadingContent()
                    }
                }
            )
            dialog.setOnShowListener {
                dialog.window?.setGravity(android.view.Gravity.TOP or android.view.Gravity.CENTER_HORIZONTAL)
            }
            dialog.setOnDismissListener {
                progressLoadingDialog = null
                System.gc()
            }
            dialog.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun bB() {
        showProgressDialog(message = "")
    }

    fun C(str: String?) {
        showProgressDialog(message = str.orEmpty())
    }

    private fun showProgressDialog(message: String) {
        if (progressDialog?.isShowing == true) {
            return
        }
        try {
            val dialog = createProgressDialog(cancelable = false, canceledOnTouchOutside = true)
            progressDialog = dialog
            dialog.setContentView(
                ComposeView(this).apply {
                    setContent {
                        ProgressDialogContent(message = message)
                    }
                }
            )
            dialog.setOnDismissListener {
                progressDialog = null
                System.gc()
            }
            dialog.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun bC() {
        if (abs(this.hm - System.currentTimeMillis()) < 50) {
            this.hm = System.currentTimeMillis()
            f.D(TAG, "call delay - last = " + this.hm + " current = " + System.currentTimeMillis())
            c(500L)
            return
        }
        this.hm = System.currentTimeMillis()
        f.D(TAG, "No delay -   last = " + this.hm + " current = " + System.currentTimeMillis())
        try {
            if (progressDialog?.isShowing == true) {
                f.aA("dismiss progress dialog")
                progressDialog?.dismiss()
            }
            if (progressLoadingDialog?.isShowing == true) {
                f.aA("dismiss progress loading")
                progressLoadingDialog?.dismiss()
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
        if (imagePopupDialog?.isShowing == true) {
            return
        }
        try {
            val dialog = createComposePopupDialog()
            imagePopupDialog = dialog
            dialog.setContentView(
                ComposeView(this).apply {
                    setContent {
                        ImagePopupDialogContent(
                            imageUrl = str,
                            onDismiss = { dialog.dismiss() },
                        )
                    }
                }
            )
            dialog.setOnShowListener {
                dialog.window?.setLayout(
                    android.view.WindowManager.LayoutParams.MATCH_PARENT,
                    android.view.WindowManager.LayoutParams.MATCH_PARENT,
                )
            }
            dialog.setOnDismissListener {
                imagePopupDialog = null
                System.gc()
            }
            dialog.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun E(str: String?) {
        showProfilePopup(userId = str, userProfileObject = null)
    }

    fun a(userProfileObject: UserProfileObject?) {
        showProfilePopup(userId = null, userProfileObject = userProfileObject)
    }

    fun h(str: String?, str2: String?) {
        if (titleEditDialog?.isShowing == true) {
            return
        }
        try {
            val viewModel = ViewModelProvider(this)[ProfilePopupViewModel::class.java]
            viewModel.initializeTitle(str, str2)
            val dialog = createComposePopupDialog()
            titleEditDialog = dialog
            dialog.setContentView(
                ComposeView(this).apply {
                    setContent {
                        TitleEditDialogContent(
                            viewModel = viewModel,
                            onDismiss = { dialog.dismiss() },
                        )
                    }
                }
            )
            dialog.setOnDismissListener { titleEditDialog = null }
            dialog.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private fun showProfilePopup(userId: String?, userProfileObject: UserProfileObject?) {
        if (profilePopupDialog?.isShowing == true) {
            return
        }
        try {
            val viewModel = ViewModelProvider(this)[ProfilePopupViewModel::class.java]
            viewModel.initializeProfile(userId, userProfileObject)
            val dialog = createComposePopupDialog()
            profilePopupDialog = dialog
            dialog.setContentView(
                ComposeView(this).apply {
                    setContent {
                        ProfilePopupDialogContent(
                            viewModel = viewModel,
                            onDismiss = { dialog.dismiss() },
                            onShowImage = { imageUrl -> D(imageUrl) },
                            onEditTitle = { targetUserId, title -> h(targetUserId, title) },
                            onAdjustExp = { name, targetUserId ->
                                (this@BaseActivity as? MainActivity)?.i(name, targetUserId)
                            },
                        )
                    }
                }
            )
            dialog.setOnDismissListener { profilePopupDialog = null }
            dialog.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private fun createComposePopupDialog(): Dialog {
        return Dialog(this).apply {
            window?.requestFeature(1)
            window?.setBackgroundDrawable(ColorDrawable(0))
            setCancelable(true)
            setCanceledOnTouchOutside(true)
            setOnKeyListener { _, keyCode, _ ->
                keyCode == KeyEvent.KEYCODE_BACK || keyCode == KeyEvent.KEYCODE_SEARCH
            }
        }
    }

    private fun createProgressDialog(
        cancelable: Boolean,
        canceledOnTouchOutside: Boolean,
    ): Dialog {
        return Dialog(this).apply {
            window?.requestFeature(1)
            window?.setBackgroundDrawable(ColorDrawable(0))
            setCancelable(cancelable)
            setCanceledOnTouchOutside(canceledOnTouchOutside)
            setOnKeyListener { _, keyCode, _ ->
                keyCode == KeyEvent.KEYCODE_BACK || keyCode == KeyEvent.KEYCODE_SEARCH
            }
        }
    }

    fun bD() {
        if (lockDialog?.isShowing == true) {
            return
        }
        val pin = e.y(this)
        if (pin.isNullOrBlank()) {
            return
        }
        try {
            val dialog = createComposePopupDialog()
            lockDialog = dialog
            dialog.setCancelable(false)
            dialog.setCanceledOnTouchOutside(false)
            dialog.setContentView(
                ComposeView(this).apply {
                    setContent {
                        LockDialogContent(
                            pin = pin,
                            onUnlock = { dialog.dismiss() },
                        )
                    }
                }
            )
            dialog.setOnDismissListener {
                lockDialog = null
                System.gc()
            }
            dialog.show()
            dialog.window?.setLayout(
                android.view.WindowManager.LayoutParams.MATCH_PARENT,
                android.view.WindowManager.LayoutParams.MATCH_PARENT,
            )
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
