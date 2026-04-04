package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.ToggleButton;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class SettingFragment_ViewBinding implements Unbinder {
    private SettingFragment rL;

    @UiThread
    public SettingFragment_ViewBinding(SettingFragment settingFragment, View view) {
        this.rL = settingFragment;
        settingFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        settingFragment.textView_screenOrientation = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_screen_orientation, "field 'textView_screenOrientation'", TextView.class);
        settingFragment.textView_scrollDirection = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_scroll_direction, "field 'textView_scrollDirection'", TextView.class);
        settingFragment.textView_autoPagingInterval = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_auto_paging_interval, "field 'textView_autoPagingInterval'", TextView.class);
        settingFragment.textView_apkVersionTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_apk_version_title, "field 'textView_apkVersionTitle'", TextView.class);
        settingFragment.textView_apkVersion = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_apk_version, "field 'textView_apkVersion'", TextView.class);
        settingFragment.textView_cacheTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_cache_title, "field 'textView_cacheTitle'", TextView.class);
        settingFragment.textView_cache = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_cache, "field 'textView_cache'", TextView.class);
        settingFragment.textView_continueDownloadComic = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_continue_download_comic, "field 'textView_continueDownloadComic'", TextView.class);
        settingFragment.textView_pinTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_pin_title, "field 'textView_pinTitle'", TextView.class);
        settingFragment.textView_pin = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_pin, "field 'textView_pin'", TextView.class);
        settingFragment.textView_password = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_password, "field 'textView_password'", TextView.class);
        settingFragment.textView_faq = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_faq, "field 'textView_faq'", TextView.class);
        settingFragment.textView_chatroomService = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_chatroom_service, "field 'textView_chatroomService'", TextView.class);
        settingFragment.textView_imageQuality = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_image_quality, "field 'textView_imageQuality'", TextView.class);
        settingFragment.textView_themeColor = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_setting_theme_color, "field 'textView_themeColor'", TextView.class);
        settingFragment.button_logout = (Button) Utils.findRequiredViewAsType(view, R.id.button_setting_logout, "field 'button_logout'", Button.class);
        settingFragment.toggleButton_nightMode = (ToggleButton) Utils.findRequiredViewAsType(view, R.id.toggleButton_setting_night_mode, "field 'toggleButton_nightMode'", ToggleButton.class);
        settingFragment.toggleButton_volumePagingControl = (ToggleButton) Utils.findRequiredViewAsType(view, R.id.toggleButton_setting_volume_paging_control, "field 'toggleButton_volumePagingControl'", ToggleButton.class);
        settingFragment.toggleButton_testingVersion = (ToggleButton) Utils.findRequiredViewAsType(view, R.id.toggleButton_setting_comic_viewer_testing_version, "field 'toggleButton_testingVersion'", ToggleButton.class);
        settingFragment.toggleButton_performanceEnhancement = (ToggleButton) Utils.findRequiredViewAsType(view, R.id.toggleButton_setting_performance_enhancement, "field 'toggleButton_performanceEnhancement'", ToggleButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SettingFragment settingFragment = this.rL;
        if (settingFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.rL = null;
        settingFragment.toolbar = null;
        settingFragment.textView_screenOrientation = null;
        settingFragment.textView_scrollDirection = null;
        settingFragment.textView_autoPagingInterval = null;
        settingFragment.textView_apkVersionTitle = null;
        settingFragment.textView_apkVersion = null;
        settingFragment.textView_cacheTitle = null;
        settingFragment.textView_cache = null;
        settingFragment.textView_continueDownloadComic = null;
        settingFragment.textView_pinTitle = null;
        settingFragment.textView_pin = null;
        settingFragment.textView_password = null;
        settingFragment.textView_faq = null;
        settingFragment.textView_chatroomService = null;
        settingFragment.textView_imageQuality = null;
        settingFragment.textView_themeColor = null;
        settingFragment.button_logout = null;
        settingFragment.toggleButton_nightMode = null;
        settingFragment.toggleButton_volumePagingControl = null;
        settingFragment.toggleButton_testingVersion = null;
        settingFragment.toggleButton_performanceEnhancement = null;
    }
}
