package com.picacomic.fregata.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.picacomic.fregata.databinding.ActivitySplashBinding;
import com.picacomic.fregata.MyApplication;
import com.picacomic.fregata.R;
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
public class SplashActivity extends BaseActivity implements View.OnClickListener {
    public static final String TAG = "SplashActivity";
    public static boolean iV = false;

    static {
        androidx.appcompat.app.AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    ActivitySplashBinding binding;
    Button button_error;
    Button button_server1;
    Button button_server2;
    Button button_server3;
    Call<WakaInitResponse> iW;
    LinearLayout linearLayout_error;
    LinearLayout linearLayout_options;

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.binding = ActivitySplashBinding.inflate(getLayoutInflater());
        setContentView(this.binding.getRoot());
        
        this.button_error = this.binding.buttonSplashError;
        this.button_server1 = this.binding.buttonSplashServer1;
        this.button_server2 = this.binding.buttonSplashServer2;
        this.button_server3 = this.binding.buttonSplashServer3;
        this.linearLayout_error = this.binding.linearLayoutSplashError;
        this.linearLayout_options = this.binding.linearLayoutSplashOptions;

        w(3);
        this.button_server1.setOnClickListener(this);
        this.button_server2.setOnClickListener(this);
        this.button_server3.setOnClickListener(this);
        this.button_error.setOnClickListener(this);
        if (e.am(this) == null || e.am(this).equalsIgnoreCase("") || e.ao(this) == null) {
            return;
        }
        this.linearLayout_options.setVisibility(0);
    }

    public void w(final int i) {
        this.iW = new com.picacomic.fregata.b.e(this).dO().dM();
        this.iW.enqueue(new Callback<WakaInitResponse>() { // from class: com.picacomic.fregata.activities.SplashActivity.1
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
                    if (SplashActivity.this.linearLayout_options != null) {
                        SplashActivity.this.linearLayout_options.setVisibility(0);
                    }
                    if (response.body().getMessage() == null || response.body().getMessage().length() <= 1 || SplashActivity.this == null) {
                        return;
                    }
                    //AlertDialogCenter.showAnnouncementAlertDialog(SplashActivity.this, null, null, response.body().getMessage(), null, null);
                    return;
                }
                int i2 = i - 1;
                if (i2 < 0) {
                    if (SplashActivity.this.linearLayout_options != null) {
                        SplashActivity.this.linearLayout_error.setVisibility(0);
                    }
                } else if (SplashActivity.this.linearLayout_options != null) {
                    SplashActivity.this.w(i2);
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<WakaInitResponse> call, Throwable th) {
                th.printStackTrace();
                int i2 = i - 1;
                if (i2 < 0) {
                    if (SplashActivity.this.linearLayout_error != null) {
                        SplashActivity.this.linearLayout_error.setVisibility(0);
                    }
                } else if (SplashActivity.this.linearLayout_error != null) {
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.button_server1) {
            e.p((Context) this, false);
            e.i(this, 1);
            bZ();
        }
        if (view == this.button_server2) {
            e.p((Context) this, true);
            e.i(this, 2);
            try {
                MyApplication.bw();
                bZ();
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show();
                finishAffinity();
                finish();
                System.exit(0);
            }
        }
        if (view == this.button_server3) {
            e.p((Context) this, true);
            e.i(this, 3);
            try {
                bZ();
            } catch (Exception e2) {
                e2.printStackTrace();
                Toast.makeText(MyApplication.by(), R.string.restart_application, 1).show();
                finishAffinity();
                finish();
                System.exit(0);
            }
        }
        if (view != this.button_error || this.linearLayout_error == null) {
            return;
        }
        this.linearLayout_error.setVisibility(8);
        w(3);
    }
}
