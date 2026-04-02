.class public Lcom/picacomic/fregata/fragments/ApkVersionListFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ApkVersionListFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "ApkVersionListFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/LatestApplicationObject;",
            ">;"
        }
    .end annotation
.end field

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field km:Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;

.field kn:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field page:I

.field recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f1
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field

.field totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/LatestApplicationObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showUpdateApkAlertDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/LatestApplicationObject;Z)V

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 98
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f9

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 99
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->ce()V

    return-void
.end method

.method public bI()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->km:Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public ca()V
    .locals 4

    .line 77
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 87
    new-instance v0, Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->km:Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;

    .line 88
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->km:Lcom/picacomic/fregata/adapters/ApkVersionListRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public ce()V
    .locals 3

    .line 118
    iget v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->page:I

    iget v1, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->totalPage:I

    if-lt v0, v1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 122
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->page:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->b(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->kn:Lretrofit2/Call;

    .line 128
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->kn:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ApkVersionListFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->page:I

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->totalPage:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0b0043

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->kn:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ApkVersionListFragment;->kn:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
