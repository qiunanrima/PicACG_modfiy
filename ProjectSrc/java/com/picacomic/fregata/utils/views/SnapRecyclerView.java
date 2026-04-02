package com.picacomic.fregata.utils.views;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class SnapRecyclerView extends RecyclerView {
    int screenWidth;

    public SnapRecyclerView(Context context) {
        super(context);
        setScreenWidth(context);
    }

    public SnapRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setScreenWidth(context);
    }

    public SnapRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setScreenWidth(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i, int i2) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) getLayoutManager();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        View viewFindViewByPosition = linearLayoutManager.findViewByPosition(linearLayoutManager.findFirstVisibleItemPosition());
        View viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(iFindLastVisibleItemPosition);
        if (viewFindViewByPosition2 != null && viewFindViewByPosition != null) {
            int width = (this.screenWidth - viewFindViewByPosition2.getWidth()) / 2;
            int width2 = ((this.screenWidth - viewFindViewByPosition.getWidth()) / 2) + viewFindViewByPosition.getWidth();
            int left = viewFindViewByPosition2.getLeft() - width;
            int right = width2 - viewFindViewByPosition.getRight();
            if (i > 0) {
                smoothScrollBy(left, 0);
                return true;
            }
            smoothScrollBy(-right, 0);
            return true;
        }
        return super.fling(i, i2);
    }

    private void setScreenWidth(Context context) {
        this.screenWidth = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
    }
}
