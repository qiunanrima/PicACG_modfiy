.class public Lcom/picacomic/fregata/fragments/ChatroomListFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ChatroomListFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomListFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;"
        }
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field jR:Z

.field kS:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field mP:Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;

.field recyclerView_list:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f5
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

    .line 73
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    const v1, 0x7f0900ab

    const v2, 0x7f010027

    const v3, 0x7f010026

    const v4, 0x7f010025

    const v5, 0x7f010024

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatroomListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatroomListObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v6, "allchatroom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 291
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->TAG:Ljava/lang/String;

    .line 292
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->TAG:Ljava/lang/String;

    .line 293
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/ChatroomListObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ChatroomListObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v6, "custompicaapp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 299
    invoke-virtual {p1, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->TAG:Ljava/lang/String;

    .line 300
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;->TAG:Ljava/lang/String;

    .line 301
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v5, v4, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ChatroomListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ChatroomListObject;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->M(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ChatroomFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    .line 309
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_0
    return-void
.end method

.method public bH()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 160
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->cm()V

    return-void
.end method

.method public bI()V
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 173
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->mP:Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public ca()V
    .locals 4

    .line 120
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 129
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 130
    new-instance v0, Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->mP:Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;

    .line 131
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->recyclerView_list:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->recyclerView_list:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->mP:Lcom/picacomic/fregata/adapters/ChatroomListRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public cm()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jR:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jR:Z

    .line 189
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->C(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->at(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->kS:Lretrofit2/Call;

    .line 195
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->kS:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ChatroomListFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 88
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->jR:Z

    .line 96
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->gson:Lcom/google/gson/Gson;

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/fragments/ChatroomListFragment$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/ChatroomListFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomListFragment;)V

    .line 108
    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ChatroomListFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->arrayList:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004a

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->kS:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomListFragment;->kS:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 269
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
