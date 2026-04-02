.class public Lcom/picacomic/fregata/fragments/ComicViewFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ComicViewFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/c;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicViewFragment"


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

.field nV:Lcom/picacomic/fregata/a/d;

.field nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

.field nX:I

.field nY:Z

.field recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f9
    .end annotation
.end field


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
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nX:I

    .line 53
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nY:Z

    .line 56
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    .line 57
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->hP:I

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->hF:I

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cY()V

    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 316
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->setVertical(Z)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 320
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->setVertical(Z)V

    .line 322
    :goto_0
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->hC:Z

    .line 323
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->r(Z)V

    .line 324
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 325
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public M(I)V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cY()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->q(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 300
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->q(Z)V

    .line 302
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 303
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->setScreenWidth(I)V

    .line 305
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->invalidateItemDecorations()V

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

    .line 227
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cY()V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 233
    iput v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nX:I

    .line 234
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nY:Z

    .line 235
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p4, v0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->scrollToPosition(I)V

    .line 236
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 240
    :cond_0
    iget p4, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->hP:I

    if-eq p4, p2, :cond_1

    if-nez p3, :cond_1

    .line 241
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    const/4 p4, 0x1

    goto :goto_1

    .line 245
    :cond_1
    iget-object p4, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 246
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_0
    const/4 p4, 0x0

    .line 249
    :goto_1
    iput p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->hP:I

    .line 251
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    sget v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int v2, p2, v2

    sget v3, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->y(I)V

    .line 252
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 254
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getContext()Landroid/content/Context;

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

    .line 259
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    sget p3, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int p3, p2, p3

    sget v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int p3, p3, v0

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->scrollToPosition(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 262
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    sget p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->scrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public b(IZ)V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cY()V

    .line 282
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {p2, p1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->scrollToPosition(I)V

    .line 283
    iput p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    return-void
.end method

.method public bH()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 169
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bL()V

    .line 179
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bH()V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 195
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cY()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public ca()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 109
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ComicViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 84
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 86
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 87
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    iput v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->if:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    .line 97
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    .line 98
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->jQ:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nW:Lcom/picacomic/fregata/adapters/ComicPageRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->recyclerView_comic_viewer:Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->setScreenWidth(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 202
    instance-of v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->a(Lcom/picacomic/fregata/a/c;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004f

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->cX()Lcom/picacomic/fregata/activities/ComicViewerActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nV:Lcom/picacomic/fregata/a/d;

    .line 77
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->a(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->a(Lcom/picacomic/fregata/a/c;)V

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
