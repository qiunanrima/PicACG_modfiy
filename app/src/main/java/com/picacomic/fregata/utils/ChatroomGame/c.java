package com.picacomic.fregata.utils.ChatroomGame;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import androidx.recyclerview.widget.ItemTouchHelper;

/* JADX INFO: compiled from: HeroSprite.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends a {
    int action;
    ChatroomGameView gameView;
    private int height;
    final int uh;
    int[] ui;
    int uj;
    Bitmap uk;
    int ul;
    boolean um;
    private int width;
    int x;
    int y;

    public c(int i, int i2, ChatroomGameView chatroomGameView, Bitmap bitmap) {
        super(i, i2);
        this.uh = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this.ui = new int[]{3, 1, 0, 2};
        this.x = 150;
        this.y = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this.uj = 10;
        this.ul = 0;
        this.um = true;
        this.width = bitmap.getWidth() / 1;
        this.height = bitmap.getHeight() / 1;
        this.gameView = chatroomGameView;
        this.uk = bitmap;
    }

    public void update() {
        int i = this.ul + 1;
        this.ul = i;
        this.ul = i % 1;
        if (this.action == 1) {
            dW();
        } else if (this.action == 2) {
            dX();
        }
    }

    public void dW() {
        if (this.x > 30) {
            this.x -= this.uj;
        }
    }

    public void dX() {
        if (this.x < 200) {
            this.x += this.uj;
        }
    }

    public void onDraw(Canvas canvas) {
        update();
        int i = this.ul;
        int i2 = this.ul;
        a(canvas, this.uk, new Rect(i, i2, this.width + i, this.height + i2), new Rect(this.x, a(canvas, this.y), this.x + a(canvas, this.targetWidth), a(canvas, this.y) + a(canvas, this.targetHeight)), null);
    }

    public void setAction(int i) {
        this.action = i;
    }
}
