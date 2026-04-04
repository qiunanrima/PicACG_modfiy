package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class HomeFragment_ViewBinding implements Unbinder {
    private HomeFragment pz;

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        this.pz = homeFragment;
        homeFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        homeFragment.viewPager_banner = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager_home_banner, "field 'viewPager_banner'", ViewPager.class);
        homeFragment.textView_bannerTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_home_banner_title, "field 'textView_bannerTitle'", TextView.class);
        homeFragment.linearLayout_pagerIndicators = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_banner_pager_indicators, "field 'linearLayout_pagerIndicators'", LinearLayout.class);
        homeFragment.linearLayout_announcements = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_announcements, "field 'linearLayout_announcements'", LinearLayout.class);
        homeFragment.linearLayout_collection_1 = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_collection_1, "field 'linearLayout_collection_1'", LinearLayout.class);
        homeFragment.linearLayout_collection_2 = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_collection_2, "field 'linearLayout_collection_2'", LinearLayout.class);
        homeFragment.linearLayout_collection_3 = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_collection_3, "field 'linearLayout_collection_3'", LinearLayout.class);
        homeFragment.linearLayout_collection_4 = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_collection_4, "field 'linearLayout_collection_4'", LinearLayout.class);
        homeFragment.linearLayout_collection_5 = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_home_collection_5, "field 'linearLayout_collection_5'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HomeFragment homeFragment = this.pz;
        if (homeFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.pz = null;
        homeFragment.toolbar = null;
        homeFragment.viewPager_banner = null;
        homeFragment.textView_bannerTitle = null;
        homeFragment.linearLayout_pagerIndicators = null;
        homeFragment.linearLayout_announcements = null;
        homeFragment.linearLayout_collection_1 = null;
        homeFragment.linearLayout_collection_2 = null;
        homeFragment.linearLayout_collection_3 = null;
        homeFragment.linearLayout_collection_4 = null;
        homeFragment.linearLayout_collection_5 = null;
    }
}
