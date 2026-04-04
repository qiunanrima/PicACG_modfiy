package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class SupportUsPayPalFragment_ViewBinding implements Unbinder {
    private SupportUsPayPalFragment rW;

    @UiThread
    public SupportUsPayPalFragment_ViewBinding(SupportUsPayPalFragment supportUsPayPalFragment, View view) {
        this.rW = supportUsPayPalFragment;
        supportUsPayPalFragment.recyclerView_paypal = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_support_us_paypal, "field 'recyclerView_paypal'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SupportUsPayPalFragment supportUsPayPalFragment = this.rW;
        if (supportUsPayPalFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.rW = null;
        supportUsPayPalFragment.recyclerView_paypal = null;
    }
}
