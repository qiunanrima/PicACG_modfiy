.class Lcom/picacomic/fregata/fragments/ComicListFragment$9;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ComicListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicListFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nT:Lcom/picacomic/fregata/fragments/ComicListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .line 425
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 426
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p2, :cond_4

    .line 436
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->editText_currentPage:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    div-int/lit8 p2, p2, 0x15

    .line 438
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->editText_currentPage:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget v2, v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->hP:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->editText_currentPage:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_4

    .line 445
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CATEGORY_USER_FAVOURITE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 446
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cV()V

    goto :goto_0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CATEGORY_RECENT_VIEW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cS()V

    goto :goto_0

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CATEGORY_DOWNLOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 452
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cT()V

    goto :goto_0

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$9;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cW()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 465
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
