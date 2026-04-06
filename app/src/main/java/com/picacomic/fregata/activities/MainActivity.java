package com.picacomic.fregata.activities;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.appcompat.widget.AppCompatImageButton;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.picacomic.fregata.databinding.ActivityMainBinding;
import com.picacomic.fregata.compose.views.OnIntChangedListener;
import com.picacomic.fregata.compose.views.PicaMainBottomBarComposeView;
import com.google.gson.Gson;
import com.picacomic.fregata.R;
import com.picacomic.fregata.b.c;
import com.picacomic.fregata.b.d;
import com.picacomic.fregata.fragments.CategoryFragment;
import com.picacomic.fregata.fragments.GameFragment;
import com.picacomic.fregata.fragments.HomeFragment;
import com.picacomic.fregata.fragments.OneTimeUpdateQAFragment;
import com.picacomic.fregata.fragments.ProfileFragment;
import com.picacomic.fregata.fragments.SettingFragment;
import com.picacomic.fregata.objects.requests.AdjustExpBody;
import com.picacomic.fregata.objects.responses.GeneralResponse;
import com.picacomic.fregata.objects.responses.InitialResponse;
import com.picacomic.fregata.objects.responses.RegisterResponse;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.g;
import com.picacomic.fregata.utils.views.AlertDialogCenter;
import com.picacomic.fregata.utils.views.BannerWebview;
import com.picacomic.fregata.utils.views.PopupWebview;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BaseActivity implements View.OnClickListener {

    ActivityMainBinding binding;
    public BannerWebview bannerWebview;
    ImageButton button_controlBlock;
    ImageButton button_controlExp;
    PicaMainBottomBarComposeView composeView_tabbar;
    Animation iA;
    Animation iB;
    Animation iC;
    Animation iD;
    Animation iE;
    Call<GeneralResponse<InitialResponse>> iF;
    Call<RegisterResponse> iG;
    InitialResponse iH;
    RelativeLayout.LayoutParams iI;
    private int iJ;
    private int iK;
    long iL = 0;
    public boolean iM = false;
    public boolean iN = false;
    public PopupWebview popupWebview;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(this.binding.getRoot());
        
        this.bannerWebview = this.binding.bannerWebview;
        this.button_controlBlock = this.binding.imageButtonControlBlock;
        this.button_controlExp = this.binding.imageButtonControlExp;
        this.composeView_tabbar = this.binding.composeViewMainTabbar;
        this.popupWebview = this.binding.popupWebview;

        e.j(this, (String) null);
        e.l(this, (String) null);
        init();
        bF();
        bH();
        String strY = e.y(this);
        if (strY == null || strY.length() <= 0) {
            return;
        }
        bD();
    }

    public void bK() {
        this.iA = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_exit);
        this.iA.setAnimationListener(new Animation.AnimationListener() { // from class: com.picacomic.fregata.activities.MainActivity.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MainActivity.this.composeView_tabbar.setVisibility(8);
            }
        });
        this.iB = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_enter);
        this.iB.setAnimationListener(new Animation.AnimationListener() { // from class: com.picacomic.fregata.activities.MainActivity.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MainActivity.this.composeView_tabbar.setVisibility(0);
            }
        });
        this.iC = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_exit);
        this.iC.setAnimationListener(new Animation.AnimationListener() { // from class: com.picacomic.fregata.activities.MainActivity.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MainActivity.this.bannerWebview.setVisibility(8);
            }
        });
        this.iD = AnimationUtils.loadAnimation(this, R.anim.tabbar_anim_enter);
        this.iD.setAnimationListener(new Animation.AnimationListener() { // from class: com.picacomic.fregata.activities.MainActivity.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MainActivity.this.bannerWebview.setVisibility(0);
            }
        });
    }

    public void init() {
        bK();
    }

    public void t(int i) {
        bK();
        if (i == 0) {
            if (this.composeView_tabbar.getVisibility() != 0) {
                if (e.x(this)) {
                    this.composeView_tabbar.setVisibility(0);
                    return;
                } else {
                    this.composeView_tabbar.startAnimation(this.iB);
                    return;
                }
            }
            return;
        }
        if (this.composeView_tabbar.getVisibility() == 0) {
            if (e.x(this)) {
                this.composeView_tabbar.setVisibility(8);
            } else {
                this.composeView_tabbar.startAnimation(this.iA);
            }
        }
    }

    public void bV() {
        if (this.bannerWebview != null) {
            this.bannerWebview.setVisibility(8);
            this.bannerWebview.hide();
        }
    }

    public void F(String str) {
        if (this.bannerWebview == null) {
            this.bannerWebview = new BannerWebview(this);
        }
        this.bannerWebview.setVisibility(0);
        this.bannerWebview.show(str);
    }

    public void bF() {
        this.composeView_tabbar.setOnTabSelectedListener(new OnIntChangedListener() { // from class: com.picacomic.fregata.activities.MainActivity.11
            @Override // com.picacomic.fregata.compose.views.OnIntChangedListener
            public void onChanged(int i) {
                MainActivity.this.u(i);
            }
        });
    }

    public void bH() {
        u(0);
        bX();
        g.av(this);
    }

    public void bI() {
        if (this.iH == null || this.iH.latestApplication == null) {
            return;
        }
        f.D(TAG, this.iH.latestApplication.toString());
        if (this.iH.notification != null && !this.iH.notification.getNotificationId().equalsIgnoreCase(e.aj(this))) {
            e.x(this, this.iH.notification.getNotificationId());
            e.o((Context) this, true);
        } else {
            e.o((Context) this, false);
        }
        e.k(this, new Gson().toJson(this.iH.getCategories()));
        String version = this.iH.latestApplication.getVersion();
        if (g.C(this, version)) {
            AlertDialogCenter.showUpdateApkAlertDialog(this, this.iH.latestApplication, g.D(this, version));
        }
        if (this.iH.isIdUpdated) {
            return;
        }
        getSupportFragmentManager().popBackStack();
        getSupportFragmentManager().beginTransaction().replace(R.id.container, new OneTimeUpdateQAFragment(), OneTimeUpdateQAFragment.TAG).commit();
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        bK();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        bK();
    }

    @Override // com.picacomic.fregata.activities.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        if (this.iF != null) {
            this.iF.cancel();
        }
        if (this.iG != null) {
            this.iG.cancel();
        }
        if (this.iC != null) {
            this.iC.cancel();
        }
        if (this.iD != null) {
            this.iD.cancel();
        }
        if (this.iB != null) {
            this.iB.cancel();
        }
        if (this.iA != null) {
            this.iA.cancel();
        }
        if (this.iE != null) {
            this.iE.cancel();
        }
        super.onStop();
    }

    public void u(int i) {
        if (this.composeView_tabbar != null) {
            this.composeView_tabbar.setSelectedIndex(i);
            switch (i) {
                case 0:
                    getSupportFragmentManager().popBackStack();
                    getSupportFragmentManager().beginTransaction().replace(R.id.container, new HomeFragment(), HomeFragment.TAG).commit();
                    break;
                case 1:
                    getSupportFragmentManager().popBackStack();
                    getSupportFragmentManager().beginTransaction().replace(R.id.container, new CategoryFragment(), CategoryFragment.TAG).commit();
                    break;
                case 2:
                    getSupportFragmentManager().popBackStack();
                    getSupportFragmentManager().beginTransaction().replace(R.id.container, new GameFragment(), GameFragment.TAG).commit();
                    break;
                case 3:
                    getSupportFragmentManager().popBackStack();
                    getSupportFragmentManager().beginTransaction().replace(R.id.container, new ProfileFragment(), ProfileFragment.TAG).commit();
                    break;
                case 4:
                    getSupportFragmentManager().popBackStack();
                    getSupportFragmentManager().beginTransaction().replace(R.id.container, new SettingFragment(), SettingFragment.TAG).commit();
                    break;
            }
        }
    }

    public void bX() {
        this.iF = new d(this).dO().ak(e.z(this));
        this.iF.enqueue(new Callback<GeneralResponse<InitialResponse>>() { // from class: com.picacomic.fregata.activities.MainActivity.6
            @Override // retrofit2.Callback
            public void onResponse(Call<GeneralResponse<InitialResponse>> call, Response<GeneralResponse<InitialResponse>> response) {
                if (response.code() == 200) {
                    f.aA(response.body().data.toString());
                    MainActivity.this.iH = response.body().data;
                    String str = response.body().data.imageServer;
                    if (str != null && str.length() > 0) {
                        f.D(BaseActivity.TAG, "SET Image Storage");
                        e.q(MainActivity.this, str);
                    }
                } else {
                    try {
                        new c(MainActivity.this, response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                MainActivity.this.bI();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<GeneralResponse<InitialResponse>> call, Throwable th) {
                th.printStackTrace();
                new c(MainActivity.this).dN();
                MainActivity.this.bI();
            }
        });
    }

    public void a(int i, String str) {
        this.iG = new d(this).dO().a(e.z(this), new AdjustExpBody(i, str));
        this.iG.enqueue(new Callback<RegisterResponse>() { // from class: com.picacomic.fregata.activities.MainActivity.7
            @Override // retrofit2.Callback
            public void onResponse(Call<RegisterResponse> call, Response<RegisterResponse> response) {
                if (response.code() == 200) {
                    if (MainActivity.this != null) {
                        Toast.makeText(MainActivity.this, "ADUST SUCCESS", 0).show();
                    }
                } else {
                    try {
                        new c(MainActivity.this, response.code(), response.errorBody().string()).dN();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<RegisterResponse> call, Throwable th) {
                th.printStackTrace();
                new c(MainActivity.this).dN();
                MainActivity.this.bI();
            }
        });
    }

    public void bY() {
        this.iI = new RelativeLayout.LayoutParams(-2, -2);
        this.button_controlExp.setVisibility(0);
        this.button_controlBlock.setVisibility(0);
        this.iM = false;
        this.iN = false;
        this.button_controlBlock.setOnClickListener(new View.OnClickListener() { // from class: com.picacomic.fregata.activities.MainActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.v(2);
            }
        });
        this.button_controlExp.setOnTouchListener(new View.OnTouchListener() { // from class: com.picacomic.fregata.activities.MainActivity.9
            int iR;
            int iS;
            boolean iT;

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int rawX = (int) motionEvent.getRawX();
                int rawY = (int) motionEvent.getRawY();
                switch (motionEvent.getAction()) {
                    case 0:
                        this.iR = rawX;
                        this.iS = rawY;
                        this.iT = true;
                        MainActivity.this.iL = System.currentTimeMillis();
                        MainActivity.this.iJ = rawX - MainActivity.this.iI.leftMargin;
                        MainActivity.this.iK = rawY - MainActivity.this.iI.topMargin;
                        return false;
                    case 1:
                        if (System.currentTimeMillis() - MainActivity.this.iL < 500 && this.iT && MainActivity.this != null) {
                            MainActivity.this.v(1);
                        }
                        return false;
                    case 2:
                        if (Math.abs(this.iR - rawX) < 10 && Math.abs(this.iS - rawY) < 10) {
                            this.iT = true;
                        } else {
                            this.iT = false;
                        }
                        MainActivity.this.iI.leftMargin = rawX - MainActivity.this.iJ;
                        MainActivity.this.iI.topMargin = rawY - MainActivity.this.iK;
                        MainActivity.this.button_controlExp.setLayoutParams(MainActivity.this.iI);
                        return false;
                    default:
                        return false;
                }
            }
        });
    }

    public void v(int i) {
        if (i == 1) {
            if (this.iM) {
                l(false);
            } else {
                l(true);
            }
            m(false);
            return;
        }
        if (i == 2) {
            if (this.iN) {
                m(false);
            } else {
                m(true);
            }
            l(false);
        }
    }

    public void l(boolean z) {
        if (z) {
            this.button_controlExp.setImageResource(R.drawable.icon_exp);
            this.iM = true;
        } else {
            this.button_controlExp.setImageResource(R.drawable.icon_exp_gray);
            this.iM = false;
        }
    }

    public void m(boolean z) {
        if (z) {
            this.button_controlBlock.setImageResource(R.drawable.icon_block);
            this.iN = true;
        } else {
            this.button_controlBlock.setImageResource(R.drawable.icon_block_gray);
            this.iN = false;
        }
    }

    public void i(String str, final String str2) {
        View viewInflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(R.layout.dialog_exp_content_view, (ViewGroup) findViewById(android.R.id.content), false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.textView_exp_content_view_username);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.editText_exp_content_view_exp);
        textView.setText(str + "\nID: " + str2);
        new AlertDialog.Builder(this, R.style.MyAlertDialogStyle).setTitle(str).setView(viewInflate).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.activities.MainActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (editText == null || editText.getText() == null || editText.getText().toString().equalsIgnoreCase("")) {
                    return;
                }
                MainActivity.this.a(Integer.parseInt(editText.getText().toString()), str2);
                MainActivity.this.l(false);
                dialogInterface.dismiss();
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.picacomic.fregata.activities.MainActivity.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.l(false);
                dialogInterface.dismiss();
            }
        }).show();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        
    }
}
