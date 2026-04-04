package com.picacomic.fregata.fragments;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CategoryFragment_ViewBinding implements Unbinder {
    private CategoryFragment kJ;

    @UiThread
    public CategoryFragment_ViewBinding(CategoryFragment categoryFragment, View view) {
        this.kJ = categoryFragment;
        categoryFragment.coordinatorLayout = (CoordinatorLayout) Utils.findRequiredViewAsType(view, R.id.coordinatorLayout, "field 'coordinatorLayout'", CoordinatorLayout.class);
        categoryFragment.linearLayout_keywords = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_category_keywords_list, "field 'linearLayout_keywords'", LinearLayout.class);
        categoryFragment.linearLayout_tags = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.linearLayout_category_tag_list, "field 'linearLayout_tags'", LinearLayout.class);
        categoryFragment.scrollView = (NestedScrollView) Utils.findRequiredViewAsType(view, R.id.scrollView, "field 'scrollView'", NestedScrollView.class);
        categoryFragment.recyclerView_category = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_category, "field 'recyclerView_category'", RecyclerView.class);
        categoryFragment.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        categoryFragment.searchView = (SearchView) Utils.findRequiredViewAsType(view, R.id.searchView, "field 'searchView'", SearchView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CategoryFragment categoryFragment = this.kJ;
        if (categoryFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.kJ = null;
        categoryFragment.coordinatorLayout = null;
        categoryFragment.linearLayout_keywords = null;
        categoryFragment.linearLayout_tags = null;
        categoryFragment.scrollView = null;
        categoryFragment.recyclerView_category = null;
        categoryFragment.toolbar = null;
        categoryFragment.searchView = null;
    }
}
