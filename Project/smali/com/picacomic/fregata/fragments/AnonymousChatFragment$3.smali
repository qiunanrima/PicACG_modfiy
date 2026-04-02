.class Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;
.super Ljava/lang/Object;
.source "AnonymousChatFragment.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/fragments/AnonymousChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;-><init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
