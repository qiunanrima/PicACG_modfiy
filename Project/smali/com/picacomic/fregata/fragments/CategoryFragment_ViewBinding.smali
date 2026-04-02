.class public Lcom/picacomic/fregata/fragments/CategoryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CategoryFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private kJ:Lcom/picacomic/fregata/fragments/CategoryFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/CategoryFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment_ViewBinding;->kJ:Lcom/picacomic/fregata/fragments/CategoryFragment;

    const-string v0, "field \'coordinatorLayout\'"

    .line 26
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    const v2, 0x7f0900ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    const-string v0, "field \'linearLayout_keywords\'"

    .line 27
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090184

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->linearLayout_keywords:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_tags\'"

    .line 28
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090185

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    const-string v0, "field \'scrollView\'"

    .line 29
    const-class v1, Landroid/support/v4/widget/NestedScrollView;

    const v2, 0x7f090216

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    const-string v0, "field \'recyclerView_category\'"

    .line 30
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0901f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->recyclerView_category:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'toolbar\'"

    .line 31
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'searchView\'"

    .line 32
    const-class v1, Landroid/support/v7/widget/SearchView;

    const v2, 0x7f090219

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SearchView;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/CategoryFragment;->searchView:Landroid/support/v7/widget/SearchView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment_ViewBinding;->kJ:Lcom/picacomic/fregata/fragments/CategoryFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment_ViewBinding;->kJ:Lcom/picacomic/fregata/fragments/CategoryFragment;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->linearLayout_keywords:Landroid/widget/LinearLayout;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->recyclerView_category:Landroid/support/v7/widget/RecyclerView;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->searchView:Landroid/support/v7/widget/SearchView;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
