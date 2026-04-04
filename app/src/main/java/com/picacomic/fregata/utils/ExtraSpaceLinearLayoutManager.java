package com.picacomic.fregata.utils;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class ExtraSpaceLinearLayoutManager extends LinearLayoutManager {
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    protected int getExtraLayoutSpace(RecyclerView.State state) {
        return 2;
    }

    public ExtraSpaceLinearLayoutManager(Context context) {
        super(context);
    }

    public ExtraSpaceLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
    }

    public ExtraSpaceLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
