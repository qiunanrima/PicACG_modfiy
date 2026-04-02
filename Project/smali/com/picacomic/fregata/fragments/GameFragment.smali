.class public Lcom/picacomic/fregata/fragments/GameFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "GameFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GameFragment"


# instance fields
.field page:I

.field pg:Z

.field ph:Z

.field pi:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field pj:Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;

.field pk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/GameListObject;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView_games:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fb
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

    .line 60
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 5

    .line 210
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 211
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pk:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/GameListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/GameListObject;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->ad(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/GameDetailFragment;

    move-result-object p1

    sget-object v1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    const v2, 0x7f0900ab

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    .line 213
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public bH()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 131
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f8

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/GameFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 133
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pg:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->di()V

    :cond_1
    return-void
.end method

.method public bI()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 146
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pj:Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public ca()V
    .locals 5

    .line 95
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 97
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 100
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameFragment;->recyclerView_games:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameFragment;->recyclerView_games:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pj:Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameFragment;->recyclerView_games:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;

    invoke-direct {v2, p0, v0}, Lcom/picacomic/fregata/fragments/GameFragment$ItemOffsetDecoration;-><init>(Lcom/picacomic/fregata/fragments/GameFragment;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 104
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->recyclerView_games:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameFragment$1;-><init>(Lcom/picacomic/fregata/fragments/GameFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public di()V
    .locals 3

    .line 151
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->ph:Z

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/GameFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 155
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/picacomic/fregata/fragments/GameFragment;->page:I

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->e(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pi:Lretrofit2/Call;

    .line 161
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pi:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameFragment$2;-><init>(Lcom/picacomic/fregata/fragments/GameFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 80
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pk:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->page:I

    .line 82
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->ph:Z

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pk:Ljava/util/ArrayList;

    .line 84
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pg:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pg:Z

    .line 89
    :goto_0
    new-instance v0, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pk:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pj:Lcom/picacomic/fregata/adapters/GameListRecyclerViewAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0054

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/GameFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pi:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameFragment;->pi:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
