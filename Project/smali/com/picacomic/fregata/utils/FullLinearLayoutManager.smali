.class public Lcom/picacomic/fregata/utils/FullLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "FullLinearLayoutManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FullLinearLayoutManager"


# instance fields
.field private un:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 17
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x2

    .line 17
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x2

    .line 17
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .locals 4

    const/4 p2, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 92
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 91
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 95
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 94
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 97
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    const/4 p2, 0x1

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 100
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    .line 104
    :goto_1
    throw p1
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 11

    .line 35
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 36
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 37
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 38
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 40
    sget-object v2, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure called. \nwidthMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \nheightMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " \nwidthSize "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " \nheightSize "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " \ngetItemCount() "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getItemCount()I

    move-result p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 40
    invoke-static {v2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getItemCount()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 50
    invoke-static {v8, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 51
    invoke-static {v8, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    move-object v2, p0

    move-object v3, p1

    move v4, v8

    .line 49
    invoke-direct/range {v2 .. v7}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 54
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    aget v2, v2, p4

    add-int/2addr v9, v2

    if-nez v8, :cond_1

    .line 57
    iget-object v2, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    aget v10, v2, v3

    goto :goto_1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    aget v2, v2, v3

    add-int/2addr v10, v2

    if-nez v8, :cond_1

    .line 62
    iget-object v2, p0, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->un:[I

    aget v9, v2, p4

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    if-eq p2, p1, :cond_3

    move p3, v9

    :cond_3
    if-eq v0, p1, :cond_4

    move v1, v10

    .line 80
    :cond_4
    invoke-virtual {p0, p3, v1}, Lcom/picacomic/fregata/utils/FullLinearLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method
