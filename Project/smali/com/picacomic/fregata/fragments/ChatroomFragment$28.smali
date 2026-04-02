.class Lcom/picacomic/fregata/fragments/ChatroomFragment$28;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;
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

    .line 1408
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$28;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
