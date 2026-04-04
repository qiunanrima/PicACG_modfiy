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
public class ComicRecommendationViewHolder_ViewBinding implements Unbinder {
    private ComicRecommendationViewHolder sH;

    @UiThread
    public ComicRecommendationViewHolder_ViewBinding(ComicRecommendationViewHolder comicRecommendationViewHolder, View view) {
        this.sH = comicRecommendationViewHolder;
        comicRecommendationViewHolder.imageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.imageView_recommendation, "field 'imageView'", ImageView.class);
        comicRecommendationViewHolder.textView = (TextView) Utils.findRequiredViewAsType(view, R.id.textView_recommendation, "field 'textView'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicRecommendationViewHolder comicRecommendationViewHolder = this.sH;
        if (comicRecommendationViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.sH = null;
        comicRecommendationViewHolder.imageView = null;
        comicRecommendationViewHolder.textView = null;
    }
}
