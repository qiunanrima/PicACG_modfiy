package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppFragment_ViewBinding implements Unbinder {
    private PicaAppFragment qA;

    @UiThread
    public PicaAppFragment_ViewBinding(PicaAppFragment picaAppFragment, View view) {
        this.qA = picaAppFragment;
        picaAppFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        picaAppFragment.linearLayoutWeb = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_web, "field 'linearLayoutWeb'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PicaAppFragment picaAppFragment = this.qA;
        if (picaAppFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qA = null;
        picaAppFragment.toolbar = null;
        picaAppFragment.linearLayoutWeb = null;
    }
}
