.class Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$46;)V
    .locals 0

    .line 2634
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2637
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->g(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->g(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2647
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2648
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lX:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_1
    :goto_0
    return-void
.end method
