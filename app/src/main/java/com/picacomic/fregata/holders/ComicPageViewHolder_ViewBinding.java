package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicPageViewHolder_ViewBinding implements Unbinder {
    private ComicPageViewHolder sG;

    @UiThread
    public ComicPageViewHolder_ViewBinding(ComicPageViewHolder comicPageViewHolder, View view) {
        this.sG = comicPageViewHolder;
        comicPageViewHolder.frameLayout_container = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_comic_page_recycler_view_cell_container, "field 'frameLayout_container'", FrameLayout.class);
        comicPageViewHolder.textView_page = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_page_recycler_view_cell_page, "field 'textView_page'", TextView.class);
        comicPageViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_page_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicPageViewHolder comicPageViewHolder = this.sG;
        if (comicPageViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sG = null;
        comicPageViewHolder.frameLayout_container = null;
        comicPageViewHolder.textView_page = null;
        comicPageViewHolder.imageView_image = null;
    }
}
