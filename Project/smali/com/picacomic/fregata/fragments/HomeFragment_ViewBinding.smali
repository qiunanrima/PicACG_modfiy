.class public Lcom/picacomic/fregata/fragments/HomeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "HomeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private pz:Lcom/picacomic/fregata/fragments/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/HomeFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment_ViewBinding;->pz:Lcom/picacomic/fregata/fragments/HomeFragment;

    const-string v0, "field \'toolbar\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'viewPager_banner\'"

    .line 25
    const-class v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f09031e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    const-string v0, "field \'textView_bannerTitle\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->textView_bannerTitle:Landroid/widget/TextView;

    const-string v0, "field \'linearLayout_pagerIndicators\'"

    .line 27
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901ab

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_pagerIndicators:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_announcements\'"

    .line 28
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_announcements:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_collection_1\'"

    .line 29
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901ac

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_collection_2\'"

    .line 30
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901ad

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_2:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_collection_3\'"

    .line 31
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_3:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_collection_4\'"

    .line 32
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_4:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_collection_5\'"

    .line 33
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_5:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment_ViewBinding;->pz:Lcom/picacomic/fregata/fragments/HomeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/HomeFragment_ViewBinding;->pz:Lcom/picacomic/fregata/fragments/HomeFragment;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->textView_bannerTitle:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_pagerIndicators:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_announcements:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_2:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_3:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_4:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_5:Landroid/widget/LinearLayout;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
