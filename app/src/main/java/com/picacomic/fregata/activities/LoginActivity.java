package com.picacomic.fregata.activities;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.picacomic.fregata.R;
import com.picacomic.fregata.fragments.LoginFragment;
import com.picacomic.fregata.utils.e;
import com.squareup.picasso.Picasso;

/* JADX INFO: loaded from: classes.dex */
public class LoginActivity extends BaseActivity {
    CountDownTimer countDownTimer;
    FrameLayout frameLayout_backgroundWhite;
    ImageView iu;
    ImageView iv;
    Animation iw;
    Animation ix;
    Animation iy;

    /* JADX WARN: Type inference failed for: r7v4, types: [com.picacomic.fregata.activities.LoginActivity$1] */
    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        this.iu = (ImageView) findViewById(R.id.imageView_activity_login_background);
        this.iv = (ImageView) findViewById(R.id.imageView_activity_login_background_blur);
        this.frameLayout_backgroundWhite = (FrameLayout) findViewById(R.id.frameLayout_activity_login_background_white);
        Picasso.with(this).load(R.drawable.splash_bg_1).into(this.iu);
        Picasso.with(this).load(R.drawable.splash_bg_1_blur).into(this.iv);
        this.iw = AnimationUtils.loadAnimation(this, R.anim.login_bg_image_fade_in);
        this.iy = AnimationUtils.loadAnimation(this, R.anim.login_bg_image_fade_out);
        this.ix = AnimationUtils.loadAnimation(this, R.anim.login_bg_white_fade_in);
        if (bundle == null) {
            try {
                if (e.x(this)) {
                    this.iv.setVisibility(8);
                    this.frameLayout_backgroundWhite.setVisibility(8);
                } else {
                    this.iu.startAnimation(this.iy);
                    this.iv.startAnimation(this.iw);
                    this.frameLayout_backgroundWhite.startAnimation(this.ix);
                }
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(this, "Start Animation Error", 0).show();
            }
            this.countDownTimer = new CountDownTimer(getResources().getInteger(R.integer.animation_login_bg_white_fade_offset), getResources().getInteger(R.integer.animation_login_bg_fade_offset)) { // from class: com.picacomic.fregata.activities.LoginActivity.1
                @Override // android.os.CountDownTimer
                public void onTick(long j) {
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    if (LoginActivity.this.getApplicationContext() != null && e.x(LoginActivity.this.getApplicationContext())) {
                        LoginActivity.this.iv.setVisibility(0);
                        LoginActivity.this.frameLayout_backgroundWhite.setVisibility(0);
                    }
                    try {
                        LoginActivity.this.getSupportFragmentManager().beginTransaction().add(R.id.container, new LoginFragment(), LoginFragment.TAG).commit();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }.start();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (this.countDownTimer != null) {
            this.countDownTimer.cancel();
        }
        super.onDestroy();
    }
}
