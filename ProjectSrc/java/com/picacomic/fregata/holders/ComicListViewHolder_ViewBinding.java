package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicListViewHolder_ViewBinding implements Unbinder {
    private ComicListViewHolder sE;

    @UiThread
    public ComicListViewHolder_ViewBinding(ComicListViewHolder comicListViewHolder, View view) {
        this.sE = comicListViewHolder;
        comicListViewHolder.linearLayout_container = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comic_list_recycler_view_cell_container, "field 'linearLayout_container'", LinearLayout.class);
        comicListViewHolder.linearLayout_filter = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comic_list_recycler_view_cell_filter, "field 'linearLayout_filter'", LinearLayout.class);
        comicListViewHolder.linearLayout_content = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_comic_list_recycler_view_cell_content, "field 'linearLayout_content'", LinearLayout.class);
        comicListViewHolder.frameLayout_forbidden = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_comic_list_recycler_view_cell_filter_forbidden, "field 'frameLayout_forbidden'", FrameLayout.class);
        comicListViewHolder.frameLayout_nonChinese = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_comic_list_recycler_view_cell_filter_non_chinese, "field 'frameLayout_nonChinese'", FrameLayout.class);
        comicListViewHolder.frameLayout_bl = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_comic_list_recycler_view_cell_filter_bl, "field 'frameLayout_bl'", FrameLayout.class);
        comicListViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_list_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
        comicListViewHolder.textView_name = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_name, "field 'textView_name'", TextView.class);
        comicListViewHolder.textView_author = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_author, "field 'textView_author'", TextView.class);
        comicListViewHolder.textView_category = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_category, "field 'textView_category'", TextView.class);
        comicListViewHolder.textView_likeCount = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_like_count, "field 'textView_likeCount'", TextView.class);
        comicListViewHolder.textView_forbidden = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_filter_forbidden, "field 'textView_forbidden'", TextView.class);
        comicListViewHolder.textView_nonChinese = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_filter_non_chinese, "field 'textView_nonChinese'", TextView.class);
        comicListViewHolder.textView_bl = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_recycler_view_cell_filter_bl, "field 'textView_bl'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicListViewHolder comicListViewHolder = this.sE;
        if (comicListViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sE = null;
        comicListViewHolder.linearLayout_container = null;
        comicListViewHolder.linearLayout_filter = null;
        comicListViewHolder.linearLayout_content = null;
        comicListViewHolder.frameLayout_forbidden = null;
        comicListViewHolder.frameLayout_nonChinese = null;
        comicListViewHolder.frameLayout_bl = null;
        comicListViewHolder.imageView_image = null;
        comicListViewHolder.textView_name = null;
        comicListViewHolder.textView_author = null;
        comicListViewHolder.textView_category = null;
        comicListViewHolder.textView_likeCount = null;
        comicListViewHolder.textView_forbidden = null;
        comicListViewHolder.textView_nonChinese = null;
        comicListViewHolder.textView_bl = null;
    }
}
