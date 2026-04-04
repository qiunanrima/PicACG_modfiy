package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.ZoomableListView;

/* JADX INFO: loaded from: classes.dex */
public class ComicViewerListFragment_ViewBinding implements Unbinder {
    private ComicViewerListFragment of;

    @UiThread
    public ComicViewerListFragment_ViewBinding(ComicViewerListFragment comicViewerListFragment, View view) {
        this.of = comicViewerListFragment;
        comicViewerListFragment.listView_comic_viewer = (ZoomableListView) Utils.findRequiredViewAsType(view, R.id.listView_comic_viewer, "field 'listView_comic_viewer'", ZoomableListView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicViewerListFragment comicViewerListFragment = this.of;
        if (comicViewerListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.of = null;
        comicViewerListFragment.listView_comic_viewer = null;
    }
}
