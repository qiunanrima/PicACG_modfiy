package com.picacomic.fregata.activities

import android.os.Bundle
import android.os.CountDownTimer
import android.view.View
import android.view.animation.Animation
import android.view.animation.AnimationUtils
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.Toast
import com.picacomic.fregata.R
import com.picacomic.fregata.fragments.LoginFragment
import com.picacomic.fregata.utils.e
import com.squareup.picasso.Picasso

/* JADX INFO: loaded from: classes.dex */
class LoginActivity : BaseActivity() {
    var countDownTimer: CountDownTimer? = null
    var frameLayout_backgroundWhite: FrameLayout? = null
    var iu: ImageView? = null
    var iv: ImageView? = null
    var iw: Animation? = null
    var ix: Animation? = null
    var iy: Animation? = null

    /* JADX WARN: Type inference failed for: r7v4, types: [com.picacomic.fregata.activities.LoginActivity$1] */
    // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onCreate(bundle: Bundle?) {
        super.onCreate(bundle)
        setContentView(R.layout.activity_login)
        this.iu = findViewById<View?>(R.id.imageView_activity_login_background) as ImageView
        this.iv = findViewById<View?>(R.id.imageView_activity_login_background_blur) as ImageView
        this.frameLayout_backgroundWhite =
            findViewById<View?>(R.id.frameLayout_activity_login_background_white) as FrameLayout
        Picasso.with(this).load(R.drawable.splash_bg_1).into(this.iu)
        Picasso.with(this).load(R.drawable.splash_bg_1_blur).into(this.iv)
        this.iw = AnimationUtils.loadAnimation(this, R.anim.login_bg_image_fade_in)
        this.iy = AnimationUtils.loadAnimation(this, R.anim.login_bg_image_fade_out)
        this.ix = AnimationUtils.loadAnimation(this, R.anim.login_bg_white_fade_in)
        if (bundle == null) {
            try {
                if (e.x(this)) {
                    this.iv!!.setVisibility(8)
                    this.frameLayout_backgroundWhite!!.setVisibility(8)
                } else {
                    this.iu!!.startAnimation(this.iy)
                    this.iv!!.startAnimation(this.iw)
                    this.frameLayout_backgroundWhite!!.startAnimation(this.ix)
                }
            } catch (e: Exception) {
                e.printStackTrace()
                Toast.makeText(this, "Start Animation Error", 0).show()
            }
            this.countDownTimer = object : CountDownTimer(
                getResources().getInteger(R.integer.animation_login_bg_white_fade_offset).toLong(),
                getResources().getInteger(R.integer.animation_login_bg_fade_offset).toLong()
            ) {
                // from class: com.picacomic.fregata.activities.LoginActivity.1
                // android.os.CountDownTimer
                override fun onTick(j: Long) {
                }

                // android.os.CountDownTimer
                override fun onFinish() {
                    if (this@LoginActivity.getApplicationContext() != null && e.x(this@LoginActivity.getApplicationContext())) {
                        this@LoginActivity.iv!!.setVisibility(0)
                        this@LoginActivity.frameLayout_backgroundWhite!!.setVisibility(0)
                    }
                    try {
                        this@LoginActivity.getSupportFragmentManager().beginTransaction()
                            .add(R.id.container, LoginFragment(), LoginFragment.TAG).commit()
                    } catch (e2: Exception) {
                        e2.printStackTrace()
                    }
                }
            }.start()
        }
    }

    // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    override fun onDestroy() {
        if (this.countDownTimer != null) {
            this.countDownTimer!!.cancel()
        }
        super.onDestroy()
    }
}
