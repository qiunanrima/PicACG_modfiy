package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import com.google.android.material.tabs.TabLayout;
import androidx.viewpager.widget.ViewPager;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsContainerFragment_ViewBinding implements Unbinder {
    private SupportUsContainerFragment rP;

    @UiThread
    public SupportUsContainerFragment_ViewBinding(SupportUsContainerFragment supportUsContainerFragment, View view) {
        this.rP = supportUsContainerFragment;
        supportUsContainerFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        supportUsContainerFragment.tabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tabs, "field 'tabLayout'", TabLayout.class);
        supportUsContainerFragment.viewPager_tags = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager_support_us, "field 'viewPager_tags'", ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SupportUsContainerFragment supportUsContainerFragment = this.rP;
        if (supportUsContainerFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.rP = null;
        supportUsContainerFragment.toolbar = null;
        supportUsContainerFragment.tabLayout = null;
        supportUsContainerFragment.viewPager_tags = null;
    }
}
