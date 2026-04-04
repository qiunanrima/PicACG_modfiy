package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicPageSimpleViewHolder_ViewBinding implements Unbinder {
    private ComicPageSimpleViewHolder sF;

    @UiThread
    public ComicPageSimpleViewHolder_ViewBinding(ComicPageSimpleViewHolder comicPageSimpleViewHolder, View view) {
        this.sF = comicPageSimpleViewHolder;
        comicPageSimpleViewHolder.frameLayout_container = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_comic_page_recycler_view_cell_container, "field 'frameLayout_container'", RelativeLayout.class);
        comicPageSimpleViewHolder.textView_page = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_page_recycler_view_cell_page, "field 'textView_page'", TextView.class);
        comicPageSimpleViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_page_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicPageSimpleViewHolder comicPageSimpleViewHolder = this.sF;
        if (comicPageSimpleViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sF = null;
        comicPageSimpleViewHolder.frameLayout_container = null;
        comicPageSimpleViewHolder.textView_page = null;
        comicPageSimpleViewHolder.imageView_image = null;
    }
}
