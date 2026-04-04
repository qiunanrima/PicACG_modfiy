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
public class AnnouncementListFragment_ViewBinding implements Unbinder {
    private AnnouncementListFragment jT;

    @UiThread
    public AnnouncementListFragment_ViewBinding(AnnouncementListFragment announcementListFragment, View view) {
        this.jT = announcementListFragment;
        announcementListFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        announcementListFragment.recyclerView_apkVersions = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_announcement_list, "field 'recyclerView_apkVersions'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AnnouncementListFragment announcementListFragment = this.jT;
        if (announcementListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.jT = null;
        announcementListFragment.toolbar = null;
        announcementListFragment.recyclerView_apkVersions = null;
    }
}
