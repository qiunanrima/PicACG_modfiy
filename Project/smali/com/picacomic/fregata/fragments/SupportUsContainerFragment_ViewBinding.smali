.class public Lcom/picacomic/fregata/fragments/SupportUsContainerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SupportUsContainerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private rP:Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment_ViewBinding;->rP:Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;

    const-string v0, "field \'toolbar\'"

    .line 23
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'tabLayout\'"

    .line 24
    const-class v1, Landroid/support/design/widget/TabLayout;

    const v2, 0x7f09023e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const-string v0, "field \'viewPager_tags\'"

    .line 25
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f090321

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment_ViewBinding;->rP:Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment_ViewBinding;->rP:Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;

    .line 35
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 36
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
