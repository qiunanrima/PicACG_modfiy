.class Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ComicDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p2, :cond_0

    .line 250
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$2;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->bN()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
