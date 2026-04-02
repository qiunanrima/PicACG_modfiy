.class public Lcom/picacomic/fregata/fragments/AnnouncementListFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "AnnouncementListFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "AnnouncementListFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;"
        }
    .end annotation
.end field

.field jO:Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;

.field jP:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field jR:Z

.field page:I

.field recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ef
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

    .line 59
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getContent()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 123
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 124
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->cb()V

    return-void
.end method

.method public bI()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 136
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jO:Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public ca()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 93
    new-instance v0, Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jO:Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jO:Lcom/picacomic/fregata/adapters/AnnouncementListRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 97
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->recyclerView_apkVersions:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$1;-><init>(Lcom/picacomic/fregata/fragments/AnnouncementListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public cb()V
    .locals 4

    .line 144
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jR:Z

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->page:I

    iget v1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->totalPage:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jR:Z

    .line 152
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->C(Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->page:I

    add-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/picacomic/fregata/b/a;->f(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jP:Lretrofit2/Call;

    .line 158
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jP:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment$2;-><init>(Lcom/picacomic/fregata/fragments/AnnouncementListFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->page:I

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->totalPage:I

    .line 78
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jR:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0041

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jP:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->jP:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 206
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
