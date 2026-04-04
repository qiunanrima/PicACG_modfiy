package com.picacomic.fregata.activities;

import android.annotation.TargetApi;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.provider.Settings;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.PointerIconCompat;
import androidx.appcompat.app.AppCompatActivity;
import android.view.View;
import com.picacomic.fregata.a_pkg.i;
import com.picacomic.fregata.fragments.ChatroomContainerFragment;
import com.picacomic.fregata.fragments.ChatroomFragment;
import com.picacomic.fregata.fragments.CustomPicaAppContainerFragment;
import com.picacomic.fregata.fragments.ImagePopupFragment;
import com.picacomic.fregata.fragments.LockDialogFragment;
import com.picacomic.fregata.fragments.ProfilePopupFragment;
import com.picacomic.fregata.fragments.ProgressDialogFragment;
import com.picacomic.fregata.fragments.ProgressLoadingFragment;
import com.picacomic.fregata.fragments.TitleEditPopupFragment;
import com.picacomic.fregata.objects.UserProfileObject;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;

/* JADX INFO: loaded from: classes.dex */
public class BaseActivity extends AppCompatActivity {
    public static final String TAG = "BaseActivity";
    private long hm = 0;
    private CountDownTimer hn;
    i ho;

    static {
        androidx.appcompat.app.AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        androidx.appcompat.app.AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        super.onCreate(bundle);
        g.aw(this);
    }

    public void onBackPressed(View view) {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            this.ho.b(view);
        } else if (this instanceof MainActivity) {
            AlertDialogCenter.ageNotEnough(this);
        } else {
            super.onBackPressed();
        }
        bC();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            ChatroomFragment chatroomFragment = (ChatroomFragment) getSupportFragmentManager().findFragmentByTag(ChatroomFragment.TAG);
            ChatroomContainerFragment chatroomContainerFragment = (ChatroomContainerFragment) getSupportFragmentManager().findFragmentByTag(ChatroomContainerFragment.TAG);
            CustomPicaAppContainerFragment customPicaAppContainerFragment = (CustomPicaAppContainerFragment) getSupportFragmentManager().findFragmentByTag(CustomPicaAppContainerFragment.TAG);
            if (chatroomFragment != null && chatroomFragment.isVisible()) {
                this.ho.b(chatroomFragment.getView());
            } else if (chatroomContainerFragment != null && chatroomContainerFragment.isVisible()) {
                this.ho.b(chatroomContainerFragment.getView());
            } else if (customPicaAppContainerFragment != null && customPicaAppContainerFragment.isVisible()) {
                this.ho.b(customPicaAppContainerFragment.getView());
            } else {
                super.onBackPressed();
            }
        } else if (this instanceof MainActivity) {
            AlertDialogCenter.leavePica(this, new View.OnClickListener() { // from class: com.picacomic.fregata.activities.BaseActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BaseActivity.this.finishAffinity();
                    BaseActivity.this.finish();
                    System.exit(0);
                }
            });
        } else {
            super.onBackPressed();
        }
        bC();
    }

    public void a(i iVar) {
        this.ho = iVar;
    }

    public void bA() {
        if (((ProgressLoadingFragment) getSupportFragmentManager().findFragmentByTag(ProgressLoadingFragment.TAG)) == null) {
            getSupportFragmentManager().beginTransaction().add(new ProgressLoadingFragment(), ProgressLoadingFragment.TAG).commitAllowingStateLoss();
        }
    }

    public void bB() {
        if (((ProgressDialogFragment) getSupportFragmentManager().findFragmentByTag(ProgressDialogFragment.TAG)) == null) {
            getSupportFragmentManager().beginTransaction().add(ProgressDialogFragment.dH(), ProgressDialogFragment.TAG).commitAllowingStateLoss();
        }
    }

    public void C(String str) {
        if (((ProgressDialogFragment) getSupportFragmentManager().findFragmentByTag(ProgressDialogFragment.TAG)) != null || getSupportFragmentManager() == null) {
            return;
        }
        try {
            getSupportFragmentManager().beginTransaction().add(ProgressDialogFragment.ai(str), ProgressDialogFragment.TAG).commitAllowingStateLoss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void bC() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager == null) {
            f.aA("dismiss null manager");
            return;
        }
        if (Math.abs(this.hm - System.currentTimeMillis()) < 50) {
            this.hm = System.currentTimeMillis();
            f.D(TAG, "call delay - last = " + this.hm + " current = " + System.currentTimeMillis());
            c(500L);
            return;
        }
        this.hm = System.currentTimeMillis();
        f.D(TAG, "No delay -   last = " + this.hm + " current = " + System.currentTimeMillis());
        try {
            ProgressDialogFragment progressDialogFragment = (ProgressDialogFragment) supportFragmentManager.findFragmentByTag(ProgressDialogFragment.TAG);
            if (progressDialogFragment != null) {
                f.aA("dismiss progress dialog");
                if (getSupportFragmentManager() != null) {
                    getSupportFragmentManager().beginTransaction().remove(progressDialogFragment).commit();
                }
            }
            ProgressLoadingFragment progressLoadingFragment = (ProgressLoadingFragment) supportFragmentManager.findFragmentByTag(ProgressLoadingFragment.TAG);
            if (progressLoadingFragment != null) {
                f.aA("dismiss progress loading");
                if (getSupportFragmentManager() != null) {
                    getSupportFragmentManager().beginTransaction().remove(progressLoadingFragment).commit();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void c(long j) {
        this.hn = new CountDownTimer(j, j) { // from class: com.picacomic.fregata.activities.BaseActivity.2
            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                BaseActivity.this.bC();
            }
        };
        this.hn.start();
    }

    public void D(String str) {
        if (((ImagePopupFragment) getSupportFragmentManager().findFragmentByTag(ImagePopupFragment.TAG)) != null || getSupportFragmentManager() == null) {
            return;
        }
        try {
            getSupportFragmentManager().beginTransaction().add(ImagePopupFragment.ae(str), ImagePopupFragment.TAG).commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void E(String str) {
        if (((ProfilePopupFragment) getSupportFragmentManager().findFragmentByTag(ProfilePopupFragment.TAG)) != null || getSupportFragmentManager() == null) {
            return;
        }
        try {
            getSupportFragmentManager().beginTransaction().add(ProfilePopupFragment.ah(str), ProfilePopupFragment.TAG).commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(UserProfileObject userProfileObject) {
        if (((ProfilePopupFragment) getSupportFragmentManager().findFragmentByTag(ProfilePopupFragment.TAG)) != null || getSupportFragmentManager() == null) {
            return;
        }
        try {
            getSupportFragmentManager().beginTransaction().add(ProfilePopupFragment.c(userProfileObject), ProfilePopupFragment.TAG).commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void h(String str, String str2) {
        if (((TitleEditPopupFragment) getSupportFragmentManager().findFragmentByTag(TitleEditPopupFragment.TAG)) != null || getSupportFragmentManager() == null) {
            return;
        }
        try {
            getSupportFragmentManager().beginTransaction().add(TitleEditPopupFragment.o(str, str2), TitleEditPopupFragment.TAG).commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void bD() {
        if (((LockDialogFragment) getSupportFragmentManager().findFragmentByTag(LockDialogFragment.TAG)) != null || getSupportFragmentManager() == null) {
            return;
        }
        try {
            getSupportFragmentManager().beginTransaction().add(new LockDialogFragment(), LockDialogFragment.TAG).commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @TargetApi(23)
    public boolean bE() {
        if (Settings.canDrawOverlays(this)) {
            return true;
        }
        startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName())), 1005);
        return false;
    }

    public void requestPermission() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, PointerIconCompat.TYPE_CONTEXT_MENU);
            }
            if (ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != 0) {
                ActivityCompat.requestPermissions(this, new String[]{"android.permission.RECORD_AUDIO"}, PointerIconCompat.TYPE_HELP);
            }
            if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
                ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, PointerIconCompat.TYPE_CONTEXT_MENU);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case PointerIconCompat.TYPE_CONTEXT_MENU /* 1001 */:
                if (iArr.length > 0) {
                    int i2 = iArr[0];
                }
                break;
            case PointerIconCompat.TYPE_HAND /* 1002 */:
                if (iArr.length > 0) {
                    int i3 = iArr[0];
                }
                break;
            case PointerIconCompat.TYPE_HELP /* 1003 */:
                if (iArr.length > 0) {
                    int i4 = iArr[0];
                }
                break;
            case PointerIconCompat.TYPE_WAIT /* 1004 */:
                if (iArr.length > 0 && iArr[0] == 0) {
                    startActivity(new Intent(this, (Class<?>) LoginActivity.class));
                    finish();
                } else {
                    finish();
                }
                break;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        String strY;
        super.onPause();
        if (this.hn != null) {
            bC();
            this.hn.cancel();
            this.hn = null;
        }
        if ((this instanceof LoginActivity) || (this instanceof PopupActivity) || (strY = e.y(this)) == null || strY.length() <= 0) {
            return;
        }
        bD();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        g.ar(this);
    }
}
