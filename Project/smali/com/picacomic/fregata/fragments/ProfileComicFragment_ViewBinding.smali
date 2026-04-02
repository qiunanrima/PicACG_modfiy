.class public Lcom/picacomic/fregata/fragments/ProfileComicFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ProfileComicFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private qN:Lcom/picacomic/fregata/fragments/ProfileComicFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ProfileComicFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment_ViewBinding;->qN:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    const-string v0, "field \'linearLayout_downloaded\'"

    .line 21
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_downloaded:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_recentView\'"

    .line 22
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_recentView:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_bookmarked\'"

    .line 23
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_bookmarked:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment_ViewBinding;->qN:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileComicFragment_ViewBinding;->qN:Lcom/picacomic/fregata/fragments/ProfileComicFragment;

    .line 33
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_downloaded:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_recentView:Landroid/widget/LinearLayout;

    .line 35
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ProfileComicFragment;->linearLayout_bookmarked:Landroid/widget/LinearLayout;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
