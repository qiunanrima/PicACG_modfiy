package com.picacomic.fregata.utils.ChatroomGame;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.picacomic.fregata.R;

/* JADX INFO: loaded from: classes.dex */
public class ChatroomGameView extends SurfaceView {
    public static final String TAG = "ChatroomGameView";
    int height;
    private SurfaceHolder tZ;
    private b ua;
    Bitmap ub;
    Bitmap uc;
    c ud;
    int ue;
    int uf;

    public ChatroomGameView(Context context) {
        super(context);
        this.ue = 0;
        this.uf = 0;
        init();
    }

    public ChatroomGameView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ue = 0;
        this.uf = 0;
        init();
    }

    public ChatroomGameView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ue = 0;
        this.uf = 0;
        init();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.height = getMeasuredHeight();
        setMeasuredDimension(this.height, this.height);
    }

    public void init() {
        this.ua = new b(this);
        this.tZ = getHolder();
        this.tZ.addCallback(new SurfaceHolder.Callback() { // from class: com.picacomic.fregata.utils.ChatroomGame.ChatroomGameView.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                ChatroomGameView.this.ua.setRunning(false);
                boolean z = true;
                while (z) {
                    try {
                        ChatroomGameView.this.ua.join();
                        z = false;
                    } catch (InterruptedException unused) {
                    }
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                ChatroomGameView.this.ua.setRunning(true);
                ChatroomGameView.this.ua.start();
            }
        });
        dV();
    }

    public void dV() {
        Resources resources = getResources();
        this.ub = BitmapFactory.decodeResource(resources, R.drawable.chat_game_c_1);
        this.uc = BitmapFactory.decodeResource(resources, R.drawable.chat_game_bg_2);
        this.ud = new c(100, 100, this, this.ub);
    }

    public void j(Canvas canvas) {
        a(canvas, this.uc, 0.0f, 0.0f, null);
        this.ud.onDraw(canvas);
    }

    public void a(Canvas canvas, Bitmap bitmap, float f, float f2, Paint paint) {
        canvas.drawBitmap(bitmap, k(f), k(f2), paint);
    }

    public float k(float f) {
        return this.height > 0 ? (f * this.height) / 400.0f : f;
    }

    public c getHeroSprite() {
        return this.ud;
    }

    public void setRunning(boolean z) {
        this.ua.setRunning(z);
    }
}
