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
public class PicaAppContainerFragment_ViewBinding implements Unbinder {
    private PicaAppContainerFragment qv;

    @UiThread
    public PicaAppContainerFragment_ViewBinding(PicaAppContainerFragment picaAppContainerFragment, View view) {
        this.qv = picaAppContainerFragment;
        picaAppContainerFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        picaAppContainerFragment.tabLayout = (TabLayout) Utils.findRequiredViewAsType(view, R.id.tabs, "field 'tabLayout'", TabLayout.class);
        picaAppContainerFragment.viewPager_tags = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager_leaderboard, "field 'viewPager_tags'", ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PicaAppContainerFragment picaAppContainerFragment = this.qv;
        if (picaAppContainerFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qv = null;
        picaAppContainerFragment.toolbar = null;
        picaAppContainerFragment.tabLayout = null;
        picaAppContainerFragment.viewPager_tags = null;
    }
}
