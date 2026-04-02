.class public Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;
.super Ljava/lang/Object;
.source "MultiPointTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field final DOUBLE_CLICK_INTERVAL:I

.field public final TAG:Ljava/lang/String;

.field imageView:Landroid/widget/ImageView;

.field isDoubleClick:Z

.field isZoomed:Z

.field lastTouch:J

.field matrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field mode:I

.field oldDist:F

.field final original:Landroid/graphics/PointF;

.field saveOriginal:Z

.field savedMatrix:Landroid/graphics/Matrix;

.field start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiPointTouchListener"

    .line 15
    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x258

    .line 23
    iput v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->DOUBLE_CLICK_INTERVAL:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mode:I

    .line 29
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    .line 30
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mid:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    iput v1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->oldDist:F

    .line 34
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->saveOriginal:Z

    .line 37
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    .line 38
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    .line 69
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 539
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    div-float/2addr v0, p2

    .line 540
    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 544
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 533
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 534
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public isLeftOrRight(Z)Z
    .locals 3

    const-string v0, "MultiPointTouchListener"

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanScroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 78
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->imageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    move-object/from16 v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    .line 84
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/high16 v5, 0x41200000    # 10.0f

    const/16 v6, 0x9

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 103
    :pswitch_1
    invoke-direct {v0, v1}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->oldDist:F

    .line 104
    iget v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->oldDist:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 105
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 106
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mid:Landroid/graphics/PointF;

    invoke-direct {v0, v3, v1}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 107
    iput v9, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mode:I

    :cond_1
    const-string v1, "EVENTTOUCH"

    const-string v3, "Second Down?"

    .line 110
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 128
    :pswitch_2
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    .line 129
    iget v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mode:I

    if-ne v3, v4, :cond_2

    .line 130
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 132
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v12, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v12, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v12

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v1, "EVENTTOUCH"

    const-string v3, "DRAG"

    .line 133
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_2
    iget v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mode:I

    if-ne v3, v9, :cond_4

    .line 135
    invoke-direct {v0, v1}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    cmpl-float v3, v1, v5

    if-lez v3, :cond_3

    .line 137
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 138
    iget v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->oldDist:F

    div-float/2addr v1, v3

    .line 139
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mid:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v12, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mid:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v1, v5, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    const-string v1, "EVENTTOUCH"

    const-string v3, "ZOOM"

    .line 142
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const-string v1, "EVENTTOUCH"

    const-string v3, "MOVE"

    .line 144
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_3
    const-string v1, "EVENTTOUCH"

    const-string v3, "First up"

    .line 113
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x258

    cmp-long v1, v12, v14

    if-gez v1, :cond_5

    .line 115
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    .line 116
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    const-string v1, "EVENTTOUCH"

    const-string v3, "isDoubleClick = true"

    .line 117
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    .line 120
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    const-string v1, "EVENTTOUCH"

    const-string v3, "isDoubleClick = false"

    .line 121
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :pswitch_4
    const-string v1, "EVENTTOUCH"

    const-string v3, "Second up"

    .line 124
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mode:I

    goto :goto_2

    .line 87
    :pswitch_5
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 88
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 89
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    iput v4, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->mode:I

    .line 94
    iget-boolean v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->saveOriginal:Z

    if-eqz v1, :cond_6

    .line 95
    new-array v1, v6, [F

    .line 96
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 97
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    aget v5, v1, v9

    aget v1, v1, v10

    invoke-virtual {v3, v5, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 98
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->saveOriginal:Z

    .line 149
    :cond_6
    :goto_2
    new-array v1, v6, [F

    .line 150
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v3, "MultiPointTouchListener"

    const-string v5, "==========Start=========="

    .line 151
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Cal width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    aget v12, v1, v11

    mul-float v6, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Intrinsic width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Cal Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v12, 0x4

    aget v13, v1, v12

    mul-float v6, v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Intrinsic Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Matrix Scale X = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Matrix Scale Y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tran X = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " tran Y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x6

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    const-string v5, "===========End===========\n"

    .line 157
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v13, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_12

    .line 197
    iget-boolean v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    if-eqz v3, :cond_8

    .line 198
    iget-boolean v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    if-eqz v1, :cond_7

    .line 199
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const-string v3, "MultiPointTouchListener"

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scale = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "original X = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " original Y = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " drawableView = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cal ing ori Y = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 212
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 214
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 215
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    goto :goto_3

    .line 219
    :cond_7
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 220
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 221
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 222
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    .line 224
    :goto_3
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 225
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    .line 226
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    return v4

    :cond_8
    const-string v3, "MultiPointTouchListener"

    const-string v5, "Run landscape"

    .line 231
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v1, v12

    mul-float v3, v3, v5

    .line 235
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 237
    aget v7, v1, v11

    float-to-double v7, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v7, v14

    if-gtz v16, :cond_9

    aget v7, v1, v12

    float-to-double v7, v7

    cmpg-double v16, v7, v14

    if-gtz v16, :cond_9

    .line 238
    invoke-virtual {v0, v4}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isLeftOrRight(Z)Z

    goto :goto_4

    .line 240
    :cond_9
    invoke-virtual {v0, v11}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isLeftOrRight(Z)Z

    .line 244
    :goto_4
    aget v7, v1, v9

    cmpl-float v7, v7, v13

    if-ltz v7, :cond_a

    .line 245
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v1, v9

    neg-float v8, v8

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "LEFT BOUND!!!!"

    .line 246
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 253
    :cond_a
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v1, v11

    mul-float v7, v7, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aget v14, v1, v9

    sub-float/2addr v8, v14

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_b

    .line 254
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v1, v9

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    aget v9, v1, v11

    mul-float v8, v8, v9

    sub-float/2addr v7, v8

    .line 255
    iget-object v8, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "RIGHT BOUND!!!!"

    .line 256
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_b
    :goto_5
    aget v7, v1, v10

    cmpl-float v7, v7, v13

    if-lez v7, :cond_c

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    aget v8, v1, v12

    mul-float v7, v7, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aget v9, v1, v10

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c

    .line 269
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v1, v10

    sub-float/2addr v5, v7

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    .line 281
    :cond_c
    aget v7, v1, v10

    cmpl-float v7, v7, v13

    if-lez v7, :cond_e

    .line 283
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_d

    .line 288
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v1, v10

    neg-float v8, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    sub-float/2addr v8, v3

    sub-float/2addr v8, v5

    invoke-virtual {v7, v13, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "VIEW > CAL, TOP BOUND!!!!"

    .line 289
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 291
    :cond_d
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v1, v10

    neg-float v8, v8

    invoke-virtual {v7, v13, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "TOP BOUND!!!!"

    .line 292
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_e
    :goto_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    aget v8, v1, v12

    mul-float v7, v7, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aget v9, v1, v10

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 298
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_f

    .line 303
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v1, v10

    sub-float/2addr v5, v7

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "VIEW > CAL, BOTTOM BOUND!!!!"

    .line 304
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 306
    :cond_f
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    aget v7, v1, v10

    add-float/2addr v3, v7

    neg-float v3, v3

    invoke-virtual {v5, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "BOTTOM BOUND!!!!"

    .line 307
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_10
    :goto_7
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    aget v1, v1, v11

    mul-float v5, v5, v1

    cmpg-float v1, v3, v5

    if-gez v1, :cond_11

    .line 341
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 342
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    goto/16 :goto_c

    .line 347
    :cond_11
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const-string v3, "MultiPointTouchListener"

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scale = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original X = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " original Y = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " drawableView = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cal ing ori Y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 360
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 362
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 363
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    goto/16 :goto_c

    .line 380
    :cond_12
    iget-boolean v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    if-eqz v3, :cond_14

    .line 381
    iget-boolean v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    if-eqz v1, :cond_13

    .line 382
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const-string v3, "MultiPointTouchListener"

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scale = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "original X = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " original Y = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " drawableView = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view height = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " image height "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MultiPointTouchListener"

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cal ing ori X = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 391
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 396
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 397
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    goto :goto_8

    .line 401
    :cond_13
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 402
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 403
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 404
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    .line 406
    :goto_8
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 407
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isDoubleClick:Z

    .line 408
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->lastTouch:J

    return v4

    :cond_14
    const-string v3, "MultiPointTouchListener"

    const-string v5, "Run portaint"

    .line 412
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    aget v5, v1, v11

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 417
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    const-string v7, "MultiPointTouchListener"

    .line 419
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calWidth = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " midWidth = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    aget v7, v1, v9

    cmpl-float v7, v7, v13

    if-lez v7, :cond_15

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v1, v11

    mul-float v7, v7, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aget v14, v1, v9

    sub-float/2addr v8, v14

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    .line 424
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v1, v9

    sub-float/2addr v5, v7

    invoke-virtual {v3, v5, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "LEFT BOUND!!!!"

    .line 425
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 431
    :cond_15
    aget v7, v1, v9

    cmpl-float v7, v7, v13

    if-lez v7, :cond_17

    .line 433
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_16

    .line 435
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v1, v9

    neg-float v8, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v8, v14

    sub-float/2addr v8, v3

    sub-float/2addr v8, v5

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "VIEW > CAL, LEFT BOUND!!!!"

    .line 436
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 438
    :cond_16
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v1, v9

    neg-float v8, v8

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "LEFT BOUND!!!!"

    .line 439
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_17
    :goto_9
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v1, v11

    mul-float v7, v7, v8

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aget v14, v1, v9

    sub-float/2addr v8, v14

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_19

    .line 448
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_18

    .line 453
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v1, v9

    sub-float/2addr v5, v7

    invoke-virtual {v3, v5, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "VIEW > CAL, RIGHT BOUND!!!!"

    .line 454
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 456
    :cond_18
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    aget v7, v1, v9

    add-float/2addr v3, v7

    neg-float v3, v3

    invoke-virtual {v5, v3, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "RIGHT BOUND!!!!"

    .line 457
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_19
    :goto_a
    aget v3, v1, v10

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1a

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v1, v12

    mul-float v3, v3, v5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aget v7, v1, v10

    sub-float/2addr v5, v7

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1a

    .line 469
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v5, v1, v10

    neg-float v5, v5

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b

    .line 474
    :cond_1a
    aget v3, v1, v10

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1b

    .line 476
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v5, v1, v10

    neg-float v5, v5

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "TOP BOUND!!!!"

    .line 477
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1b
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v1, v12

    mul-float v3, v3, v5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aget v7, v1, v10

    sub-float/2addr v5, v7

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1c

    .line 482
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v1, v12

    mul-float v3, v3, v5

    .line 483
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    aget v7, v1, v10

    add-float/2addr v3, v7

    neg-float v3, v3

    invoke-virtual {v5, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "BOTTOM BOUND!!!!"

    .line 484
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1c
    :goto_b
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    aget v1, v1, v12

    mul-float v5, v5, v1

    cmpg-float v1, v3, v5

    if-gez v1, :cond_1d

    .line 492
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 493
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    goto/16 :goto_c

    .line 497
    :cond_1d
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const-string v3, "MultiPointTouchListener"

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scale = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original X = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " original Y = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " drawableView = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " image height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MultiPointTouchListener"

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cal ing ori X = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 506
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 511
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 512
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->isZoomed:Z

    :goto_c
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setFillWidth(Landroid/widget/ImageView;)V
    .locals 5

    .line 551
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-string v1, "MultiPointTouchListener"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MultiPointTouchListener"

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageView original X = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "imageView original Y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MultiPointTouchListener"

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " drawableView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float v3, v3, v0

    sub-float/2addr v1, v3

    const-string v2, "MultiPointTouchListener"

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageView height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " imageView height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MultiPointTouchListener"

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cal ing ori X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 559
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 562
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setListenerAndView(Landroid/widget/ImageView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/MultiPointTouchListener;->imageView:Landroid/widget/ImageView;

    return-void
.end method
