package com.picacomic.fregata.holders;

import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.picacomic.fregata.R;
import com.picacomic.fregata.utils.views.ComicThumbImageView;

/* JADX INFO: loaded from: classes.dex */
public class SingleImageTextView_ViewBinding implements Unbinder {
    private SingleImageTextView sX;

    @UiThread
    public SingleImageTextView_ViewBinding(SingleImageTextView singleImageTextView, View view) {
        this.sX = singleImageTextView;
        singleImageTextView.imageView_image = (ComicThumbImageView) Utils.findRequiredViewAsType(view, R.id.imageView_single_image_text_view_image, "field 'imageView_image'", ComicThumbImageView.class);
        singleImageTextView.textView_title = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_single_image_text_view_title, "field 'textView_title'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SingleImageTextView singleImageTextView = this.sX;
        if (singleImageTextView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sX = null;
        singleImageTextView.imageView_image = null;
        singleImageTextView.textView_title = null;
    }
}
