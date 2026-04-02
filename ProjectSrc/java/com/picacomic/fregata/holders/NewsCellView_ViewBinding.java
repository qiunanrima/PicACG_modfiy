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
public class NewsCellView_ViewBinding implements Unbinder {
    private NewsCellView sT;

    @UiThread
    public NewsCellView_ViewBinding(NewsCellView newsCellView, View view) {
        this.sT = newsCellView;
        newsCellView.imageView_image = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_news_cell_image, "field 'imageView_image'", ImageView.class);
        newsCellView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_news_cell_title, "field 'textView_title'", TextView.class);
        newsCellView.textView_description = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_news_cell_description, "field 'textView_description'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewsCellView newsCellView = this.sT;
        if (newsCellView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sT = null;
        newsCellView.imageView_image = null;
        newsCellView.textView_title = null;
        newsCellView.textView_description = null;
    }
}
