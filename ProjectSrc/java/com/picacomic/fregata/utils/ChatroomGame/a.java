package com.picacomic.fregata.utils.ChatroomGame;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: compiled from: BaseSprite.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    int targetHeight;
    int targetWidth;

    public a(int i, int i2) {
        this.targetWidth = i;
        this.targetHeight = i2;
    }

    public void a(Canvas canvas, Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        canvas.drawBitmap(bitmap, rect, rect2, paint);
    }

    public int a(Canvas canvas, int i) {
        int height;
        return (canvas == null || (height = canvas.getHeight()) <= 0) ? i : (i * height) / 400;
    }
}
