package com.picacomic.fregata.utils.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import androidx.core.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class ZoomableListView extends ListView {
    private static final int INVALID_POINTER_ID = -1;
    static float gx;
    static float gy;
    private float centerX;
    private float centerY;
    private boolean isPagerEnabled;
    private int mActivePointerId;
    private float mLastTouchX;
    private float mLastTouchY;
    private float mPosX;
    private float mPosY;
    private ScaleGestureDetector mScaleDetector;
    private float mScaleFactor;
    Matrix matrix;
    private float totalMovementX;

    public ZoomableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScaleFactor = 1.0f;
        this.mActivePointerId = -1;
        this.matrix = new Matrix();
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    public ZoomableListView(Context context) {
        super(context);
        this.mScaleFactor = 1.0f;
        this.mActivePointerId = -1;
        this.matrix = new Matrix();
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.mPosX, this.mPosY);
        canvas.scale(this.mScaleFactor, this.mScaleFactor);
        canvas.restore();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        if (this.mScaleFactor == 1.0f) {
            this.isPagerEnabled = true;
        } else {
            this.isPagerEnabled = false;
        }
        if (this.mScaleFactor == 1.0f) {
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
    @Override // android.widget.AbsListView, android.view.View
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
                        float f2 = this.mLastTouchY;
                        this.mPosX += f * this.mScaleFactor;
                        if (this.mPosX > 0.0f) {
                            this.mPosX = 0.0f;
                        }
                        if ((-this.mPosX) / (this.mScaleFactor - 1.0f) > getWidth()) {
                            this.mPosX = (-getWidth()) * (this.mScaleFactor - 1.0f);
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

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            ZoomableListView.this.mScaleFactor *= scaleGestureDetector.getScaleFactor();
            ZoomableListView.this.centerX = scaleGestureDetector.getFocusX();
            ZoomableListView.this.centerY = scaleGestureDetector.getFocusY();
            ZoomableListView.this.mScaleFactor = Math.max(1.0f, Math.min(ZoomableListView.this.mScaleFactor, 3.0f));
            ZoomableListView.this.invalidate();
            return true;
        }
    }
}
