.class Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;
.super Ljava/lang/Object;
.source "ChatroomGameView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ug:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;->ug:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;->ug:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->a(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)Lcom/picacomic/fregata/utils/ChatroomGame/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->setRunning(Z)V

    .line 82
    iget-object p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;->ug:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->a(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)Lcom/picacomic/fregata/utils/ChatroomGame/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;->ug:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->a(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)Lcom/picacomic/fregata/utils/ChatroomGame/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->setRunning(Z)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;->ug:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    invoke-static {v1}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->a(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)Lcom/picacomic/fregata/utils/ChatroomGame/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
