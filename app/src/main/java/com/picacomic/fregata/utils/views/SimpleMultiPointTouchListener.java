package com.picacomic.fregata.utils.views;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class SimpleMultiPointTouchListener implements View.OnTouchListener {
    static final int DRAG = 1;
    static final int NONE = 0;
    static final int ZOOM = 2;
    View view;
    public final String TAG = "MultiPointTouchListener";
    Matrix matrix = new Matrix();
    Matrix savedMatrix = new Matrix();
    final int DOUBLE_CLICK_INTERVAL = 600;
    int mode = 0;
    PointF start = new PointF();
    PointF mid = new PointF();
    float oldDist = 1.0f;
    final PointF original = new PointF();
    boolean saveOriginal = true;
    boolean isZoomed = false;
    boolean isDoubleClick = false;
    long lastTouch = 0;

    public SimpleMultiPointTouchListener(View view) {
        this.view = view;
    }

    public void setListenerAndView(View view) {
        this.view = view;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ImageView imageView = (ImageView) view;
        if (imageView.getDrawable() == null) {
            return true;
        }
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.matrix.set(imageView.getImageMatrix());
                this.savedMatrix.set(this.matrix);
                this.start.set(motionEvent.getX(), motionEvent.getY());
                this.mode = 1;
                if (this.saveOriginal) {
                    float[] fArr = new float[9];
                    this.matrix.getValues(fArr);
                    this.original.set(fArr[2], fArr[5]);
                    this.saveOriginal = false;
                }
                break;
            case 1:
                Log.i("EVENTTOUCH", "First up");
                if (System.currentTimeMillis() - this.lastTouch < 600) {
                    this.lastTouch = 0L;
                    this.isDoubleClick = true;
                    Log.i("EVENTTOUCH", "isDoubleClick = true");
                } else {
                    this.lastTouch = System.currentTimeMillis();
                    this.isDoubleClick = false;
                    Log.i("EVENTTOUCH", "isDoubleClick = false");
                }
                Log.i("EVENTTOUCH", "Second up");
                this.mode = 0;
                break;
            case 2:
                this.lastTouch = 0L;
                if (this.mode == 1) {
                    this.matrix.set(this.savedMatrix);
                    this.matrix.postTranslate(motionEvent.getX() - this.start.x, motionEvent.getY() - this.start.y);
                    Log.i("EVENTTOUCH", "DRAG");
                } else if (this.mode == 2) {
                    float fSpacing = spacing(motionEvent);
                    if (fSpacing > 10.0f) {
                        this.matrix.set(this.savedMatrix);
                        float f = fSpacing / this.oldDist;
                        this.matrix.postScale(f, f, this.mid.x, this.mid.y);
                    }
                    Log.i("EVENTTOUCH", "ZOOM");
                }
                Log.i("EVENTTOUCH", "MOVE");
                break;
            case 5:
                this.oldDist = spacing(motionEvent);
                if (this.oldDist > 10.0f) {
                    this.savedMatrix.set(this.matrix);
                    midPoint(this.mid, motionEvent);
                    this.mode = 2;
                }
                Log.i("EVENTTOUCH", "Second Down?");
                break;
            case 6:
                Log.i("EVENTTOUCH", "Second up");
                this.mode = 0;
                break;
        }
        float[] fArr2 = new float[9];
        this.matrix.getValues(fArr2);
        printLog("MultiPointTouchListener", "==========Start==========");
        printLog("MultiPointTouchListener", "view width = " + imageView.getWidth() + " Cal width = " + (imageView.getDrawable().getIntrinsicWidth() * fArr2[0]) + " Intrinsic width = " + imageView.getDrawable().getIntrinsicWidth());
        printLog("MultiPointTouchListener", "view Height = " + imageView.getHeight() + " Cal Height = " + (((float) imageView.getDrawable().getIntrinsicHeight()) * fArr2[4]) + " Intrinsic Height = " + imageView.getDrawable().getIntrinsicHeight());
        StringBuilder sb = new StringBuilder();
        sb.append(" Matrix Scale X = ");
        sb.append(fArr2[0]);
        sb.append(" Matrix Scale Y = ");
        sb.append(fArr2[4]);
        printLog("MultiPointTouchListener", sb.toString());
        printLog("MultiPointTouchListener", "tran X = " + fArr2[2] + " tran Y = " + fArr2[5]);
        printLog("MultiPointTouchListener", fArr2[6] + " " + fArr2[7] + " " + fArr2[8] + " " + fArr2[1] + " " + fArr2[3] + " ");
        printLog("MultiPointTouchListener", "===========End===========\n");
        if (imageView.getWidth() / imageView.getHeight() < imageView.getDrawable().getIntrinsicWidth() / imageView.getDrawable().getIntrinsicHeight()) {
            if (this.isDoubleClick) {
                if (this.isZoomed) {
                    float width = imageView.getWidth() / imageView.getDrawable().getIntrinsicWidth();
                    printLog("MultiPointTouchListener", "Scale = " + width);
                    printLog("MultiPointTouchListener", "original X = " + this.original.x + " original Y = " + this.original.y);
                    printLog("MultiPointTouchListener", "view = " + imageView.getWidth() + " drawableView = " + imageView.getDrawable().getIntrinsicWidth());
                    float height = (((float) imageView.getHeight()) / 2.0f) - ((((float) imageView.getDrawable().getIntrinsicHeight()) / 2.0f) * width);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Cal ing ori Y = ");
                    sb2.append(height);
                    printLog("MultiPointTouchListener", sb2.toString());
                    this.matrix.setScale(width, width);
                    this.matrix.postTranslate(0.0f, height);
                    imageView.setImageMatrix(this.matrix);
                    this.isZoomed = false;
                } else {
                    this.matrix.postScale(2.0f, 2.0f);
                    this.matrix.postTranslate(-this.start.x, -this.start.y);
                    imageView.setImageMatrix(this.matrix);
                    this.isZoomed = true;
                }
                this.savedMatrix.set(this.matrix);
                this.isDoubleClick = false;
                this.lastTouch = 0L;
                return true;
            }
            printLog("MultiPointTouchListener", "Run landscape");
            float intrinsicHeight = imageView.getDrawable().getIntrinsicHeight() * fArr2[4];
            float height2 = (imageView.getHeight() - intrinsicHeight) / 2.0f;
            if (fArr2[0] <= 1.0d && fArr2[4] <= 1.0d) {
                isLeftOrRight(true);
            } else {
                isLeftOrRight(false);
            }
            if (fArr2[2] >= 0.0f) {
                this.matrix.postTranslate(-fArr2[2], 0.0f);
                printLog("MultiPointTouchListener", "LEFT BOUND!!!!");
            } else if (imageView.getDrawable().getIntrinsicWidth() * fArr2[0] <= imageView.getWidth() - fArr2[2]) {
                this.matrix.postTranslate((imageView.getWidth() - fArr2[2]) - (imageView.getDrawable().getIntrinsicWidth() * fArr2[0]), 0.0f);
                printLog("MultiPointTouchListener", "RIGHT BOUND!!!!");
            }
            if (fArr2[5] <= 0.0f || imageView.getDrawable().getIntrinsicHeight() * fArr2[4] >= imageView.getHeight() - fArr2[5]) {
                if (fArr2[5] > 0.0f) {
                    if (imageView.getHeight() > intrinsicHeight) {
                        this.matrix.postTranslate(0.0f, (((-fArr2[5]) + imageView.getHeight()) - intrinsicHeight) - height2);
                        printLog("MultiPointTouchListener", "VIEW > CAL, TOP BOUND!!!!");
                    } else {
                        this.matrix.postTranslate(0.0f, -fArr2[5]);
                        printLog("MultiPointTouchListener", "TOP BOUND!!!!");
                    }
                }
                if (imageView.getDrawable().getIntrinsicHeight() * fArr2[4] < imageView.getHeight() - fArr2[5]) {
                    if (imageView.getHeight() > intrinsicHeight) {
                        this.matrix.postTranslate(0.0f, height2 - fArr2[5]);
                        printLog("MultiPointTouchListener", "VIEW > CAL, BOTTOM BOUND!!!!");
                    } else {
                        this.matrix.postTranslate(0.0f, -((intrinsicHeight - imageView.getHeight()) + fArr2[5]));
                        printLog("MultiPointTouchListener", "BOTTOM BOUND!!!!");
                    }
                }
            } else {
                this.matrix.postTranslate(0.0f, height2 - fArr2[5]);
            }
            if (imageView.getWidth() < imageView.getDrawable().getIntrinsicWidth() * fArr2[0]) {
                imageView.setImageMatrix(this.matrix);
                this.isZoomed = true;
            } else {
                float width2 = imageView.getWidth() / imageView.getDrawable().getIntrinsicWidth();
                printLog("MultiPointTouchListener", "Scale = " + width2);
                printLog("MultiPointTouchListener", "original X = " + this.original.x + " original Y = " + this.original.y);
                printLog("MultiPointTouchListener", "view = " + imageView.getWidth() + " drawableView = " + imageView.getDrawable().getIntrinsicWidth());
                float height3 = (((float) imageView.getHeight()) / 2.0f) - ((((float) imageView.getDrawable().getIntrinsicHeight()) / 2.0f) * width2);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Cal ing ori Y = ");
                sb3.append(height3);
                printLog("MultiPointTouchListener", sb3.toString());
                this.matrix.setScale(width2, width2);
                this.matrix.postTranslate(0.0f, height3);
                imageView.setImageMatrix(this.matrix);
                this.isZoomed = false;
            }
        } else {
            if (this.isDoubleClick) {
                if (this.isZoomed) {
                    float height4 = imageView.getHeight() / imageView.getDrawable().getIntrinsicHeight();
                    printLog("MultiPointTouchListener", "Scale = " + height4);
                    printLog("MultiPointTouchListener", "original X = " + this.original.x + " original Y = " + this.original.y);
                    printLog("MultiPointTouchListener", "view = " + imageView.getHeight() + " drawableView = " + imageView.getDrawable().getIntrinsicHeight());
                    float width3 = (((float) imageView.getWidth()) / 2.0f) - ((((float) imageView.getDrawable().getIntrinsicWidth()) / 2.0f) * height4);
                    printLog("MultiPointTouchListener", "view height = " + imageView.getHeight() + " image height " + imageView.getDrawable().getIntrinsicHeight());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Cal ing ori X = ");
                    sb4.append(width3);
                    printLog("MultiPointTouchListener", sb4.toString());
                    this.matrix.setScale(height4, height4);
                    this.matrix.postTranslate(width3, 0.0f);
                    imageView.setImageMatrix(this.matrix);
                    this.isZoomed = false;
                } else {
                    this.matrix.postScale(2.0f, 2.0f);
                    this.matrix.postTranslate(-this.start.x, -this.start.y);
                    imageView.setImageMatrix(this.matrix);
                    this.isZoomed = true;
                }
                this.savedMatrix.set(this.matrix);
                this.isDoubleClick = false;
                this.lastTouch = 0L;
                return true;
            }
            printLog("MultiPointTouchListener", "Run portaint");
            float fRound = Math.round(imageView.getDrawable().getIntrinsicWidth() * fArr2[0]);
            float width4 = (imageView.getWidth() - fRound) / 2.0f;
            printLog("MultiPointTouchListener", "calWidth = " + fRound + " midWidth = " + width4);
            if (fArr2[2] <= 0.0f || imageView.getDrawable().getIntrinsicWidth() * fArr2[0] >= imageView.getWidth() - fArr2[2]) {
                if (fArr2[2] > 0.0f) {
                    if (imageView.getWidth() > fRound) {
                        this.matrix.postTranslate((((-fArr2[2]) + imageView.getWidth()) - fRound) - width4, 0.0f);
                        printLog("MultiPointTouchListener", "VIEW > CAL, LEFT BOUND!!!!");
                    } else {
                        this.matrix.postTranslate(-fArr2[2], 0.0f);
                        printLog("MultiPointTouchListener", "LEFT BOUND!!!!");
                    }
                }
                if (imageView.getDrawable().getIntrinsicWidth() * fArr2[0] <= imageView.getWidth() - fArr2[2]) {
                    if (imageView.getWidth() > fRound) {
                        this.matrix.postTranslate(width4 - fArr2[2], 0.0f);
                        printLog("MultiPointTouchListener", "VIEW > CAL, RIGHT BOUND!!!!");
                    } else {
                        this.matrix.postTranslate(-((fRound - imageView.getWidth()) + fArr2[2]), 0.0f);
                        printLog("MultiPointTouchListener", "RIGHT BOUND!!!!");
                    }
                }
            } else {
                this.matrix.postTranslate(width4 - fArr2[2], 0.0f);
                printLog("MultiPointTouchListener", "LEFT BOUND!!!!");
            }
            if (fArr2[5] <= 0.0f || imageView.getDrawable().getIntrinsicHeight() * fArr2[4] >= imageView.getHeight() - fArr2[5]) {
                if (fArr2[5] > 0.0f) {
                    this.matrix.postTranslate(0.0f, -fArr2[5]);
                    printLog("MultiPointTouchListener", "TOP BOUND!!!!");
                }
                if (imageView.getDrawable().getIntrinsicHeight() * fArr2[4] < imageView.getHeight() - fArr2[5]) {
                    this.matrix.postTranslate(0.0f, -(((imageView.getDrawable().getIntrinsicHeight() * fArr2[4]) - imageView.getHeight()) + fArr2[5]));
                    printLog("MultiPointTouchListener", "BOTTOM BOUND!!!!");
                }
            } else {
                this.matrix.postTranslate(0.0f, -fArr2[5]);
            }
            if (imageView.getHeight() < imageView.getDrawable().getIntrinsicHeight() * fArr2[4]) {
                imageView.setImageMatrix(this.matrix);
                this.isZoomed = true;
            } else {
                float height5 = imageView.getHeight() / imageView.getDrawable().getIntrinsicHeight();
                printLog("MultiPointTouchListener", "Scale = " + height5);
                printLog("MultiPointTouchListener", "original X = " + this.original.x + " original Y = " + this.original.y);
                printLog("MultiPointTouchListener", "view = " + imageView.getHeight() + " drawableView = " + imageView.getDrawable().getIntrinsicHeight());
                float width5 = (((float) imageView.getWidth()) / 2.0f) - ((((float) imageView.getDrawable().getIntrinsicWidth()) / 2.0f) * height5);
                printLog("MultiPointTouchListener", "view height = " + imageView.getHeight() + " image height " + imageView.getDrawable().getIntrinsicHeight());
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Cal ing ori X = ");
                sb5.append(width5);
                printLog("MultiPointTouchListener", sb5.toString());
                this.matrix.setScale(height5, height5);
                this.matrix.postTranslate(width5, 0.0f);
                imageView.setImageMatrix(this.matrix);
                this.isZoomed = false;
            }
        }
        return true;
    }

    public boolean isLeftOrRight(boolean z) {
        printLog("MultiPointTouchListener", "CanScroll " + z);
        return z;
    }

    private float spacing(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    private void midPoint(PointF pointF, MotionEvent motionEvent) {
        pointF.set((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
    }

    private void printLog(String str, String str2) {
        Log.i(str, str2);
    }

    public void setFillWidth(ImageView imageView) {
        float width = imageView.getWidth() / imageView.getDrawable().getIntrinsicWidth();
        printLog("MultiPointTouchListener", "Scale = " + width);
        printLog("MultiPointTouchListener", "imageView original X = " + this.original.x + "imageView original Y = " + this.original.y);
        printLog("MultiPointTouchListener", "imageView = " + imageView.getWidth() + " drawableView = " + imageView.getDrawable().getIntrinsicWidth());
        float height = (((float) imageView.getHeight()) / 2.0f) - ((((float) imageView.getDrawable().getIntrinsicHeight()) / 2.0f) * width);
        printLog("MultiPointTouchListener", "imageView height = " + imageView.getWidth() + " imageView height " + imageView.getDrawable().getIntrinsicWidth());
        StringBuilder sb = new StringBuilder();
        sb.append("Cal ing ori X = ");
        sb.append(height);
        printLog("MultiPointTouchListener", sb.toString());
        this.matrix.setScale(width, width);
        this.matrix.postTranslate(0.0f, 0.0f);
        imageView.setImageMatrix(this.matrix);
    }
}
