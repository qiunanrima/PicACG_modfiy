package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicCollectionView_ViewBinding implements Unbinder {
    private ComicCollectionView sC;

    @UiThread
    public ComicCollectionView_ViewBinding(ComicCollectionView comicCollectionView, View view) {
        this.sC = comicCollectionView;
        comicCollectionView.imageView_icon = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_collection_view_icon, "field 'imageView_icon'", ImageView.class);
        comicCollectionView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_collection_view_title, "field 'textView_title'", TextView.class);
        comicCollectionView.textView_count = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_collection_view_count, "field 'textView_count'", TextView.class);
        comicCollectionView.linearLayout_content = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comic_collection_view_content, "field 'linearLayout_content'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicCollectionView comicCollectionView = this.sC;
        if (comicCollectionView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sC = null;
        comicCollectionView.imageView_icon = null;
        comicCollectionView.textView_title = null;
        comicCollectionView.textView_count = null;
        comicCollectionView.linearLayout_content = null;
    }
}
