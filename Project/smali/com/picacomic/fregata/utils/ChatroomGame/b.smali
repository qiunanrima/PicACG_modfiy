.class public Lcom/picacomic/fregata/utils/ChatroomGame/b;
.super Ljava/lang/Thread;
.source "ChatroomGameLoopThread.java"


# instance fields
.field private tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

.field private tY:Z


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tY:Z

    .line 14
    iput-object p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 26
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tY:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v3}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    iget-object v4, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v4, v3}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->j(Landroid/graphics/Canvas;)V

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x21

    sub-long/2addr v0, v3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 42
    :try_start_3
    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->sleep(J)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xa

    .line 44
    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 36
    iget-object v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tX:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-virtual {v1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/b;->tY:Z

    return-void
.end method
