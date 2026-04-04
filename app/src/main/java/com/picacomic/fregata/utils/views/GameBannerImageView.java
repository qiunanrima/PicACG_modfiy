package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class GameBannerImageView extends ImageView {
    public GameBannerImageView(Context context) {
        super(context);
    }

    public GameBannerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GameBannerImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, (measuredWidth * 9) / 16);
    }
}
