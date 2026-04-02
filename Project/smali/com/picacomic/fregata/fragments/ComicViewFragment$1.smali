.class Lcom/picacomic/fregata/fragments/ComicViewFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ComicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicViewFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicViewFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p2, :cond_2

    .line 114
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    .line 116
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    iget-boolean p2, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nY:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nY:Z

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    if-gez p2, :cond_1

    .line 120
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    goto :goto_0

    .line 123
    :cond_1
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicViewFragment;->nV:Lcom/picacomic/fregata/a/d;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    invoke-interface {p1, p2}, Lcom/picacomic/fregata/a/d;->r(I)V

    .line 127
    sget-object p1, Lcom/picacomic/fregata/fragments/ComicViewFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current Page = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewFragment$1;->nZ:Lcom/picacomic/fregata/fragments/ComicViewFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/ComicViewFragment;->currentPage:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
