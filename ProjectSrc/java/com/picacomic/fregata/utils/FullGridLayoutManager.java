package com.picacomic.fregata.utils;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class FullGridLayoutManager extends GridLayoutManager {
    public static final String TAG = "FullGridLayoutManager";
    private int[] un;

    public FullGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.un = new int[2];
    }

    public FullGridLayoutManager(Context context, int i) {
        super(context, i);
        this.un = new int[2];
    }

    public FullGridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        this.un = new int[2];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int itemCount = getItemCount();
        int spanCount = getSpanCount();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < itemCount; i5++) {
            a(recycler, i5, View.MeasureSpec.makeMeasureSpec(i5, 0), View.MeasureSpec.makeMeasureSpec(i5, 0), this.un);
            if (getOrientation() == 0) {
                if (i5 % spanCount == 0) {
                    i3 += this.un[0];
                }
                if (i5 == 0) {
                    i4 = this.un[1];
                }
            } else {
                if (i5 % spanCount == 0) {
                    i4 += this.un[1];
                }
                if (i5 == 0) {
                    i3 = this.un[0];
                }
            }
        }
        if (mode == 1073741824) {
            i3 = size;
        }
        if (mode2 != 1073741824) {
            size2 = i4;
        }
        setMeasuredDimension(i3, size2);
    }

    private void a(RecyclerView.Recycler recycler, int i, int i2, int i3, int[] iArr) {
        if (i < getItemCount()) {
            try {
                View viewForPosition = recycler.getViewForPosition(0);
                if (viewForPosition != null) {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewForPosition.getLayoutParams();
                    viewForPosition.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight(), layoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom(), layoutParams.height));
                    iArr[0] = viewForPosition.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
                    iArr[1] = viewForPosition.getMeasuredHeight() + layoutParams.bottomMargin + layoutParams.topMargin;
                    recycler.recycleView(viewForPosition);
                }
            } catch (Exception unused) {
            }
        }
    }
}
