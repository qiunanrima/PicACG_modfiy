.class public Lcom/picacomic/fregata/utils/views/SnapRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SnapRecyclerView.java"


# instance fields
.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->setScreenWidth(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->setScreenWidth(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->setScreenWidth(Landroid/content/Context;)V

    return-void
.end method

.method private setScreenWidth(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 75
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->screenWidth:I

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 40
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 51
    iget p2, p0, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->screenWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    .line 52
    iget v1, p0, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->screenWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v0, p2

    sub-int/2addr v1, v2

    const/4 p2, 0x0

    if-lez p1, :cond_0

    .line 63
    invoke-virtual {p0, v0, p2}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    neg-int p1, v1

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->smoothScrollBy(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 68
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method
