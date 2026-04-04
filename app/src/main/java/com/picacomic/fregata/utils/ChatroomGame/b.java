package com.picacomic.fregata.utils.ChatroomGame;

import android.graphics.Canvas;

/* JADX INFO: compiled from: ChatroomGameLoopThread.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends Thread {
    private ChatroomGameView tX;
    private boolean tY = false;

    public b(ChatroomGameView chatroomGameView) {
        this.tX = chatroomGameView;
    }

    public void setRunning(boolean z) {
        this.tY = z;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Canvas canvasLockCanvas;
        Throwable th;
        while (this.tY) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                canvasLockCanvas = this.tX.getHolder().lockCanvas();
                try {
                    synchronized (this.tX.getHolder()) {
                        this.tX.j(canvasLockCanvas);
                    }
                    if (canvasLockCanvas != null) {
                        this.tX.getHolder().unlockCanvasAndPost(canvasLockCanvas);
                    }
                    long jCurrentTimeMillis2 = 33 - (System.currentTimeMillis() - jCurrentTimeMillis);
                    if (jCurrentTimeMillis2 > 0) {
                        try {
                            sleep(jCurrentTimeMillis2);
                        } catch (Exception unused) {
                        }
                    } else {
                        sleep(10L);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (canvasLockCanvas != null) {
                        this.tX.getHolder().unlockCanvasAndPost(canvasLockCanvas);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                canvasLockCanvas = null;
                th = th3;
            }
        }
    }
}
