.class Lcom/picacomic/fregata/fragments/ChatroomFragment$26;
.super Landroid/os/CountDownTimer;
.source "ChatroomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->co()V
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

    .line 1100
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cp()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1103
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1104
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$26;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastAtMe:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
