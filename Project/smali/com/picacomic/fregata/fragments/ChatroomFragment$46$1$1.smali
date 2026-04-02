.class Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mu:Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;)V
    .locals 0

    .line 2639
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;->mu:Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2642
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;->mu:Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;->mu:Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_audioPlayingTimer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u64ad\u653e\u9304\u97f3("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;->mu:Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;

    iget-object v5, v5, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v5, v5, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {v5}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->g(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s)\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1$1;->mu:Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;->mt:Lcom/picacomic/fregata/fragments/ChatroomFragment$46;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {v4}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->g(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
