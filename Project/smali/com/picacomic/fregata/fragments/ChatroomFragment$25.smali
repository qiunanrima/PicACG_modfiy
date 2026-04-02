.class Lcom/picacomic/fregata/fragments/ChatroomFragment$25;
.super Landroid/os/CountDownTimer;
.source "ChatroomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->N(Ljava/lang/String;)V
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

    .line 1052
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$25;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$25;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->cn()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1055
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$25;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1056
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$25;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->textView_toastMsg:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
