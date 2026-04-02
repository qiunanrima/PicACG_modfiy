.class public Lcom/picacomic/fregata/utils/FullGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "FullGridLayoutManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FullGridLayoutManager"


# instance fields
.field private un:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 p2, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 89
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 88
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 91
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 90
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 92
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    const/4 p2, 0x1

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 95
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 17

    move-object/from16 v6, p0

    .line 32
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 33
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 34
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 35
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getItemCount()I

    move-result v11

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getSpanCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v14, v11, :cond_4

    .line 43
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 44
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v6, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 48
    rem-int v0, v14, v12

    if-nez v0, :cond_0

    .line 49
    iget-object v0, v6, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    aget v0, v0, v13

    add-int/2addr v15, v0

    :cond_0
    if-nez v14, :cond_3

    .line 52
    iget-object v0, v6, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    aget v16, v0, v1

    goto :goto_1

    .line 55
    :cond_1
    rem-int v0, v14, v12

    if-nez v0, :cond_2

    .line 56
    iget-object v0, v6, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    aget v0, v0, v1

    add-int v16, v16, v0

    :cond_2
    if-nez v14, :cond_3

    .line 59
    iget-object v0, v6, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->un:[I

    aget v15, v0, v13

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v7, v0, :cond_5

    goto :goto_2

    :cond_5
    move v15, v9

    :goto_2
    if-eq v8, v0, :cond_6

    move/from16 v10, v16

    .line 78
    :cond_6
    invoke-virtual {v6, v15, v10}, Lcom/picacomic/fregata/utils/FullGridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method
