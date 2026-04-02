package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.SquareWebview;

/* JADX INFO: loaded from: classes.dex */
public class CategoryWebViewHolder_ViewBinding implements Unbinder {
    private CategoryWebViewHolder sn;

    @UiThread
    public CategoryWebViewHolder_ViewBinding(CategoryWebViewHolder categoryWebViewHolder, View view) {
        this.sn = categoryWebViewHolder;
        categoryWebViewHolder.webview = (SquareWebview) Utils.findRequiredViewAsType(view, R.id.webview_category_recycler_view_cell, "field 'webview'", SquareWebview.class);
        categoryWebViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_category_recycler_view_cell_title, "field 'textView_title'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CategoryWebViewHolder categoryWebViewHolder = this.sn;
        if (categoryWebViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sn = null;
        categoryWebViewHolder.webview = null;
        categoryWebViewHolder.textView_title = null;
    }
}
