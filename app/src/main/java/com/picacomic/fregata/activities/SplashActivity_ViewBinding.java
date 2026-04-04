package com.picacomic.fregata.activities;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class SplashActivity_ViewBinding implements Unbinder {
    private SplashActivity iZ;

    @UiThread
    public SplashActivity_ViewBinding(SplashActivity splashActivity, View view) {
        this.iZ = splashActivity;
        splashActivity.linearLayout_options = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_splash_options, "field 'linearLayout_options'", LinearLayout.class);
        splashActivity.linearLayout_error = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_splash_error, "field 'linearLayout_error'", LinearLayout.class);
        splashActivity.button_server1 = (Button) Utils.findRequiredViewAsType(view, R.id.button_splash_server1, "field 'button_server1'", Button.class);
        splashActivity.button_server2 = (Button) Utils.findRequiredViewAsType(view, R.id.button_splash_server2, "field 'button_server2'", Button.class);
        splashActivity.button_server3 = (Button) Utils.findRequiredViewAsType(view, R.id.button_splash_server3, "field 'button_server3'", Button.class);
        splashActivity.button_error = (Button) Utils.findRequiredViewAsType(view, R.id.button_splash_error, "field 'button_error'", Button.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SplashActivity splashActivity = this.iZ;
        if (splashActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.iZ = null;
        splashActivity.linearLayout_options = null;
        splashActivity.linearLayout_error = null;
        splashActivity.button_server1 = null;
        splashActivity.button_server2 = null;
        splashActivity.button_server3 = null;
        splashActivity.button_error = null;
    }
}
