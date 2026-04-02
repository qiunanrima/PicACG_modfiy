package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.ZoomableRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class ComicViewFragment_ViewBinding implements Unbinder {
    private ComicViewFragment oa;

    @UiThread
    public ComicViewFragment_ViewBinding(ComicViewFragment comicViewFragment, View view) {
        this.oa = comicViewFragment;
        comicViewFragment.recyclerView_comic_viewer = (ZoomableRecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_comic_viewer, "field 'recyclerView_comic_viewer'", ZoomableRecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicViewFragment comicViewFragment = this.oa;
        if (comicViewFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.oa = null;
        comicViewFragment.recyclerView_comic_viewer = null;
    }
}
