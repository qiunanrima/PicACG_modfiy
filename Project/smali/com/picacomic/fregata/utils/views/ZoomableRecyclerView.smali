.class public Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ZoomableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZoomableRecyclerView"

.field static gx:F

.field static gy:F


# instance fields
.field private centerX:F

.field private centerY:F

.field private defaultScaleFactor:F

.field private isPagerEnabled:Z

.field private isVertical:Z

.field private mActivePointerId:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mPosX:F

.field private mPosY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field matrix:Landroid/graphics/Matrix;

.field private screenWidth:I

.field private totalMovementX:F

.field private totalMovementY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    const/16 v0, 0x438

    .line 42
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    .line 43
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->matrix:Landroid/graphics/Matrix;

    .line 52
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    const/16 p2, 0x438

    .line 42
    iput p2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    .line 43
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->matrix:Landroid/graphics/Matrix;

    .line 58
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    const/16 p2, 0x438

    .line 42
    iput p2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    .line 43
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->matrix:Landroid/graphics/Matrix;

    .line 64
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    return p0
.end method

.method static synthetic access$102(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$202(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->centerX:F

    return p1
.end method

.method static synthetic access$302(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->centerY:F

    return p1
.end method

.method static synthetic access$400(Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 84
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 85
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isPagerEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isPagerEnabled:Z

    .line 90
    :goto_0
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    .line 92
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    .line 94
    :cond_1
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->invalidate()V

    return-void
.end method

.method public fling(II)Z
    .locals 4

    .line 200
    iget-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isPagerEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isVertical:Z

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 204
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 205
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 206
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 215
    iget p2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    .line 216
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 218
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v0, p2

    sub-int/2addr v1, v2

    const/4 p2, 0x0

    if-lez p1, :cond_0

    .line 227
    invoke-virtual {p0, v0, p2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    neg-int p1, v1

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->smoothScrollBy(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 232
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1

    .line 236
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public getScreenWidth()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isVertical:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 73
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->centerX:F

    iget v3, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->centerY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 104
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const/4 v0, -0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 174
    :pswitch_0
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    goto/16 :goto_1

    .line 122
    :pswitch_1
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    .line 125
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 128
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchX:F

    sub-float v1, v0, v1

    .line 129
    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchY:F

    sub-float v2, p1, v2

    .line 132
    iget-boolean v3, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isVertical:Z

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 133
    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    iget v3, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    iput v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    .line 137
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 138
    iput v6, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    .line 144
    :cond_1
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    neg-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    sub-float/2addr v2, v5

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    sub-float/2addr v2, v5

    mul-float v1, v1, v2

    iput v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosX:F

    goto :goto_0

    .line 148
    :cond_2
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    iget v3, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    .line 149
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 150
    iput v6, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    .line 152
    :cond_3
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    neg-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    sub-float/2addr v2, v5

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    sub-float/2addr v2, v5

    mul-float v1, v1, v2

    iput v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mPosY:F

    .line 159
    :cond_4
    :goto_0
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchX:F

    .line 160
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchY:F

    .line 164
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->invalidate()V

    goto :goto_1

    .line 169
    :pswitch_2
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    goto :goto_1

    .line 109
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 112
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchX:F

    .line 113
    iput v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchY:F

    .line 116
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    goto :goto_1

    :cond_5
    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 182
    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    if-ne v1, v2, :cond_7

    if-nez v0, :cond_6

    const/4 v3, 0x1

    .line 186
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchX:F

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mLastTouchY:F

    .line 188
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mActivePointerId:I

    :cond_7
    :goto_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->screenWidth:I

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->isVertical:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 279
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->defaultScaleFactor:F

    .line 280
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableRecyclerView;->mScaleFactor:F

    return-void
.end method
