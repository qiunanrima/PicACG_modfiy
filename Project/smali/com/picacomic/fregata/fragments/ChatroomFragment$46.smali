.class Lcom/picacomic/fregata/fragments/ChatroomFragment$46;
.super Ljava/util/TimerTask;
.source "ChatroomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->cw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 2631
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2634
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$46;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomFragment$46$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$46;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
