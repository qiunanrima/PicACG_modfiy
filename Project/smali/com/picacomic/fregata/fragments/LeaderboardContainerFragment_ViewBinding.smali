.class public Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LeaderboardContainerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private pD:Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment_ViewBinding;->pD:Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;

    const-string v0, "field \'toolbar\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'tabLayout\'"

    .line 25
    const-class v1, Landroid/support/design/widget/TabLayout;

    const v2, 0x7f09023e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const-string v0, "field \'viewPager_tags\'"

    .line 26
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f09031f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment_ViewBinding;->pD:Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment_ViewBinding;->pD:Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;

    .line 36
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
