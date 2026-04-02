.class Lcom/picacomic/fregata/fragments/ChatroomFragment$27;
.super Landroid/os/CountDownTimer;
.source "ChatroomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->cq()V
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

    .line 1137
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$27;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$27;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$27;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->frameLayout_chatOnlineCountContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
