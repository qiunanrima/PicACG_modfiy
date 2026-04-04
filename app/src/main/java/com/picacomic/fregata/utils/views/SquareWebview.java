package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public class SquareWebview extends WebView {
    public SquareWebview(Context context) {
        super(context);
    }

    public SquareWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SquareWebview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SquareWebview(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i, z);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, measuredWidth);
    }
}
