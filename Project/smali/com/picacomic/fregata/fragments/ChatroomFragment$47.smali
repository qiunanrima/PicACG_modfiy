.class Lcom/picacomic/fregata/fragments/ChatroomFragment$47;
.super Landroid/os/CountDownTimer;
.source "ChatroomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->cy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;JJ)V
    .locals 0

    .line 2705
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 2714
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2715
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2716
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lc:J

    .line 2717
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lcom/picacomic/fregata/fragments/ChatroomFragment;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 2708
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->editText_textbox:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$47;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x2710

    sub-long/2addr v2, p1

    long-to-float p1, v2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
