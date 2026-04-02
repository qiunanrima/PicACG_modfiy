.class public Lcom/just/agentweb/WebIndicator;
.super Lcom/just/agentweb/BaseIndicatorView;
.source "WebIndicator.java"

# interfaces
.implements Lcom/just/agentweb/i;


# static fields
.field private static eV:I = 0x1f40

.field private static eW:I = 0x1c2

.field public static fa:I = 0x3


# instance fields
.field private eT:Landroid/animation/Animator;

.field private eU:I

.field private eX:I

.field private eY:F

.field private eZ:F

.field private fb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private fc:Landroid/animation/AnimatorListenerAdapter;

.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/BaseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eU:I

    .line 81
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eX:I

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eY:F

    .line 88
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    .line 265
    new-instance v0, Lcom/just/agentweb/WebIndicator$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebIndicator$1;-><init>(Lcom/just/agentweb/WebIndicator;)V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->fb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 275
    new-instance v0, Lcom/just/agentweb/WebIndicator$2;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebIndicator$2;-><init>(Lcom/just/agentweb/WebIndicator;)V

    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->fc:Landroid/animation/AnimatorListenerAdapter;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/WebIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/WebIndicator;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 112
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const-string p2, "#1aad19"

    .line 113
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    .line 114
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 117
    iget-object p2, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/just/agentweb/WebIndicator;->eU:I

    const/high16 p2, 0x40400000    # 3.0f

    .line 120
    invoke-static {p1, p2}, Lcom/just/agentweb/h;->a(Landroid/content/Context;F)I

    move-result p1

    sput p1, Lcom/just/agentweb/WebIndicator;->fa:I

    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/WebIndicator;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/just/agentweb/WebIndicator;->as()V

    return-void
.end method

.method private as()V
    .locals 2

    .line 296
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->eX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 297
    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 299
    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eX:I

    return-void
.end method

.method private c(Z)V
    .locals 10

    const/high16 v0, 0x42be0000    # 95.0f

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42be0000    # 95.0f

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 217
    :cond_1
    iget v3, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const v3, 0x322bcc77    # 1.0E-8f

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    :goto_1
    iput v3, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    const-string v3, "WebIndicator"

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentProgress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " v:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x3d4ccccd    # 0.05f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    if-nez p1, :cond_3

    .line 221
    new-array p1, v7, [F

    iget v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    aput v0, p1, v4

    aput v2, p1, v5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 222
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    div-float/2addr v0, v1

    sub-float/2addr v6, v0

    sub-float/2addr v6, v3

    .line 223
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    sget v0, Lcom/just/agentweb/WebIndicator;->eV:I

    int-to-float v0, v0

    mul-float v6, v6, v0

    float-to-long v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 225
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->fb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 227
    iput-object p1, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    goto/16 :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 231
    iget v8, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    cmpg-float v8, v8, v0

    if-gez v8, :cond_4

    .line 232
    new-array p1, v7, [F

    iget v8, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    aput v8, p1, v4

    aput v0, p1, v5

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 233
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    div-float/2addr v0, v1

    sub-float/2addr v6, v0

    sub-float/2addr v6, v3

    .line 234
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    sget v0, Lcom/just/agentweb/WebIndicator;->eW:I

    int-to-float v0, v0

    mul-float v6, v6, v0

    float-to-long v0, v6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->fb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    const-string v0, "alpha"

    .line 241
    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x258

    .line 242
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    new-array v1, v7, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 245
    iget-object v3, p0, Lcom/just/agentweb/WebIndicator;->fb:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    new-array v6, v7, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_5

    .line 251
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 252
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 255
    :goto_2
    iget-object p1, p0, Lcom/just/agentweb/WebIndicator;->fc:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 257
    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    .line 260
    :goto_3
    iput v5, p0, Lcom/just/agentweb/WebIndicator;->eX:I

    .line 261
    iput v2, p0, Lcom/just/agentweb/WebIndicator;->eY:F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data
.end method


# virtual methods
.method public Y()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 321
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/just/agentweb/WebIndicator;->fa:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 160
    iget v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v5, v0, v1

    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eX:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/just/agentweb/BaseIndicatorView;->onDetachedFromWindow()V

    .line 289
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 137
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 139
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 140
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_1
    :goto_0
    if-ne v1, v2, :cond_2

    .line 146
    sget p2, Lcom/just/agentweb/WebIndicator;->fa:I

    .line 148
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/WebIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/BaseIndicatorView;->onSizeChanged(IIII)V

    .line 176
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/just/agentweb/WebIndicator;->eU:I

    .line 177
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 178
    iget p2, p0, Lcom/just/agentweb/WebIndicator;->eU:I

    if-lt p2, p1, :cond_0

    const/16 p1, 0x1c2

    .line 179
    sput p1, Lcom/just/agentweb/WebIndicator;->eW:I

    const/16 p1, 0x1f40

    .line 180
    sput p1, Lcom/just/agentweb/WebIndicator;->eV:I

    goto :goto_0

    .line 183
    :cond_0
    iget p2, p0, Lcom/just/agentweb/WebIndicator;->eU:I

    int-to-float p2, p2

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p2, p1

    const/high16 p1, 0x45fa0000    # 8000.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 184
    sput p1, Lcom/just/agentweb/WebIndicator;->eV:I

    const/high16 p1, 0x43e10000    # 450.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 185
    sput p1, Lcom/just/agentweb/WebIndicator;->eW:I

    :goto_0
    const-string p1, "WebProgress"

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CURRENT_MAX_UNIFORM_SPEED_DURATION"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/just/agentweb/WebIndicator;->eV:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    .line 307
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->eT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 125
    iput p1, p0, Lcom/just/agentweb/WebIndicator;->mColor:I

    .line 126
    iget-object v0, p0, Lcom/just/agentweb/WebIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/just/agentweb/WebIndicator;->setColor(I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    :cond_0
    const/high16 v0, 0x42be0000    # 95.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    return-void

    .line 199
    :cond_1
    iget p1, p0, Lcom/just/agentweb/WebIndicator;->eX:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    .line 200
    invoke-direct {p0, p1}, Lcom/just/agentweb/WebIndicator;->c(Z)V

    :cond_2
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 314
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/just/agentweb/WebIndicator;->setProgress(F)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/just/agentweb/WebIndicator;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/just/agentweb/WebIndicator;->setVisibility(I)V

    const/4 v1, 0x0

    .line 167
    iput v1, p0, Lcom/just/agentweb/WebIndicator;->eZ:F

    .line 168
    invoke-direct {p0, v0}, Lcom/just/agentweb/WebIndicator;->c(Z)V

    :cond_0
    return-void
.end method
