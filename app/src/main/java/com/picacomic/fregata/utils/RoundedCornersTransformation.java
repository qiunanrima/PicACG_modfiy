package com.picacomic.fregata.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import com.squareup.picasso.Transformation;

/* JADX INFO: loaded from: classes.dex */
public class RoundedCornersTransformation implements Transformation {
    private int mMargin;
    private int us;
    private int ut;
    private CornerType uu;

    public enum CornerType {
        ALL,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        OTHER_TOP_LEFT,
        OTHER_TOP_RIGHT,
        OTHER_BOTTOM_LEFT,
        OTHER_BOTTOM_RIGHT,
        DIAGONAL_FROM_TOP_LEFT,
        DIAGONAL_FROM_TOP_RIGHT
    }

    public RoundedCornersTransformation(int i, int i2) {
        this(i, i2, CornerType.ALL);
    }

    public RoundedCornersTransformation(int i, int i2, CornerType cornerType) {
        this.us = i;
        this.ut = i * 2;
        this.mMargin = i2;
        this.uu = cornerType;
    }

    @Override // com.squareup.picasso.Transformation
    public Bitmap transform(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
        a(canvas, paint, width, height);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private void a(Canvas canvas, Paint paint, float f, float f2) {
        float f3 = f - this.mMargin;
        float f4 = f2 - this.mMargin;
        switch (this.uu) {
            case ALL:
                canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, f3, f4), this.us, this.us, paint);
                break;
            case TOP_LEFT:
                b(canvas, paint, f3, f4);
                break;
            case TOP_RIGHT:
                c(canvas, paint, f3, f4);
                break;
            case BOTTOM_LEFT:
                d(canvas, paint, f3, f4);
                break;
            case BOTTOM_RIGHT:
                e(canvas, paint, f3, f4);
                break;
            case TOP:
                f(canvas, paint, f3, f4);
                break;
            case BOTTOM:
                g(canvas, paint, f3, f4);
                break;
            case LEFT:
                h(canvas, paint, f3, f4);
                break;
            case RIGHT:
                i(canvas, paint, f3, f4);
                break;
            case OTHER_TOP_LEFT:
                j(canvas, paint, f3, f4);
                break;
            case OTHER_TOP_RIGHT:
                k(canvas, paint, f3, f4);
                break;
            case OTHER_BOTTOM_LEFT:
                l(canvas, paint, f3, f4);
                break;
            case OTHER_BOTTOM_RIGHT:
                m(canvas, paint, f3, f4);
                break;
            case DIAGONAL_FROM_TOP_LEFT:
                n(canvas, paint, f3, f4);
                break;
            case DIAGONAL_FROM_TOP_RIGHT:
                o(canvas, paint, f3, f4);
                break;
            default:
                canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, f3, f4), this.us, this.us, paint);
                break;
        }
    }

    private void b(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, this.mMargin + this.ut, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin + this.us, this.mMargin + this.us, f2), paint);
        canvas.drawRect(new RectF(this.mMargin + this.us, this.mMargin, f, f2), paint);
    }

    private void c(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(f - this.ut, this.mMargin, f, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, f - this.us, f2), paint);
        canvas.drawRect(new RectF(f - this.us, this.mMargin + this.us, f, f2), paint);
    }

    private void d(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, f2 - this.ut, this.mMargin + this.ut, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, this.mMargin + this.ut, f2 - this.us), paint);
        canvas.drawRect(new RectF(this.mMargin + this.us, this.mMargin, f, f2), paint);
    }

    private void e(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(f - this.ut, f2 - this.ut, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, f - this.us, f2), paint);
        canvas.drawRect(new RectF(f - this.us, this.mMargin, f, f2 - this.us), paint);
    }

    private void f(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, f, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin + this.us, f, f2), paint);
    }

    private void g(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, f2 - this.ut, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, f, f2 - this.us), paint);
    }

    private void h(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, this.mMargin + this.ut, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin + this.us, this.mMargin, f, f2), paint);
    }

    private void i(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(f - this.ut, this.mMargin, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, f - this.us, f2), paint);
    }

    private void j(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, f2 - this.ut, f, f2), this.us, this.us, paint);
        canvas.drawRoundRect(new RectF(f - this.ut, this.mMargin, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, f - this.us, f2 - this.us), paint);
    }

    private void k(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, this.mMargin + this.ut, f2), this.us, this.us, paint);
        canvas.drawRoundRect(new RectF(this.mMargin, f2 - this.ut, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin + this.us, this.mMargin, f, f2 - this.us), paint);
    }

    private void l(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, f, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRoundRect(new RectF(f - this.ut, this.mMargin, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin + this.us, f - this.us, f2), paint);
    }

    private void m(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, f, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, this.mMargin + this.ut, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin + this.us, this.mMargin + this.us, f, f2), paint);
    }

    private void n(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(this.mMargin, this.mMargin, this.mMargin + this.ut, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRoundRect(new RectF(f - this.ut, f2 - this.ut, f, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin + this.us, f - this.ut, f2), paint);
        canvas.drawRect(new RectF(this.mMargin + this.ut, this.mMargin, f, f2 - this.us), paint);
    }

    private void o(Canvas canvas, Paint paint, float f, float f2) {
        canvas.drawRoundRect(new RectF(f - this.ut, this.mMargin, f, this.mMargin + this.ut), this.us, this.us, paint);
        canvas.drawRoundRect(new RectF(this.mMargin, f2 - this.ut, this.mMargin + this.ut, f2), this.us, this.us, paint);
        canvas.drawRect(new RectF(this.mMargin, this.mMargin, f - this.us, f2 - this.us), paint);
        canvas.drawRect(new RectF(this.mMargin + this.us, this.mMargin + this.us, f, f2), paint);
    }

    @Override // com.squareup.picasso.Transformation
    public String key() {
        return "RoundedTransformation(radius=" + this.us + ", margin=" + this.mMargin + ", diameter=" + this.ut + ", cornerType=" + this.uu.name() + ")";
    }
}
