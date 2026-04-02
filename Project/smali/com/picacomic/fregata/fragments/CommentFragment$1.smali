.class Lcom/picacomic/fregata/fragments/CommentFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CommentFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ow:Lcom/picacomic/fregata/fragments/CommentFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CommentFragment;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$1;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 330
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 332
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$1;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->jz:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$1;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/CommentFragment$1;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/CommentFragment;->totalPage:I

    if-ge p1, p2, :cond_0

    .line 334
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$1;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    iget p2, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/picacomic/fregata/fragments/CommentFragment;->page:I

    .line 335
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CommentFragment$1;->ow:Lcom/picacomic/fregata/fragments/CommentFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/fragments/CommentFragment;->C(Z)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 341
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
