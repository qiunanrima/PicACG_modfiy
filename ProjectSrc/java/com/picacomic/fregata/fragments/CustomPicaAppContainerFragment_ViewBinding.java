package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import androidx.viewpager.widget.ViewPager;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CustomPicaAppContainerFragment_ViewBinding implements Unbinder {
    private CustomPicaAppContainerFragment oR;

    @UiThread
    public CustomPicaAppContainerFragment_ViewBinding(CustomPicaAppContainerFragment customPicaAppContainerFragment, View view) {
        this.oR = customPicaAppContainerFragment;
        customPicaAppContainerFragment.viewPage_picaApp = (ViewPager) Utils.findRequiredViewAsType(view, R.id.viewPager_custom_pica_app, "field 'viewPage_picaApp'", ViewPager.class);
        customPicaAppContainerFragment.fab_add = (FloatingActionButton) Utils.findRequiredViewAsType(view, R.id.fab_add, "field 'fab_add'", FloatingActionButton.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CustomPicaAppContainerFragment customPicaAppContainerFragment = this.oR;
        if (customPicaAppContainerFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.oR = null;
        customPicaAppContainerFragment.viewPage_picaApp = null;
        customPicaAppContainerFragment.fab_add = null;
    }
}
