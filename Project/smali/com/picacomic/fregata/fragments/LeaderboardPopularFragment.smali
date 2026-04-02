.class public Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "LeaderboardPopularFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "LeaderboardPopularFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/LeaderboardComicListObject;",
            ">;"
        }
    .end annotation
.end field

.field jM:Ljava/lang/String;

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

.field pJ:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field pK:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field pL:Ljava/lang/String;

.field pM:Z

.field radioButton_24hr:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e7
    .end annotation
.end field

.field radioButton_30days:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e8
    .end annotation
.end field

.field radioButton_7days:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e9
    .end annotation
.end field

.field radioGroup_time:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ea
    .end annotation
.end field

.field recyclerView_popular:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 306
    sget-object v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array Item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 310
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0900ab

    .line 311
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    .line 312
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public bH()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 189
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    sget-object v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL in initUI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->dp()V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 201
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 150
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pK:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$1;-><init>(Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pK:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioGroup_time:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pK:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public dp()V
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->C(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pL:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pJ:Lretrofit2/Call;

    .line 255
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pJ:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;-><init>(Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 99
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    .line 127
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string v2, "INIT ARRAY"

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    const-string v1, "H24"

    .line 130
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    const-string v1, "VC"

    .line 131
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pL:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->radioButton_24hr:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 135
    :cond_0
    sget-object v1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS INIT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " timeType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 138
    new-instance v0, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    .line 139
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->recyclerView_popular:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 140
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->recyclerView_popular:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pI:Lcom/picacomic/fregata/adapters/LeaderboardPopularRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 142
    sget-object v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string v1, "FLOW 1"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 208
    sget-object p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string v0, "FLOW 2"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005a

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pJ:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pJ:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 236
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onResume()V

    .line 237
    sget-object v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string v1, "FLOW 4"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->pM:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 213
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onStart()V

    .line 214
    sget-object v0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string v1, "FLOW 3"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 220
    sget-object p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string p2, "FLOW 5"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 231
    sget-object p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->TAG:Ljava/lang/String;

    const-string v0, "FLOW 6"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
