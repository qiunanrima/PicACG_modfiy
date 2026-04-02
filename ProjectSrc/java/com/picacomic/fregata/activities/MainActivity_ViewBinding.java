package com.picacomic.fregata.activities;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatImageButton;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.BannerWebview;
import com.picacomic.fregata.utils.views.PopupWebview;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity_ViewBinding implements Unbinder {
    private MainActivity iU;

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.iU = mainActivity;
        mainActivity.button_home = (AppCompatImageButton) Utils.findRequiredViewAsType(view, R.id.button_tabbar_home, "field 'button_home'", AppCompatImageButton.class);
        mainActivity.linearLayout_tabbar = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_tabbar, "field 'linearLayout_tabbar'", LinearLayout.class);
        mainActivity.bannerWebview = (BannerWebview) Utils.findRequiredViewAsType(view, R.id.bannerWebview, "field 'bannerWebview'", BannerWebview.class);
        mainActivity.popupWebview = (PopupWebview) Utils.findRequiredViewAsType(view, R.id.popupWebview, "field 'popupWebview'", PopupWebview.class);
        mainActivity.button_controlExp = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_control_exp, "field 'button_controlExp'", ImageButton.class);
        mainActivity.button_controlBlock = (ImageButton) Utils.findRequiredViewAsType(view, R.id.imageButton_control_block, "field 'button_controlBlock'", ImageButton.class);
        mainActivity.buttons_tabbar = (AppCompatImageButton[]) Utils.arrayOf((AppCompatImageButton) Utils.findRequiredViewAsType(view, R.id.button_tabbar_home, "field 'buttons_tabbar'", AppCompatImageButton.class), (AppCompatImageButton) Utils.findRequiredViewAsType(view, R.id.button_tabbar_category, "field 'buttons_tabbar'", AppCompatImageButton.class), (AppCompatImageButton) Utils.findRequiredViewAsType(view, R.id.button_tabbar_game, "field 'buttons_tabbar'", AppCompatImageButton.class), (AppCompatImageButton) Utils.findRequiredViewAsType(view, R.id.button_tabbar_profile, "field 'buttons_tabbar'", AppCompatImageButton.class), (AppCompatImageButton) Utils.findRequiredViewAsType(view, R.id.button_tabbar_setting, "field 'buttons_tabbar'", AppCompatImageButton.class));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainActivity mainActivity = this.iU;
        if (mainActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.iU = null;
        mainActivity.button_home = null;
        mainActivity.linearLayout_tabbar = null;
        mainActivity.bannerWebview = null;
        mainActivity.popupWebview = null;
        mainActivity.button_controlExp = null;
        mainActivity.button_controlBlock = null;
        mainActivity.buttons_tabbar = null;
    }
}
