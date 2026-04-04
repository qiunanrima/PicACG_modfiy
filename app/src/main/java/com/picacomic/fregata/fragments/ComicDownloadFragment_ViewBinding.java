package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicDownloadFragment_ViewBinding implements Unbinder {
    private ComicDownloadFragment nx;

    @UiThread
    public ComicDownloadFragment_ViewBinding(ComicDownloadFragment comicDownloadFragment, View view) {
        this.nx = comicDownloadFragment;
        comicDownloadFragment.button_download = (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_download_download, "field 'button_download'", Button.class);
        comicDownloadFragment.button_manage = (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_download_manage, "field 'button_manage'", Button.class);
        comicDownloadFragment.textView_testBroadcast = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_download_test_broadcast_receiver, "field 'textView_testBroadcast'", TextView.class);
        comicDownloadFragment.recyclerView_episode = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_comic_download_episode, "field 'recyclerView_episode'", RecyclerView.class);
        comicDownloadFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDownloadFragment comicDownloadFragment = this.nx;
        if (comicDownloadFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.nx = null;
        comicDownloadFragment.button_download = null;
        comicDownloadFragment.button_manage = null;
        comicDownloadFragment.textView_testBroadcast = null;
        comicDownloadFragment.recyclerView_episode = null;
        comicDownloadFragment.toolbar = null;
    }
}
