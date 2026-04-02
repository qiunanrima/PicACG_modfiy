package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ComicListFragment_ViewBinding implements Unbinder {
    private ComicListFragment nU;

    @UiThread
    public ComicListFragment_ViewBinding(ComicListFragment comicListFragment, View view) {
        this.nU = comicListFragment;
        comicListFragment.frameLayout_noComics = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.frameLayout_comic_list_no_comics, "field 'frameLayout_noComics'", FrameLayout.class);
        comicListFragment.coordinatorLayout = (CoordinatorLayout) Utils.findRequiredViewAsType(view, R.id.coordinatorLayout, "field 'coordinatorLayout'", CoordinatorLayout.class);
        comicListFragment.recyclerView_comicList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_comic_list, "field 'recyclerView_comicList'", RecyclerView.class);
        comicListFragment.imageView_empty = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_comic_list_empty, "field 'imageView_empty'", ImageView.class);
        comicListFragment.textView_totalPage = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_comic_list_total_page, "field 'textView_totalPage'", TextView.class);
        comicListFragment.editText_currentPage = (EditText) Utils.findRequiredViewAsType(view, R.id.editText_comic_list_current_page, "field 'editText_currentPage'", EditText.class);
        comicListFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        comicListFragment.buttons_filters = (Button[]) Utils.arrayOf((Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_forbidden, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_japanese, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_bl, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_heavy, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_pure_love, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_fake_girl, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_futari, "field 'buttons_filters'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.button_comic_list_filter_webtoon, "field 'buttons_filters'", Button.class));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicListFragment comicListFragment = this.nU;
        if (comicListFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.nU = null;
        comicListFragment.frameLayout_noComics = null;
        comicListFragment.coordinatorLayout = null;
        comicListFragment.recyclerView_comicList = null;
        comicListFragment.imageView_empty = null;
        comicListFragment.textView_totalPage = null;
        comicListFragment.editText_currentPage = null;
        comicListFragment.toolbar = null;
        comicListFragment.buttons_filters = null;
    }
}
