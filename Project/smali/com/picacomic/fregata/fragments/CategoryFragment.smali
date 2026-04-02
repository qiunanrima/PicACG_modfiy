.class public Lcom/picacomic/fregata/fragments/CategoryFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "CategoryFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "CategoryFragment"


# instance fields
.field coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ae
    .end annotation
.end field

.field kA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field kB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field kC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field kD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/DefaultCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field kE:Z

.field kF:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/CategoryResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field kG:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/TagListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field kH:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/KeywordsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field kx:Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;

.field ky:[Landroid/widget/Button;

.field kz:[Landroid/widget/Button;

.field linearLayout_keywords:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field linearLayout_tags:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090185
    .end annotation
.end field

.field recyclerView_category:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f2
    .end annotation
.end field

.field scrollView:Landroid/support/v4/widget/NestedScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090216
    .end annotation
.end field

.field searchView:Landroid/support/v7/widget/SearchView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090219
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 421
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 422
    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 424
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 425
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 426
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->c(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 11

    .line 630
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const v1, 0x7f0900ab

    const v2, 0x7f010027

    const v3, 0x7f010026

    const v4, 0x7f010025

    const v5, 0x7f010024

    packed-switch p1, :pswitch_data_0

    .line 724
    iget-object v6, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr p1, v0

    if-le v6, p1, :cond_1

    .line 726
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CategoryObject;->isWeb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CategoryObject;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 728
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CategoryObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CategoryObject;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/PicaAppFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/PicaAppFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->TAG:Ljava/lang/String;

    .line 730
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 731
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 713
    :pswitch_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 714
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v2, "CATEGORY_RANDOM"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 715
    invoke-static/range {v2 .. v10}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicListFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 716
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 717
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 667
    :pswitch_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 668
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dd"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 669
    invoke-static/range {v2 .. v10}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicListFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 670
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 671
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 653
    :pswitch_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 654
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "5822a6e3ad7ede654696e482"

    .line 655
    invoke-static {v0, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    .line 656
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 674
    :pswitch_3
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 691
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/PicaAppContainerFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/PicaAppContainerFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/PicaAppContainerFragment;->TAG:Ljava/lang/String;

    .line 696
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/PicaAppContainerFragment;->TAG:Ljava/lang/String;

    .line 697
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 660
    :pswitch_4
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 661
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/GameFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/GameFragment;->TAG:Ljava/lang/String;

    .line 662
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/GameFragment;->TAG:Ljava/lang/String;

    .line 663
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 664
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 646
    :pswitch_5
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 647
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->TAG:Ljava/lang/String;

    .line 648
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->TAG:Ljava/lang/String;

    .line 649
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 650
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 635
    :pswitch_6
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz p1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/MainActivity;->bW()V

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 735
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    .line 736
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/CategoryObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CategoryObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dd"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicListFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 737
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 738
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bH()V
    .locals 4

    .line 294
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 295
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 297
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 300
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ai(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "https://www.picacomic.com/faq"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showFaqAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/e;->n(Landroid/content/Context;Z)Z

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kE:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->cl()V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bI()V

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bI()V

    .line 329
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 330
    :cond_4
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->ck()V

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->c(Landroid/view/View;)V

    return-void
.end method

.method public bI()V
    .locals 6

    .line 355
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 357
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kx:Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 359
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1000ed

    invoke-direct {v3, v4, v2, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    aput-object v3, v1, v0

    .line 364
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06007f

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 365
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080086

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kA:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    aget-object v1, v1, v0

    new-instance v2, Lcom/picacomic/fregata/fragments/CategoryFragment$3;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CategoryFragment$3;-><init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->linearLayout_tags:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->ky:[Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/picacomic/fregata/utils/g;->a(Landroid/widget/LinearLayout;[Landroid/view/View;Landroid/content/Context;Landroid/view/View;)I

    :cond_1
    return-void
.end method

.method public ca()V
    .locals 4

    .line 233
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 258
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v1, Lcom/picacomic/fregata/fragments/CategoryFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CategoryFragment$2;-><init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 279
    new-instance v0, Lcom/picacomic/fregata/utils/FullGridLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 282
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->recyclerView_category:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 286
    new-instance v0, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kx:Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;

    .line 287
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->recyclerView_category:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kx:Lcom/picacomic/fregata/adapters/CategoryRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 288
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->recyclerView_category:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public ci()V
    .locals 6

    .line 182
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f08008e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 218
    :pswitch_0
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v2, ""

    const v3, 0x7f0f00ab

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080090

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 197
    :pswitch_1
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v2, ""

    const v3, 0x7f0f00a5

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08008b

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 203
    :pswitch_2
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v2, ""

    const v3, 0x7f0f00aa

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080089

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 200
    :pswitch_3
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v3, ""

    const v4, 0x7f0f00a8

    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 206
    :pswitch_4
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v3, ""

    const v4, 0x7f0f00a2

    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 194
    :pswitch_5
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v2, ""

    const v3, 0x7f0f00a4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08008a

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 191
    :pswitch_6
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v2, ""

    const v3, 0x7f0f00a6

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f08008c

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 188
    :pswitch_7
    new-instance v1, Lcom/picacomic/fregata/objects/DefaultCategoryObject;

    const-string v2, ""

    const v3, 0x7f0f00ac

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080091

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/picacomic/fregata/objects/DefaultCategoryObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cj()V
    .locals 6

    .line 393
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1000c9

    invoke-direct {v3, v4, v2, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    aput-object v3, v1, v0

    .line 398
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060079

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 399
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080077

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kB:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    aget-object v1, v1, v0

    new-instance v2, Lcom/picacomic/fregata/fragments/CategoryFragment$4;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CategoryFragment$4;-><init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->linearLayout_keywords:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kz:[Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/picacomic/fregata/utils/g;->a(Landroid/widget/LinearLayout;[Landroid/view/View;Landroid/content/Context;Landroid/view/View;)I

    :cond_1
    return-void
.end method

.method public ck()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->bA()V

    .line 436
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->ar(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kH:Lretrofit2/Call;

    .line 439
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kH:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CategoryFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CategoryFragment$5;-><init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public cl()V
    .locals 2

    .line 582
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->C(Ljava/lang/String;)V

    .line 585
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 587
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->al(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kF:Lretrofit2/Call;

    .line 589
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kF:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/CategoryFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CategoryFragment$6;-><init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 151
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 159
    sget-object v0, Lcom/picacomic/fregata/fragments/CategoryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kE:Z

    .line 164
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kD:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->ci()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kE:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0b0044

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/e;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/e;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 121
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/picacomic/fregata/utils/e;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/picacomic/fregata/fragments/CategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/CategoryFragment$1;-><init>(Lcom/picacomic/fregata/fragments/CategoryFragment;)V

    .line 123
    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CategoryFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 122
    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CategoryFragment;->a(Landroid/view/View;)V

    :cond_2
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kG:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kG:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kH:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kH:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kF:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kF:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 764
    :cond_2
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 142
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/CategoryFragment;->kC:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/picacomic/fregata/utils/e;->j(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 388
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 389
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CategoryFragment;->cj()V

    return-void
.end method
