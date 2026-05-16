package com.picacomic.fregata;

import android.content.Context;

import coil.Coil;
import coil.ImageLoader;
import coil.ImageLoaderFactory;

import com.orm.SugarApp;
import com.picacomic.fregata.b.b;
import com.picacomic.fregata.utils.NetworkSecurityHelper;
import com.picacomic.fregata.utils.d;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.LauncherIconHelper;

import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public class MyApplication extends SugarApp implements ImageLoaderFactory {
    public static final String TAG = "MyApplication";
    private static MyApplication hk;
    private static Context mAppContext;
    private d hl;

    public String getStringSigFromNative() {
        return "~d}$Q7$eIni=V)9\\RK/P.RM4;9[7|@   CA}b~OW!3?EV`:<>M7pddUBL5n|0/*Cn";
    }

    public String getStringConFromNative(String[] strArr) {
        if (strArr == null || strArr.length < 6) {
            return "";
        }
        return strArr[1] + strArr[2] + strArr[3] + strArr[4] + strArr[5];
    }

    public String getStringComFromNative() {
        return "1";
    }

    static {
        androidx.appcompat.app.AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    @Override // com.orm.SugarApp, android.app.Application
    public void onCreate() {
        super.onCreate();
        androidx.appcompat.app.AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        hk = this;
        s(getApplicationContext());
        LauncherIconHelper.syncLauncherIcon(this, e.al(this));
        setTheme(resolveThemeResId(this));
    }

    private static int resolveThemeResId(Context context) {
        int themeIndex = e.al(context);
        if (themeIndex == 2) {
            int nightMode = context.getResources().getConfiguration().uiMode & android.content.res.Configuration.UI_MODE_NIGHT_MASK;
            return nightMode == android.content.res.Configuration.UI_MODE_NIGHT_YES ? R.style.AppThemeNeonDark : R.style.AppThemeNeon;
        }
        return themeIndex == 0 ? R.style.AppTheme : R.style.AppThemeBlack;
    }

    public static synchronized void refreshCoilImageLoader() {
        if (mAppContext == null) {
            return;
        }
        Coil.setImageLoader((ImageLoaderFactory) () -> createCoilImageLoader(mAppContext));
    }

    @Override
    public ImageLoader newImageLoader() {
        return createCoilImageLoader(mAppContext != null ? mAppContext : this);
    }

    private static ImageLoader createCoilImageLoader(Context context) {
        return new ImageLoader.Builder(context)
                .okHttpClient(createImageOkHttpClientBuilder(context).build())
                .build();
    }

    private static OkHttpClient.Builder createImageOkHttpClientBuilder(Context context) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder().dns(new b());
        NetworkSecurityHelper.applySslPolicy(builder, context);
        return builder;
    }

    public static MyApplication bx() {
        return hk;
    }

    public static Context by() {
        return mAppContext;
    }

    public void s(Context context) {
        mAppContext = context;
    }

    public boolean bz() {
        StringBuilder sb = new StringBuilder();
        sb.append(getStringComFromNative());
        sb.append("");
        return sb.toString().equalsIgnoreCase("1");
    }

    public String c(String[] strArr) {
        if (this.hl == null) {
            this.hl = new d();
        }
        String str = "";
        for (String str2 : strArr) {
            str = str + str2 + ", ";
        }
        f.D(TAG, "RAW parameters = " + str);
        String stringConFromNative = getStringConFromNative(strArr);
        f.D(TAG, "CONCAT parameters = " + stringConFromNative);
        f.D(TAG, "CONCAT KEY = " + getStringSigFromNative());
        return this.hl.C(stringConFromNative, getStringSigFromNative());
    }
}
