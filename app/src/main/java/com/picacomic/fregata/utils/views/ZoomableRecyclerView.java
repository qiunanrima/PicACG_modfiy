package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class ZoomableRecyclerView extends RecyclerView {
    private static final int INVALID_POINTER_ID = -1;
    private static final String TAG = "ZoomableRecyclerView";
    static float gx;
    static float gy;
    private float centerX;
    private float centerY;
    private float defaultScaleFactor;
    private boolean isPagerEnabled;
    private boolean isVertical;
    private int mActivePointerId;
    private float mLastTouchX;
    private float mLastTouchY;
    private float mPosX;
    private float mPosY;
    private ScaleGestureDetector mScaleDetector;
    private float mScaleFactor;
    Matrix matrix;
    private int screenWidth;
    private float totalMovementX;
    private float totalMovementY;

    public ZoomableRecyclerView(Context context) {
        super(context);
        this.mScaleFactor = 1.0f;
        this.mActivePointerId = -1;
        this.screenWidth = 1080;
        this.defaultScaleFactor = 1.0f;
        this.matrix = new Matrix();
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    public ZoomableRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScaleFactor = 1.0f;
        this.mActivePointerId = -1;
        this.screenWidth = 1080;
        this.defaultScaleFactor = 1.0f;
        this.matrix = new Matrix();
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    public ZoomableRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScaleFactor = 1.0f;
        this.mActivePointerId = -1;
        this.screenWidth = 1080;
        this.defaultScaleFactor = 1.0f;
        this.matrix = new Matrix();
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.mPosX, this.mPosY);
        canvas.scale(this.mScaleFactor, this.mScaleFactor, this.centerX, this.centerY);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        if (this.mScaleFactor <= this.defaultScaleFactor) {
            this.isPagerEnabled = true;
        } else {
            this.isPagerEnabled = false;
        }
        if (this.mScaleFactor == this.defaultScaleFactor) {
            this.mPosX = 0.0f;
            this.mPosY = 0.0f;
        }
        canvas.translate(this.mPosX, this.mPosY);
        canvas.scale(this.mScaleFactor, this.mScaleFactor);
        super.dispatchDraw(canvas);
        canvas.restore();
        invalidate();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        this.mScaleDetector.onTouchEvent(motionEvent);
        int i = action & 255;
        if (i != 6) {
            switch (i) {
                case 0:
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    this.mLastTouchX = x;
                    this.mLastTouchY = y;
                    this.mActivePointerId = motionEvent.getPointerId(0);
                    break;
                case 1:
                    this.mActivePointerId = -1;
                    break;
                case 2:
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (iFindPointerIndex != -1) {
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        float f = x2 - this.mLastTouchX;
                        float f2 = y2 - this.mLastTouchY;
                        if (this.isVertical) {
                            this.mPosX += f * this.mScaleFactor;
                            if (this.mPosX > 0.0f) {
                                this.mPosX = 0.0f;
                            }
                            if ((-this.mPosX) / (this.mScaleFactor - 1.0f) > getWidth()) {
                                this.mPosX = (-getWidth()) * (this.mScaleFactor - 1.0f);
                            }
                        } else {
                            this.mPosY += f2 * this.mScaleFactor;
                            if (this.mPosY > 0.0f) {
                                this.mPosY = 0.0f;
                            }
                            if ((-this.mPosY) / (this.mScaleFactor - 1.0f) > getHeight()) {
                                this.mPosY = (-getHeight()) * (this.mScaleFactor - 1.0f);
                            }
                        }
                        this.mLastTouchX = x2;
                        this.mLastTouchY = y2;
                        invalidate();
                    }
                    break;
                case 3:
                    this.mActivePointerId = -1;
                    break;
            }
        } else {
            int i2 = (action & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            if (motionEvent.getPointerId(i2) == this.mActivePointerId) {
                int i3 = i2 == 0 ? 1 : 0;
                this.mLastTouchX = motionEvent.getX(i3);
                this.mLastTouchY = motionEvent.getY(i3);
                this.mActivePointerId = motionEvent.getPointerId(i3);
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i, int i2) {
        if (this.isPagerEnabled && !this.isVertical) {
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
        return super.fling(i, i2);
    }

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            ZoomableRecyclerView.this.mScaleFactor *= scaleGestureDetector.getScaleFactor();
            ZoomableRecyclerView.this.centerX = scaleGestureDetector.getFocusX();
            ZoomableRecyclerView.this.centerY = scaleGestureDetector.getFocusY();
            ZoomableRecyclerView.this.mScaleFactor = Math.max(ZoomableRecyclerView.this.defaultScaleFactor, Math.min(ZoomableRecyclerView.this.mScaleFactor, 3.0f));
            ZoomableRecyclerView.this.invalidate();
            return true;
        }
    }

    public boolean isVertical() {
        return this.isVertical;
    }

    public void setVertical(boolean z) {
        this.isVertical = z;
        this.defaultScaleFactor = 1.0f;
        this.mScaleFactor = 1.0f;
    }

    public int getScreenWidth() {
        return this.screenWidth;
    }

    public void setScreenWidth(int i) {
        this.screenWidth = i;
    }
}
