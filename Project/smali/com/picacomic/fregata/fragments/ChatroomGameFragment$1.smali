.class Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;
.super Ljava/lang/Object;
.source "ChatroomGameFragment.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/fragments/ChatroomGameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mK:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;->mK:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;->mK:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
