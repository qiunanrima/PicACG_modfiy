.class public Lcom/picacomic/fregata/fragments/ChatroomGameFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChatroomGameFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private mO:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment_ViewBinding;->mO:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    const-string v0, "field \'recyclerView_gameMessage\'"

    .line 23
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->recyclerView_gameMessage:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'gameView\'"

    .line 24
    const-class v1, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    const v2, 0x7f09009f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    const-string v0, "field \'button_t1\'"

    .line 25
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090093

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t1:Landroid/widget/Button;

    const-string v0, "field \'button_t2\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090094

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t2:Landroid/widget/Button;

    const-string v0, "field \'button_t3\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090095

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t3:Landroid/widget/Button;

    const-string v0, "field \'button_t4\'"

    .line 28
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090096

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t4:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment_ViewBinding;->mO:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment_ViewBinding;->mO:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->recyclerView_gameMessage:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t1:Landroid/widget/Button;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t2:Landroid/widget/Button;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t3:Landroid/widget/Button;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->button_t4:Landroid/widget/Button;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
