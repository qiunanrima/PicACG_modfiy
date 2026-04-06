package com.picacomic.fregata.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.picacomic.fregata.databinding.ActivitySplashBinding;
import com.picacomic.fregata.MyApplication;
import com.picacomic.fregata.R;
import com.picacomic.fregata.compose.views.PicaSplashComposeView;
import com.picacomic.fregata.objects.responses.WakaInitResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import java.util.ArrayList;
import java.util.HashSet;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class SplashActivity extends BaseActivity {
    public static final String TAG = "SplashActivity";
    public static boolean iV = false;

    static {
        androidx.appcompat.app.AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    ActivitySplashBinding binding;
    PicaSplashComposeView composeView_splash;
    Call<WakaInitResponse> iW;

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.binding = ActivitySplashBinding.inflate(getLayoutInflater());
        setContentView(this.binding.getRoot());

        this.composeView_splash = this.binding.composeViewSplash;
        this.composeView_splash.setLoading(true);
        this.composeView_splash.setShowError(false);
        this.composeView_splash.setShowOptions(false);
        this.composeView_splash.setOnRetryAction(new Runnable() { // from class: com.picacomic.fregata.activities.SplashActivity.1
            @Override // java.lang.Runnable
            public void run() {
                SplashActivity.this.composeView_splash.setShowError(false);
                SplashActivity.this.composeView_splash.setShowOptions(false);
                SplashActivity.this.composeView_splash.setLoading(true);
                SplashActivity.this.w(3);
            }
        });
        this.composeView_splash.setOnServer1Action(new Runnable() { // from class: com.picacomic.fregata.activities.SplashActivity.2
            @Override // java.lang.Runnable
            public void run() {
                e.p((Context) SplashActivity.this, false);
                e.i(SplashActivity.this, 1);
                SplashActivity.this.bZ();
            }
        });
        this.composeView_splash.setOnServer2Action(new Runnable() { // from class: com.picacomic.fregata.activities.SplashActivity.3
            @Override // java.lang.Runnable
            public void run() {
                e.p((Context) SplashActivity.this, true);
                e.i(SplashActivity.this, 2);
                try {
                    MyApplication.bw();
                    SplashActivity.this.bZ();
                } catch (Exception e) {
                    e.printStackTrace();
                    Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show();
                    SplashActivity.this.finishAffinity();
                    SplashActivity.this.finish();
                    System.exit(0);
                }
            }
        });
        this.composeView_splash.setOnServer3Action(new Runnable() { // from class: com.picacomic.fregata.activities.SplashActivity.4
            @Override // java.lang.Runnable
            public void run() {
                e.p((Context) SplashActivity.this, true);
                e.i(SplashActivity.this, 3);
                try {
                    SplashActivity.this.bZ();
                } catch (Exception e) {
                    e.printStackTrace();
                    Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show();
                    SplashActivity.this.finishAffinity();
                    SplashActivity.this.finish();
                    System.exit(0);
                }
            }
        });

        w(3);
        if (e.am(this) == null || e.am(this).equalsIgnoreCase("") || e.ao(this) == null) {
            return;
        }
        this.composeView_splash.setLoading(false);
        this.composeView_splash.setShowOptions(true);
    }

    public void w(final int i) {
        this.iW = new com.picacomic.fregata.b.e(this).dO().dM();
        this.iW.enqueue(new Callback<WakaInitResponse>() { // from class: com.picacomic.fregata.activities.SplashActivity.5
            @Override // retrofit2.Callback
            public void onResponse(Call<WakaInitResponse> call, Response<WakaInitResponse> response) {
                if (response != null && response.body() != null && response.body().getStatus().equalsIgnoreCase("OK")) {
                    if (response.body().getWaka() != null) {
                        f.aA("ADS BASE LINK = " + response.body().getWaka());
                        e.y(MyApplication.by(), response.body().getWaka());
                    }
                    if (response.body().getAdKeyword() != null) {
                        e.z(MyApplication.by(), response.body().getAdKeyword());
                    }
                    if (response.body().getAddresses() != null && response.body().getAddresses().size() > 0) {
                        ArrayList<String> addresses = response.body().getAddresses();
                        f.F(SplashActivity.TAG, "ADDRESS IP = " + response.body().getAddresses().toString());
                        e.a(MyApplication.by(), new HashSet(addresses));
                    }
                    if (SplashActivity.this.composeView_splash != null) {
                        SplashActivity.this.composeView_splash.setLoading(false);
                        SplashActivity.this.composeView_splash.setShowError(false);
                        SplashActivity.this.composeView_splash.setShowOptions(true);
                    }
                    if (response.body().getMessage() == null || response.body().getMessage().length() <= 1 || SplashActivity.this == null) {
                        return;
                    }
                    //AlertDialogCenter.showAnnouncementAlertDialog(SplashActivity.this, null, null, response.body().getMessage(), null, null);
                    return;
                }
                int i2 = i - 1;
                if (i2 < 0) {
                    if (SplashActivity.this.composeView_splash != null) {
                        SplashActivity.this.composeView_splash.setLoading(false);
                        SplashActivity.this.composeView_splash.setShowOptions(false);
                        SplashActivity.this.composeView_splash.setShowError(true);
                    }
                } else if (SplashActivity.this.composeView_splash != null) {
                    SplashActivity.this.w(i2);
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<WakaInitResponse> call, Throwable th) {
                th.printStackTrace();
                int i2 = i - 1;
                if (i2 < 0) {
                    if (SplashActivity.this.composeView_splash != null) {
                        SplashActivity.this.composeView_splash.setLoading(false);
                        SplashActivity.this.composeView_splash.setShowOptions(false);
                        SplashActivity.this.composeView_splash.setShowError(true);
                    }
                } else if (SplashActivity.this.composeView_splash != null) {
                    SplashActivity.iV = true;
                    SplashActivity.this.w(i2);
                }
            }
        });
    }

    public void bZ() {
        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
        finish();
    }
}
