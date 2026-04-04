package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class PicaAppListFragment_ViewBinding implements Unbinder {
    private PicaAppListFragment qE;

    @UiThread
    public PicaAppListFragment_ViewBinding(PicaAppListFragment picaAppListFragment, View view) {
        this.qE = picaAppListFragment;
        picaAppListFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        picaAppListFragment.recyclerView_list = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_chatroom_list, "field 'recyclerView_list'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PicaAppListFragment picaAppListFragment = this.qE;
        if (picaAppListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.qE = null;
        picaAppListFragment.toolbar = null;
        picaAppListFragment.recyclerView_list = null;
    }
}
