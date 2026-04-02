.class public Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;
.super Ljava/lang/Object;
.source "SimpleMultiPointTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field final DOUBLE_CLICK_INTERVAL:I

.field public final TAG:Ljava/lang/String;

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

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiPointTouchListener"

    .line 13
    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x258

    .line 21
    iput v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->DOUBLE_CLICK_INTERVAL:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mode:I

    .line 27
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    .line 28
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mid:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    iput v1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->oldDist:F

    .line 32
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->saveOriginal:Z

    .line 35
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    .line 36
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    .line 67
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->view:Landroid/view/View;

    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 538
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    div-float/2addr v0, p2

    .line 539
    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 543
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 532
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 533
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public isLeftOrRight(Z)Z
    .locals 3

    const-string v0, "MultiPointTouchListener"

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CanScroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 78
    move-object/from16 v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    .line 83
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

    .line 102
    :pswitch_1
    invoke-direct {v0, v2}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->oldDist:F

    .line 103
    iget v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->oldDist:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 104
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 105
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mid:Landroid/graphics/PointF;

    invoke-direct {v0, v3, v2}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 106
    iput v9, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mode:I

    :cond_1
    const-string v2, "EVENTTOUCH"

    const-string v3, "Second Down?"

    .line 109
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 127
    :pswitch_2
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    .line 128
    iget v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mode:I

    if-ne v3, v4, :cond_2

    .line 129
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 131
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v12, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v12, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v12

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v2, "EVENTTOUCH"

    const-string v3, "DRAG"

    .line 132
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_2
    iget v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mode:I

    if-ne v3, v9, :cond_4

    .line 134
    invoke-direct {v0, v2}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    cmpl-float v3, v2, v5

    if-lez v3, :cond_3

    .line 136
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 137
    iget v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->oldDist:F

    div-float/2addr v2, v3

    .line 138
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mid:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v12, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mid:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v2, v5, v12}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    const-string v2, "EVENTTOUCH"

    const-string v3, "ZOOM"

    .line 141
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const-string v2, "EVENTTOUCH"

    const-string v3, "MOVE"

    .line 143
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_3
    const-string v2, "EVENTTOUCH"

    const-string v3, "First up"

    .line 112
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v12, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x258

    cmp-long v5, v2, v12

    if-gez v5, :cond_5

    .line 114
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    .line 115
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    const-string v2, "EVENTTOUCH"

    const-string v3, "isDoubleClick = true"

    .line 116
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    .line 119
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    const-string v2, "EVENTTOUCH"

    const-string v3, "isDoubleClick = false"

    .line 120
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :pswitch_4
    const-string v2, "EVENTTOUCH"

    const-string v3, "Second up"

    .line 123
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mode:I

    goto :goto_2

    .line 86
    :pswitch_5
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 88
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v3, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 89
    iput v4, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->mode:I

    .line 93
    iget-boolean v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->saveOriginal:Z

    if-eqz v2, :cond_6

    .line 94
    new-array v2, v6, [F

    .line 95
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 96
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    aget v5, v2, v9

    aget v2, v2, v10

    invoke-virtual {v3, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 97
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->saveOriginal:Z

    .line 148
    :cond_6
    :goto_2
    new-array v2, v6, [F

    .line 149
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v3, "MultiPointTouchListener"

    const-string v5, "==========Start=========="

    .line 150
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Cal width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    aget v12, v2, v11

    mul-float v6, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Intrinsic width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Cal Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v12, 0x4

    aget v13, v2, v12

    mul-float v6, v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Intrinsic Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Matrix Scale X = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " Matrix Scale Y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tran X = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " tran Y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x6

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    const-string v5, "===========End===========\n"

    .line 156
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v13, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_12

    .line 196
    iget-boolean v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    if-eqz v3, :cond_8

    .line 197
    iget-boolean v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    if-eqz v2, :cond_7

    .line 198
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const-string v3, "MultiPointTouchListener"

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scale = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "original X = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " original Y = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " drawableView = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cal ing ori Y = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 211
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 214
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    goto :goto_3

    .line 218
    :cond_7
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 219
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 220
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 221
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    .line 223
    :goto_3
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 224
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    .line 225
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    return v4

    :cond_8
    const-string v3, "MultiPointTouchListener"

    const-string v5, "Run landscape"

    .line 230
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v2, v12

    mul-float v3, v3, v5

    .line 234
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 236
    aget v7, v2, v11

    float-to-double v7, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v7, v14

    if-gtz v16, :cond_9

    aget v7, v2, v12

    float-to-double v7, v7

    cmpg-double v16, v7, v14

    if-gtz v16, :cond_9

    .line 237
    invoke-virtual {v0, v4}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isLeftOrRight(Z)Z

    goto :goto_4

    .line 239
    :cond_9
    invoke-virtual {v0, v11}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isLeftOrRight(Z)Z

    .line 243
    :goto_4
    aget v7, v2, v9

    cmpl-float v7, v7, v13

    if-ltz v7, :cond_a

    .line 244
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v2, v9

    neg-float v8, v8

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "LEFT BOUND!!!!"

    .line 245
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 252
    :cond_a
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v2, v11

    mul-float v7, v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aget v14, v2, v9

    sub-float/2addr v8, v14

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_b

    .line 253
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v2, v9

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    aget v9, v2, v11

    mul-float v8, v8, v9

    sub-float/2addr v7, v8

    .line 254
    iget-object v8, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "RIGHT BOUND!!!!"

    .line 255
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_b
    :goto_5
    aget v7, v2, v10

    cmpl-float v7, v7, v13

    if-lez v7, :cond_c

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    aget v8, v2, v12

    mul-float v7, v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aget v9, v2, v10

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c

    .line 268
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v2, v10

    sub-float/2addr v5, v7

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    .line 280
    :cond_c
    aget v7, v2, v10

    cmpl-float v7, v7, v13

    if-lez v7, :cond_e

    .line 282
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_d

    .line 287
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v2, v10

    neg-float v8, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    sub-float/2addr v8, v3

    sub-float/2addr v8, v5

    invoke-virtual {v7, v13, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "VIEW > CAL, TOP BOUND!!!!"

    .line 288
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 290
    :cond_d
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v2, v10

    neg-float v8, v8

    invoke-virtual {v7, v13, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "TOP BOUND!!!!"

    .line 291
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_e
    :goto_6
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    aget v8, v2, v12

    mul-float v7, v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aget v9, v2, v10

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 297
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_f

    .line 302
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v2, v10

    sub-float/2addr v5, v7

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "VIEW > CAL, BOTTOM BOUND!!!!"

    .line 303
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 305
    :cond_f
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    aget v7, v2, v10

    add-float/2addr v3, v7

    neg-float v3, v3

    invoke-virtual {v5, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "BOTTOM BOUND!!!!"

    .line 306
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_10
    :goto_7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    aget v2, v2, v11

    mul-float v5, v5, v2

    cmpg-float v2, v3, v5

    if-gez v2, :cond_11

    .line 340
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 341
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    goto/16 :goto_c

    .line 346
    :cond_11
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const-string v3, "MultiPointTouchListener"

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scale = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original X = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " original Y = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " drawableView = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cal ing ori Y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 359
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 361
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 362
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    goto/16 :goto_c

    .line 379
    :cond_12
    iget-boolean v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    if-eqz v3, :cond_14

    .line 380
    iget-boolean v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    if-eqz v2, :cond_13

    .line 381
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const-string v3, "MultiPointTouchListener"

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scale = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "original X = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " original Y = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " drawableView = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view height = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " image height "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MultiPointTouchListener"

    .line 387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cal ing ori X = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 390
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 395
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 396
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    goto :goto_8

    .line 400
    :cond_13
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 401
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->start:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 402
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 403
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    .line 405
    :goto_8
    iget-object v1, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 406
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isDoubleClick:Z

    .line 407
    iput-wide v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->lastTouch:J

    return v4

    :cond_14
    const-string v3, "MultiPointTouchListener"

    const-string v5, "Run portaint"

    .line 411
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    aget v5, v2, v11

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 416
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    const-string v7, "MultiPointTouchListener"

    .line 418
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

    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    aget v7, v2, v9

    cmpl-float v7, v7, v13

    if-lez v7, :cond_15

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v2, v11

    mul-float v7, v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aget v14, v2, v9

    sub-float/2addr v8, v14

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    .line 423
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v2, v9

    sub-float/2addr v5, v7

    invoke-virtual {v3, v5, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "LEFT BOUND!!!!"

    .line 424
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 430
    :cond_15
    aget v7, v2, v9

    cmpl-float v7, v7, v13

    if-lez v7, :cond_17

    .line 432
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_16

    .line 434
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v2, v9

    neg-float v8, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v8, v14

    sub-float/2addr v8, v3

    sub-float/2addr v8, v5

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "VIEW > CAL, LEFT BOUND!!!!"

    .line 435
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 437
    :cond_16
    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v8, v2, v9

    neg-float v8, v8

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v7, "MultiPointTouchListener"

    const-string v8, "LEFT BOUND!!!!"

    .line 438
    invoke-direct {v0, v7, v8}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_17
    :goto_9
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    aget v8, v2, v11

    mul-float v7, v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aget v14, v2, v9

    sub-float/2addr v8, v14

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_19

    .line 447
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_18

    .line 452
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v7, v2, v9

    sub-float/2addr v5, v7

    invoke-virtual {v3, v5, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "VIEW > CAL, RIGHT BOUND!!!!"

    .line 453
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 455
    :cond_18
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    aget v7, v2, v9

    add-float/2addr v3, v7

    neg-float v3, v3

    invoke-virtual {v5, v3, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "RIGHT BOUND!!!!"

    .line 456
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_19
    :goto_a
    aget v3, v2, v10

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1a

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v2, v12

    mul-float v3, v3, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aget v7, v2, v10

    sub-float/2addr v5, v7

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1a

    .line 468
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v5, v2, v10

    neg-float v5, v5

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b

    .line 473
    :cond_1a
    aget v3, v2, v10

    cmpl-float v3, v3, v13

    if-lez v3, :cond_1b

    .line 475
    iget-object v3, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    aget v5, v2, v10

    neg-float v5, v5

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "TOP BOUND!!!!"

    .line 476
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_1b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v2, v12

    mul-float v3, v3, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aget v7, v2, v10

    sub-float/2addr v5, v7

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1c

    .line 481
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    aget v5, v2, v12

    mul-float v3, v3, v5

    .line 482
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    aget v7, v2, v10

    add-float/2addr v3, v7

    neg-float v3, v3

    invoke-virtual {v5, v13, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string v3, "MultiPointTouchListener"

    const-string v5, "BOTTOM BOUND!!!!"

    .line 483
    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_1c
    :goto_b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    aget v2, v2, v12

    mul-float v5, v5, v2

    cmpg-float v2, v3, v5

    if-gez v2, :cond_1d

    .line 491
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 492
    iput-boolean v4, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    goto/16 :goto_c

    .line 496
    :cond_1d
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const-string v3, "MultiPointTouchListener"

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scale = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original X = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " original Y = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MultiPointTouchListener"

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " drawableView = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    const-string v5, "MultiPointTouchListener"

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " image height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MultiPointTouchListener"

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cal ing ori X = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v5, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 505
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 510
    iget-object v2, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 511
    iput-boolean v11, v0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->isZoomed:Z

    :goto_c
    return v4

    nop

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

    .line 550
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

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MultiPointTouchListener"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageView original X = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "imageView original Y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->original:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MultiPointTouchListener"

    .line 553
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

    invoke-direct {p0, v1, v2}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
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

    .line 555
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

    invoke-direct {p0, v2, v3}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MultiPointTouchListener"

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cal ing ori X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 558
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 561
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setListenerAndView(Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/SimpleMultiPointTouchListener;->view:Landroid/view/View;

    return-void
.end method
