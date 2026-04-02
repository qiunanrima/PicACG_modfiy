.class public Lcom/picacomic/fregata/utils/views/ZoomableListView;
.super Landroid/widget/ListView;
.source "ZoomableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field static gx:F

.field static gy:F


# instance fields
.field private centerX:F

.field private centerY:F

.field private isPagerEnabled:Z

.field private mActivePointerId:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mPosX:F

.field private mPosY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field matrix:Landroid/graphics/Matrix;

.field private totalMovementX:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    .line 35
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->matrix:Landroid/graphics/Matrix;

    .line 45
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableListView;Lcom/picacomic/fregata/utils/views/ZoomableListView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    .line 35
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->matrix:Landroid/graphics/Matrix;

    .line 39
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/picacomic/fregata/utils/views/ZoomableListView$ScaleListener;-><init>(Lcom/picacomic/fregata/utils/views/ZoomableListView;Lcom/picacomic/fregata/utils/views/ZoomableListView$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/picacomic/fregata/utils/views/ZoomableListView;)F
    .locals 0

    .line 11
    iget p0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    return p0
.end method

.method static synthetic access$102(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$202(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->centerX:F

    return p1
.end method

.method static synthetic access$302(Lcom/picacomic/fregata/utils/views/ZoomableListView;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->centerY:F

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 64
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 65
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->isPagerEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->isPagerEnabled:Z

    .line 70
    :goto_0
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    .line 72
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosY:F

    .line 74
    :cond_1
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 54
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/4 v0, -0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 142
    :pswitch_0
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    goto/16 :goto_0

    .line 101
    :pswitch_1
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 107
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchX:F

    sub-float v1, v0, v1

    .line 108
    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchY:F

    .line 110
    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    iget v3, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    iput v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    .line 114
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 115
    iput v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    .line 121
    :cond_1
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    neg-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mScaleFactor:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    iput v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mPosX:F

    .line 127
    :cond_2
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchX:F

    .line 128
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchY:F

    .line 132
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ZoomableListView;->invalidate()V

    goto :goto_0

    .line 137
    :pswitch_2
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 91
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchX:F

    .line 92
    iput v1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchY:F

    .line 95
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    goto :goto_0

    :cond_3
    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 150
    iget v2, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    if-ne v1, v2, :cond_5

    if-nez v0, :cond_4

    const/4 v3, 0x1

    .line 154
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchX:F

    .line 155
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mLastTouchY:F

    .line 156
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/utils/views/ZoomableListView;->mActivePointerId:I

    :cond_5
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
