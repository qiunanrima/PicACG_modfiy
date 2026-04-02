.class public Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "LeaderboardKnightFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "LeaderboardKnightFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/LeaderboardKnightObject;",
            ">;"
        }
    .end annotation
.end field

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field pE:Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;

.field pF:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field recyclerView_knight:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 11

    .line 161
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getLeaderboardKnightId()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicListFragment;

    move-result-object p1

    sget-object v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    const v2, 0x7f0900ab

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public bH()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->do()V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 101
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pE:Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public ca()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    return-void
.end method

.method public do()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->C(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->ap(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pF:Lretrofit2/Call;

    .line 111
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pF:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;-><init>(Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    .line 79
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 80
    new-instance v0, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pE:Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;

    .line 81
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->recyclerView_knight:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->recyclerView_knight:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pE:Lcom/picacomic/fregata/adapters/LeaderboardKnightRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0059

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pF:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->pF:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
