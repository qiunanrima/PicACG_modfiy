package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class CategoryViewHolder_ViewBinding implements Unbinder {
    private CategoryViewHolder sm;

    @UiThread
    public CategoryViewHolder_ViewBinding(CategoryViewHolder categoryViewHolder, View view) {
        this.sm = categoryViewHolder;
        categoryViewHolder.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_category_recycler_view_cell_image, "field 'imageView_image'", ImageView.class);
        categoryViewHolder.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_category_recycler_view_cell_title, "field 'textView_title'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CategoryViewHolder categoryViewHolder = this.sm;
        if (categoryViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sm = null;
        categoryViewHolder.imageView_image = null;
        categoryViewHolder.textView_title = null;
    }
}
