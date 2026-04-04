package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class ComicThumbImageView extends ImageView {
    public ComicThumbImageView(Context context) {
        super(context);
    }

    public ComicThumbImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ComicThumbImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, (measuredWidth * 3) / 2);
    }
}
