.class public Lcom/picacomic/fregata/fragments/ComicViewerListFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ComicViewerListFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/c;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicViewerListFragment"


# instance fields
.field currentPage:I

.field hC:Z

.field hF:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field hP:I

.field if:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;"
        }
    .end annotation
.end field

.field jQ:Landroid/support/v7/widget/LinearLayoutManager;

.field listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c0
    .end annotation
.end field

.field nV:Lcom/picacomic/fregata/a/d;

.field nX:I

.field nY:Z

.field ob:Lcom/picacomic/fregata/adapters/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nX:I

    .line 53
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nY:Z

    .line 56
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    .line 57
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->hP:I

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->hF:I

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 2

    .line 310
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cZ()V

    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 320
    :goto_0
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->hC:Z

    .line 321
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/adapters/a;->r(Z)V

    .line 322
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/a;->notifyDataSetChanged()V

    return-void
.end method

.method public M(I)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cZ()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/adapters/a;->q(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 298
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/adapters/a;->q(Z)V

    .line 300
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 301
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 303
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;IZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;IZZ)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cZ()V

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nY:Z

    if-eqz p4, :cond_0

    .line 231
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nX:I

    .line 232
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-virtual {p4, v0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->smoothScrollToPosition(I)V

    .line 233
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 234
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 237
    :cond_0
    iget p4, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->hP:I

    if-eq p4, p2, :cond_1

    if-nez p3, :cond_1

    .line 238
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    const/4 p4, 0x1

    goto :goto_1

    .line 242
    :cond_1
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 243
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_0
    const/4 p4, 0x0

    .line 246
    :goto_1
    iput p2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->hP:I

    .line 248
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    sget v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int v2, p2, v2

    sget v3, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/a;->y(I)V

    .line 249
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {v1}, Lcom/picacomic/fregata/adapters/a;->notifyDataSetChanged()V

    .line 251
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicPageObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 256
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    sget p3, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int p3, p2, p3

    sget v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int p3, p3, v0

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->setSelection(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 261
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    sget p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->setSelection(I)V

    :cond_4
    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cZ()V

    .line 282
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    invoke-virtual {p2, p1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->setSelection(I)V

    .line 284
    iput p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    return-void
.end method

.method public bH()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 180
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bL()V

    .line 182
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bH()V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 192
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/a;->notifyDataSetChanged()V

    return-void
.end method

.method public cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cZ()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public ca()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 103
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ComicViewerListFragment;)V

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 86
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 87
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->if:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/adapters/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    .line 93
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 95
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->listView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableListView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ob:Lcom/picacomic/fregata/adapters/a;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 199
    instance-of v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->a(Lcom/picacomic/fregata/a/c;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0050

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nV:Lcom/picacomic/fregata/a/d;

    .line 77
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->a(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->a(Lcom/picacomic/fregata/a/c;)V

    .line 209
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
