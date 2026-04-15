package com.picacomic.fregata;

import android.content.Context;

import com.orm.SugarApp;
import com.picacomic.fregata.b.b;
import com.picacomic.fregata.utils.d;
import com.picacomic.fregata.utils.e;
import com.picacomic.fregata.utils.f;
import com.picacomic.fregata.utils.LauncherIconHelper;
import com.squareup.picasso.Picasso;

import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public class MyApplication extends SugarApp {
    public static final String TAG = "MyApplication";
    private static MyApplication hk;
    private static Context mAppContext;
    private d hl;

    public native String getStringSigFromNative();

    public native String getStringConFromNative(String[] strArr);

    public native String getStringComFromNative();

    static {
        System.loadLibrary("JniTest");
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

    public static void bw() {
        f.D(TAG, "SET PICASSO INSTANCE");
        Picasso.setSingletonInstance(new Picasso.Builder(mAppContext).downloader(new com.a.a.a(new OkHttpClient().newBuilder().dns(new b()).build())).build());
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
