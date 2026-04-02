.class public Lcom/isseiaoki/simplecropview/CropImageView;
.super Landroid/widget/ImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isseiaoki/simplecropview/CropImageView$SavedState;,
        Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;,
        Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;,
        Lcom/isseiaoki/simplecropview/CropImageView$CropMode;,
        Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImageView"


# instance fields
.field private A:Landroid/net/Uri;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Landroid/graphics/Bitmap$CompressFormat;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field private R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field private S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field private T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field private U:F

.field private V:I

.field private W:I

.field private a:I

.field private a_:Z

.field private aa:Z

.field private ab:Landroid/graphics/PointF;

.field private ac:F

.field private ad:F

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:F

.field private aj:Z

.field private ak:I

.field private al:Z

.field private b_:Z

.field private c:I

.field private c_:Z

.field private d:F

.field private e:F

.field private f:Z

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/RectF;

.field private m:Landroid/graphics/PointF;

.field private mAngle:F

.field private mBackgroundColor:I

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mScale:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Lcom/isseiaoki/simplecropview/a/a;

.field private final s:Landroid/view/animation/Interpolator;

.field private t:Lcom/isseiaoki/simplecropview/b/c;

.field private u:Lcom/isseiaoki/simplecropview/b/b;

.field private v:Lcom/isseiaoki/simplecropview/b/d;

.field private w:Ljava/util/concurrent/ExecutorService;

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcom/isseiaoki/simplecropview/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    .line 72
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    iput v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    const/4 v2, 0x0

    .line 74
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 75
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    .line 76
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    .line 78
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    const/4 v2, 0x0

    .line 79
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    .line 88
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->p:Z

    .line 89
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->q:Z

    .line 90
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->r:Lcom/isseiaoki/simplecropview/a/a;

    .line 91
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->s:Landroid/view/animation/Interpolator;

    .line 92
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->s:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 93
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->t:Lcom/isseiaoki/simplecropview/b/c;

    .line 94
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->u:Lcom/isseiaoki/simplecropview/b/b;

    .line 95
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->v:Lcom/isseiaoki/simplecropview/b/d;

    .line 97
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    .line 99
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->A:Landroid/net/Uri;

    .line 100
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->B:I

    .line 103
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    .line 104
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    .line 105
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->G:Z

    .line 106
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->H:Z

    .line 107
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->I:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    .line 108
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->J:I

    .line 109
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->K:I

    .line 110
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->L:I

    .line 111
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    .line 112
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    .line 113
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->O:Z

    .line 116
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 118
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 119
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bM:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 120
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bM:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 123
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    const/4 v3, 0x1

    .line 124
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    .line 125
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 126
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    .line 127
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aa:Z

    .line 128
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    const/high16 v4, 0x40000000    # 2.0f

    .line 129
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    .line 130
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    .line 137
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    .line 138
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    .line 139
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->al:Z

    .line 154
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->w:Ljava/util/concurrent/ExecutorService;

    .line 155
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v2

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 156
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    const/high16 v4, 0x42480000    # 50.0f

    mul-float v4, v4, v2

    .line 157
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    mul-float v4, v2, v1

    .line 158
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    .line 159
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    .line 161
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    .line 162
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    .line 163
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->i:Landroid/graphics/Paint;

    .line 164
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 165
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    .line 166
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    const/high16 v5, 0x41700000    # 15.0f

    mul-float v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 172
    iput v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    .line 173
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 174
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->af:I

    const/high16 v0, -0x45000000    # -0.001953125f

    .line 175
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ae:I

    .line 176
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ag:I

    const v0, -0x44000001

    .line 177
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ah:I

    .line 180
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;IF)V

    return-void
.end method

.method private a(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method private a(FFFF)F
    .locals 0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    cmpl-float p2, p1, p3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p4
.end method

.method private a(IIF)F
    .locals 4

    .line 540
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    .line 541
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    .line 542
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    .line 543
    :cond_0
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    int-to-float v0, p2

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    .line 545
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->f(F)F

    move-result v1

    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->g(F)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_2

    .line 548
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->f(F)F

    move-result p2

    div-float v2, p1, p2

    goto :goto_0

    :cond_2
    cmpg-float p1, v1, v0

    if-gez p1, :cond_3

    .line 550
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->g(F)F

    move-result p1

    div-float v2, p2, p1

    :cond_3
    :goto_0
    return v2
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    return p1
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->B:I

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1199
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1200
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8

    .line 562
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->c(F)F

    move-result v0

    .line 563
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->d(F)F

    move-result v1

    .line 564
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    div-float/2addr v0, v1

    .line 566
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v7, v0, v2

    if-ltz v7, :cond_0

    .line 568
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 569
    iget v4, p1, Landroid/graphics/RectF;->right:F

    .line 570
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    mul-float v2, v2, v6

    .line 571
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v0

    mul-float p1, p1, v6

    sub-float v3, v2, p1

    add-float v5, v2, p1

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 575
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 576
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 577
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    mul-float v1, v1, v6

    .line 578
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float p1, p1, v0

    mul-float p1, p1, v6

    sub-float v0, v1, p1

    add-float v4, v1, p1

    move v1, v0

    :cond_1
    :goto_0
    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, v4, p1

    add-float/2addr v1, v0

    div-float v0, v5, p1

    add-float/2addr v3, v0

    .line 586
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ai:F

    mul-float v4, v4, v0

    .line 587
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ai:F

    mul-float v5, v5, v0

    .line 588
    new-instance v0, Landroid/graphics/RectF;

    div-float/2addr v4, p1

    sub-float v2, v1, v4

    div-float/2addr v5, p1

    sub-float p1, v3, v5

    add-float/2addr v1, v4

    add-float/2addr v3, v5

    invoke-direct {v0, v2, p1, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    .line 556
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 557
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/d;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->v:Lcom/isseiaoki/simplecropview/b/d;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 521
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 522
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 523
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method private a(FF)V
    .locals 2

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->c(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 675
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 676
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_0

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_1

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    :cond_1
    return-void

    .line 680
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 681
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bT:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 682
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_3

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 683
    :cond_3
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_4

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    :cond_4
    return-void

    .line 686
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 687
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bU:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 688
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_6

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 689
    :cond_6
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_7

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    :cond_7
    return-void

    .line 692
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->f(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 693
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bV:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 694
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_9

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 695
    :cond_9
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_a

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    :cond_a
    return-void

    .line 698
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->b(FF)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 699
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_c

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    .line 700
    :cond_c
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bR:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-void

    .line 703
    :cond_d
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-void
.end method

.method private a(I)V
    .locals 10

    .line 1006
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    .line 1007
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->q:Z

    if-eqz v0, :cond_1

    .line 1008
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/a/a;->l()V

    .line 1010
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1011
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 1012
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v1

    .line 1013
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, v1

    .line 1014
    iget v0, v8, Landroid/graphics/RectF;->right:F

    iget v1, v3, Landroid/graphics/RectF;->right:F

    sub-float v6, v0, v1

    .line 1015
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v1

    .line 1016
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    if-eqz v0, :cond_2

    .line 1017
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/a/a;

    move-result-object v0

    .line 1018
    new-instance v9, Lcom/isseiaoki/simplecropview/CropImageView$1;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/isseiaoki/simplecropview/CropImageView$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;FFFFLandroid/graphics/RectF;)V

    invoke-interface {v0, v9}, Lcom/isseiaoki/simplecropview/a/a;->a(Lcom/isseiaoki/simplecropview/a/b;)V

    int-to-long v1, p1

    .line 1040
    invoke-interface {v0, v1, v2}, Lcom/isseiaoki/simplecropview/a/a;->a(J)V

    goto :goto_0

    .line 1042
    :cond_2
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    .line 1043
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, p2

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setCenter(Landroid/graphics/PointF;)V

    .line 531
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-direct {p0, p1, p2, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(IIF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->setScale(F)V

    .line 532
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->a()V

    .line 533
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    .line 534
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 535
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    .line 536
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;IF)V
    .locals 6

    .line 318
    sget-object v0, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 321
    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 323
    :try_start_0
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_img_src:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 324
    invoke-virtual {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    :cond_0
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v2, p2, v0

    .line 326
    sget v3, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_crop_mode:I

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 327
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_2
    :goto_1
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_background_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 333
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_overlay_color:I

    const/high16 p3, -0x45000000    # -0.001953125f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ae:I

    .line 335
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_frame_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->af:I

    .line 336
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_handle_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ag:I

    .line 337
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_guide_color:I

    const p3, -0x44000001

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ah:I

    .line 339
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x1

    if-ge v0, p3, :cond_4

    aget-object v3, p2, v0

    .line 340
    sget v4, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_guide_show_mode:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 342
    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    :cond_4
    :goto_3
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p3, :cond_6

    aget-object v3, p2, v0

    .line 348
    sget v4, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_handle_show_mode:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 350
    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 354
    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setGuideShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V

    .line 355
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setHandleShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V

    .line 356
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_handle_size:I

    const/high16 p3, 0x41600000    # 14.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    .line 358
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_touch_padding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    .line 360
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_min_frame_size:I

    const/high16 p3, 0x42480000    # 50.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    .line 363
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_frame_stroke_weight:I

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p4, p4, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    .line 366
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_guide_stroke_weight:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    .line 369
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_crop_enabled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    .line 370
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_initial_frame_scale:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const p4, 0x3c23d70a    # 0.01f

    invoke-direct {p0, p2, p4, p3, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->a(FFFF)F

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ai:F

    .line 374
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_animation_enabled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    .line 376
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_animation_duration:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    .line 379
    sget p2, Lcom/isseiaoki/simplecropview/a$a;->scv_CropImageView_scv_handle_shadow_enabled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->al:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_7

    :catch_0
    move-exception p2

    .line 381
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    .line 1319
    :try_start_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1322
    :try_start_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->I:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->J:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 1328
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/isseiaoki/simplecropview/c/b;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1325
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while saving the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/isseiaoki/simplecropview/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1326
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->v:Lcom/isseiaoki/simplecropview/b/d;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/b/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1328
    invoke-static {v0}, Lcom/isseiaoki/simplecropview/c/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 1331
    :goto_2
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$3;

    invoke-direct {v0, p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView$3;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1328
    :goto_3
    invoke-static {v0}, Lcom/isseiaoki/simplecropview/c/b;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 390
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    const-string v2, "W"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 392
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 393
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v4

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 394
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v2, v4

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v3

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADED FROM: "

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    if-eqz v4, :cond_0

    const-string v4, "Uri"

    goto :goto_0

    :cond_0
    const-string v4, "Bitmap"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    if-nez v4, :cond_1

    const-string v4, "INPUT_IMAGE_SIZE: "

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 410
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INPUT_IMAGE_SIZE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->L:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v4, "LOADED_IMAGE_SIZE: "

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 424
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    if-lez v4, :cond_2

    const-string v4, "OUTPUT_IMAGE_SIZE: "

    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXIF ROTATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT_ROTATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->n:F

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->o:F

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/b/a;)V

    return-void
.end method

.method private a(Lcom/isseiaoki/simplecropview/b/a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1163
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1164
    invoke-interface {p1}, Lcom/isseiaoki/simplecropview/b/a;->onError()V

    goto :goto_0

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$2;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private a(F)Z
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->q:Z

    return p1
.end method

.method private b(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    move p2, p3

    :cond_0
    return p2
.end method

.method static synthetic b(Lcom/isseiaoki/simplecropview/CropImageView;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    return p1
.end method

.method static synthetic b(Lcom/isseiaoki/simplecropview/CropImageView;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->K:I

    return p1
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1279
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1282
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result v3

    div-float/2addr v2, v3

    .line 1284
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 1285
    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    .line 1286
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1

    .line 1287
    :cond_0
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    if-lez v3, :cond_1

    .line 1288
    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    .line 1289
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    move v5, v4

    move v4, v0

    move v0, v5

    goto :goto_1

    .line 1291
    :cond_1
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    if-le v1, v0, :cond_4

    .line 1293
    :cond_2
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 1295
    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    .line 1296
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1298
    :cond_3
    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    .line 1299
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-lez v4, :cond_6

    if-lez v0, :cond_6

    .line 1305
    invoke-static {p1, v4, v0}, Lcom/isseiaoki/simplecropview/c/b;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_5

    .line 1307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p1, v0

    :cond_6
    return-object p1
.end method

.method private b(II)Landroid/graphics/Rect;
    .locals 6

    .line 1263
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {p0, v0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 1265
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v1, v1, v0

    .line 1266
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v0

    .line 1267
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float v3, v3, v0

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1268
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v0

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1269
    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float v5, v5, v0

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1270
    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v5, v0

    sub-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1271
    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-direct {p0, v2, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1272
    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-direct {p0, v5, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->b(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1273
    new-instance p2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method static synthetic b(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 945
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 946
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 947
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 948
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-gez v5, :cond_0

    .line 951
    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v0

    iput v6, v5, Landroid/graphics/RectF;->left:F

    :cond_0
    cmpl-float v0, v1, v4

    if-lez v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iput v5, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    cmpg-float v0, v2, v4

    if-gez v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    cmpl-float v0, v3, v4

    if-lez v0, :cond_3

    .line 960
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->p:Z

    if-eqz v0, :cond_1

    return-void

    .line 449
    :cond_1
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Landroid/graphics/Canvas;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->d(Landroid/graphics/Canvas;)V

    .line 451
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->e(Landroid/graphics/Canvas;)V

    .line 452
    :cond_2
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->f(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 4

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->n:F

    sub-float/2addr v0, v1

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->o:F

    sub-float/2addr v1, v2

    .line 635
    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$7;->aG:[I

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 649
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->k(FF)V

    goto :goto_0

    .line 646
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->j(FF)V

    goto :goto_0

    .line 643
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->i(FF)V

    goto :goto_0

    .line 640
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->h(FF)V

    goto :goto_0

    .line 637
    :pswitch_4
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->g(FF)V

    .line 654
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->n:F

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->o:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(F)Z
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(FF)Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 709
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bR:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->O:Z

    return p1
.end method

.method private c(F)F
    .locals 2

    .line 1048
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$7;->aH:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return p1

    .line 1066
    :pswitch_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    return p1

    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_2
    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :pswitch_3
    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :pswitch_4
    const/high16 p1, 0x40400000    # 3.0f

    return p1

    :pswitch_5
    const/high16 p1, 0x40800000    # 4.0f

    return p1

    :pswitch_6
    return p1

    .line 1050
    :pswitch_7
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/isseiaoki/simplecropview/CropImageView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    return p0
.end method

.method static synthetic c(Lcom/isseiaoki/simplecropview/CropImageView;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->L:I

    return p1
.end method

.method private c()V
    .locals 4

    .line 965
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 968
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 973
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 977
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 978
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 982
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 983
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 456
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 457
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 458
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ae:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 460
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 461
    iget-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aR:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aS:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v1, v2, :cond_1

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 464
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 466
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 467
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 468
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 471
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 472
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 660
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    .line 661
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->bN:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 662
    :cond_1
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 663
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method private c(FF)Z
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    .line 718
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 720
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->p:Z

    return p1
.end method

.method private d(F)F
    .locals 2

    .line 1073
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$7;->aH:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return p1

    .line 1091
    :pswitch_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    return p1

    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_2
    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :pswitch_3
    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :pswitch_4
    const/high16 p1, 0x40800000    # 4.0f

    return p1

    :pswitch_5
    const/high16 p1, 0x40400000    # 3.0f

    return p1

    :pswitch_6
    return p1

    .line 1075
    :pswitch_7
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/isseiaoki/simplecropview/CropImageView;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    return p0
.end method

.method static synthetic d(Lcom/isseiaoki/simplecropview/CropImageView;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    return p1
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 478
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 479
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 480
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->af:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 482
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 996
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(FF)Z
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    .line 725
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 727
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->H:Z

    return p1
.end method

.method private e(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method

.method static synthetic e(Lcom/isseiaoki/simplecropview/CropImageView;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    return p1
.end method

.method static synthetic e(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/c;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->t:Lcom/isseiaoki/simplecropview/b/c;

    return-object p0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    .line 486
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->ah:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float v7, v1, v2

    .line 489
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float v11, v1, v2

    .line 490
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float v16, v1, v2

    .line 491
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float v21, v1, v2

    .line 492
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 493
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 494
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v15, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v14, v16

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 495
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v18, v1

    move/from16 v19, v21

    move/from16 v20, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 1000
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e(FF)Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    .line 732
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 734
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(F)F
    .locals 2

    .line 1183
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    invoke-direct {p0, p1, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(FFF)F

    move-result p1

    return p1
.end method

.method static synthetic f(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->r:Lcom/isseiaoki/simplecropview/a/a;

    if-nez v0, :cond_1

    .line 1214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1215
    new-instance v0, Lcom/isseiaoki/simplecropview/a/d;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/isseiaoki/simplecropview/a/d;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->r:Lcom/isseiaoki/simplecropview/a/a;

    goto :goto_0

    .line 1217
    :cond_0
    new-instance v0, Lcom/isseiaoki/simplecropview/a/c;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/isseiaoki/simplecropview/a/c;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->r:Lcom/isseiaoki/simplecropview/a/a;

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 4

    .line 499
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->al:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->g(Landroid/graphics/Canvas;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 501
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ag:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 503
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 504
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 505
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private f(FF)Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    .line 739
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 741
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(F)F
    .locals 2

    .line 1191
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->d:F

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->e:F

    invoke-direct {p0, p1, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(FFF)F

    move-result p1

    return p1
.end method

.method private g()Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    .line 1228
    :try_start_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 1230
    :try_start_1
    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 1231
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 1232
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 1233
    invoke-direct {p0, v3, v4}, Lcom/isseiaoki/simplecropview/CropImageView;->b(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 1234
    iget v6, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 1235
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1236
    iget v8, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    neg-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1237
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1238
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1239
    iget v5, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v5, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    int-to-float v4, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v8, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1241
    new-instance v5, Landroid/graphics/Rect;

    iget v3, v8, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v6, v8, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v5, v3, v4, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1244
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1245
    :try_start_2
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_3

    .line 1246
    invoke-direct {p0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1247
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 1257
    :goto_2
    invoke-static {v1}, Lcom/isseiaoki/simplecropview/c/b;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8

    :catch_6
    move-exception v2

    move-object v1, v0

    .line 1255
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An unexpected error has occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/isseiaoki/simplecropview/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_7
    move-exception v2

    move-object v1, v0

    .line 1253
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOM Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/isseiaoki/simplecropview/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_8
    move-exception v2

    move-object v1, v0

    .line 1251
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred while cropping the image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/isseiaoki/simplecropview/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1257
    :goto_6
    invoke-static {v0}, Lcom/isseiaoki/simplecropview/c/b;->closeQuietly(Ljava/io/Closeable;)V

    :goto_7
    return-object v1

    :goto_8
    invoke-static {v1}, Lcom/isseiaoki/simplecropview/c/b;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private g(FF)V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 748
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 749
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 750
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 751
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->c()V

    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 510
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 513
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 514
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 515
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 516
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic g(Lcom/isseiaoki/simplecropview/CropImageView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->a()V

    return-void
.end method

.method private getAnimator()Lcom/isseiaoki/simplecropview/a/a;
    .locals 1

    .line 1208
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->f()V

    .line 1209
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->r:Lcom/isseiaoki/simplecropview/a/a;

    return-object v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1177
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1178
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getDensity()F
    .locals 3

    .line 1146
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1147
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1149
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private getFrameH()F
    .locals 2

    .line 2034
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getFrameW()F
    .locals 2

    .line 2030
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getRatioX()F
    .locals 2

    .line 1098
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$7;->aH:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1114
    :pswitch_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    const/high16 v0, 0x41100000    # 9.0f

    return v0

    :pswitch_3
    const/high16 v0, 0x41800000    # 16.0f

    return v0

    :pswitch_4
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :pswitch_5
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRatioY()F
    .locals 2

    .line 1121
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$7;->aH:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1137
    :pswitch_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    const/high16 v0, 0x41800000    # 16.0f

    return v0

    :pswitch_3
    const/high16 v0, 0x41100000    # 9.0f

    return v0

    :pswitch_4
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    :pswitch_5
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic h(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->g()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 1397
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->i()V

    .line 1398
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1400
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(II)V

    :cond_0
    return-void
.end method

.method private h(FF)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aP:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 757
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 758
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 759
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 760
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 761
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 765
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 767
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->b()V

    goto/16 :goto_0

    .line 770
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 771
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 772
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 773
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 774
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 775
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 776
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 777
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 779
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 780
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 781
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 782
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 783
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 786
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 787
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    .line 788
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 789
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 790
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 792
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 793
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    .line 794
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 795
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 796
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/CropImageView$CropMode;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 1405
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1406
    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    .line 1407
    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->A:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 1408
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->K:I

    .line 1409
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->L:I

    .line 1410
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    .line 1411
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    .line 1412
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->B:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    return-void
.end method

.method private i(FF)V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aP:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 804
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 805
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 806
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 807
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 808
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 811
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 812
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 814
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->b()V

    goto/16 :goto_0

    .line 817
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 818
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 819
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 820
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 821
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 822
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 823
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 824
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 826
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 827
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 828
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 829
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 830
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 833
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 834
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    .line 835
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 836
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 837
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 839
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 840
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    .line 841
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 842
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 843
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/b;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->u:Lcom/isseiaoki/simplecropview/b/b;

    return-object p0
.end method

.method private j(FF)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aP:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 851
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 852
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 853
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 854
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 855
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 858
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 859
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 861
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->b()V

    goto/16 :goto_0

    .line 864
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 865
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 866
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 867
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 868
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 869
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 870
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 871
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 873
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 874
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 875
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 876
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 877
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 880
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 881
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    .line 882
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 883
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 884
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 886
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 887
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    .line 888
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 889
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 890
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method private k(FF)V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aP:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 898
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 899
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 900
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 901
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 902
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 904
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 905
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 906
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 908
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->b()V

    goto/16 :goto_0

    .line 911
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 912
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 913
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 914
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 915
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 916
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 917
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 918
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 920
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 921
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 922
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 923
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 924
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 927
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 928
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    .line 929
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 930
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 931
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 933
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 934
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    .line 935
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 936
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 937
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/isseiaoki/simplecropview/CropImageView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->G:Z

    return p0
.end method

.method static synthetic l(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->A:Landroid/net/Uri;

    return-object p0
.end method

.method private onCancel()V
    .locals 1

    .line 667
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 668
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method private setCenter(Landroid/graphics/PointF;)V
    .locals 0

    .line 2026
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->m:Landroid/graphics/PointF;

    return-void
.end method

.method private setScale(F)V
    .locals 0

    .line 2022
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1690
    :cond_0
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aQ:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 1691
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    .line 1692
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->a(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/b/b;Lcom/isseiaoki/simplecropview/b/d;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->A:Landroid/net/Uri;

    .line 1588
    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->u:Lcom/isseiaoki/simplecropview/b/b;

    .line 1589
    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->v:Lcom/isseiaoki/simplecropview/b/d;

    .line 1590
    iget-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->H:Z

    if-eqz p1, :cond_0

    .line 1591
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->u:Lcom/isseiaoki/simplecropview/b/b;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/b/a;)V

    .line 1592
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->v:Lcom/isseiaoki/simplecropview/b/d;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/b/a;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1595
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->H:Z

    .line 1596
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->w:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/isseiaoki/simplecropview/CropImageView$6;

    invoke-direct {p2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$6;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/b/c;)V
    .locals 0

    .line 1422
    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->t:Lcom/isseiaoki/simplecropview/b/c;

    .line 1423
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 1428
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->w:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/isseiaoki/simplecropview/CropImageView$4;

    invoke-direct {p2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$4;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 1425
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->t:Lcom/isseiaoki/simplecropview/b/c;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/b/a;)V

    .line 1426
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Source Uri must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;I)V
    .locals 1

    .line 1664
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aQ:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1665
    invoke-virtual {p0, p1, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(II)V

    goto :goto_0

    .line 1667
    :cond_0
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 1668
    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;)V
    .locals 1

    .line 1517
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    invoke-virtual {p0, p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;I)V

    return-void
.end method

.method public a(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;I)V
    .locals 9

    .line 1470
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->p:Z

    if-eqz v0, :cond_0

    .line 1471
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/a/a;->l()V

    .line 1473
    :cond_0
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 1474
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->getValue()I

    move-result p1

    int-to-float p1, p1

    add-float v7, v0, p1

    sub-float v4, v7, v3

    .line 1476
    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    .line 1477
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    invoke-direct {p0, p1, v0, v7}, Lcom/isseiaoki/simplecropview/CropImageView;->a(IIF)F

    move-result v8

    .line 1478
    iget-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    if-eqz p1, :cond_1

    sub-float v6, v8, v5

    .line 1480
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/a/a;

    move-result-object p1

    .line 1481
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$5;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/isseiaoki/simplecropview/CropImageView$5;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;FFFFFF)V

    invoke-interface {p1, v0}, Lcom/isseiaoki/simplecropview/a/a;->a(Lcom/isseiaoki/simplecropview/a/b;)V

    int-to-long v0, p2

    .line 1503
    invoke-interface {p1, v0, v1}, Lcom/isseiaoki/simplecropview/a/a;->a(J)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v7, p1

    .line 1505
    iput v7, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 1506
    iput v8, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    .line 1507
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(II)V

    :goto_0
    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1558
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1561
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1562
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1564
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1565
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 1567
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 1568
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1569
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    int-to-float v6, v3

    int-to-float v7, v4

    .line 1571
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1572
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1573
    invoke-virtual {v2, p1, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1575
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public c(II)V
    .locals 1

    .line 1702
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(III)V

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1990
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    .line 1991
    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    return-void
.end method

.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 6

    .line 1648
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v0, v1

    .line 1649
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->l:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v1, v2

    .line 1650
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v2, v3

    sub-float/2addr v2, v0

    .line 1651
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v3, v4

    sub-float/2addr v3, v1

    .line 1652
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v4, v5

    sub-float/2addr v4, v0

    .line 1653
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v0, v5

    sub-float/2addr v0, v1

    .line 1654
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 1526
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1529
    :cond_0
    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1530
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->b(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 1531
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v8, v0, :cond_1

    .line 1541
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aR:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v2, :cond_2

    .line 1545
    invoke-virtual {p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1347
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 311
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 292
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 294
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->a()V

    .line 296
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 300
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Landroid/graphics/Canvas;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->G:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 277
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 279
    invoke-virtual {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setMeasuredDimension(II)V

    .line 281
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a:I

    .line 282
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 232
    check-cast p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    .line 233
    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->be:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 235
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 236
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bf:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ae:I

    .line 237
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bg:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->af:I

    .line 238
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bh:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 239
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bi:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 240
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bj:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    .line 241
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bk:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 242
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bl:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    .line 243
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bm:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    .line 244
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bn:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    .line 245
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bo:F

    iget v2, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bp:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    .line 246
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bq:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    .line 247
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->br:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    .line 248
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bs:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    .line 249
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bt:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ag:I

    .line 250
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bu:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ah:I

    .line 251
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bv:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ai:F

    .line 252
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bw:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 253
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bx:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    .line 254
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    .line 255
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->B:I

    .line 256
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->by:Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    .line 257
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bz:Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->A:Landroid/net/Uri;

    .line 258
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bA:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->I:Landroid/graphics/Bitmap$CompressFormat;

    .line 259
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bB:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->J:I

    .line 260
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bC:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->G:Z

    .line 261
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bD:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    .line 262
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bE:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    .line 263
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bF:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    .line 264
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bG:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    .line 265
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bH:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->al:Z

    .line 266
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bI:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->K:I

    .line 267
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bJ:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->L:I

    .line 268
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bK:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    .line 269
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bL:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    .line 270
    iget-object p1, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bd:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 187
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    invoke-direct {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 189
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bd:Landroid/graphics/Bitmap;

    .line 190
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->R:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->be:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 191
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    .line 192
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ae:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bf:I

    .line 193
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->af:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bg:I

    .line 194
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bh:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 195
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bi:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 196
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bj:Z

    .line 197
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bk:Z

    .line 198
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bl:I

    .line 199
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bm:I

    .line 200
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bn:F

    .line 201
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bo:F

    .line 202
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ab:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bp:F

    .line 203
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bq:F

    .line 204
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->br:F

    .line 205
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bs:Z

    .line 206
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ag:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bt:I

    .line 207
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ah:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bu:I

    .line 208
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ai:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bv:F

    .line 209
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bw:F

    .line 210
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bx:Z

    .line 211
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    .line 212
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->B:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    .line 213
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->z:Landroid/net/Uri;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->by:Landroid/net/Uri;

    .line 214
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->A:Landroid/net/Uri;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bz:Landroid/net/Uri;

    .line 215
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->I:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bA:Landroid/graphics/Bitmap$CompressFormat;

    .line 216
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->J:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bB:I

    .line 217
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->G:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bC:Z

    .line 218
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->C:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bD:I

    .line 219
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->D:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bE:I

    .line 220
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bF:I

    .line 221
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bG:I

    .line 222
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->al:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bH:Z

    .line 223
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->K:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bI:I

    .line 224
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->L:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bJ:I

    .line 225
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->M:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bK:I

    .line 226
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->N:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->bL:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 595
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 596
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    if-nez v0, :cond_1

    return v1

    .line 597
    :cond_1
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aa:Z

    if-nez v0, :cond_2

    return v1

    .line 598
    :cond_2
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->p:Z

    if-eqz v0, :cond_3

    return v1

    .line 599
    :cond_3
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->q:Z

    if-eqz v0, :cond_4

    return v1

    .line 600
    :cond_4
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->O:Z

    if-eqz v0, :cond_5

    return v1

    .line 601
    :cond_5
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->H:Z

    if-eqz v0, :cond_6

    return v1

    .line 602
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 613
    :pswitch_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 614
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->onCancel()V

    return v2

    .line 607
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Landroid/view/MotionEvent;)V

    .line 608
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->Q:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->bQ:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    if-eq p1, v0, :cond_7

    .line 609
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    return v2

    .line 617
    :pswitch_2
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 618
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Landroid/view/MotionEvent;)V

    return v2

    .line 604
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/view/MotionEvent;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1898
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 1889
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aj:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1751
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 1752
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->I:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public setCompressQuality(I)V
    .locals 0

    .line 2009
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->J:I

    return-void
.end method

.method public setCropCallback(Lcom/isseiaoki/simplecropview/b/b;)V
    .locals 0

    .line 1947
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->u:Lcom/isseiaoki/simplecropview/b/b;

    return-void
.end method

.method public setCropEnabled(Z)V
    .locals 0

    .line 1859
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->c_:Z

    .line 1860
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;)V
    .locals 1

    .line 1678
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ak:I

    invoke-virtual {p0, p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;I)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1919
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->G:Z

    .line 1920
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1870
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1871
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->aa:Z

    return-void
.end method

.method public setFrameColor(I)V
    .locals 0

    .line 1721
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->af:I

    .line 1722
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setFrameStrokeWeightInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1839
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ac:F

    .line 1840
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setGuideColor(I)V
    .locals 0

    .line 1741
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ah:I

    .line 1742
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setGuideShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V
    .locals 1

    .line 1800
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->S:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 1801
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$7;->aI:[I

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 1807
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 1803
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->a_:Z

    .line 1810
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setGuideStrokeWeightInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1849
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ad:F

    .line 1850
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 0

    .line 1731
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ag:I

    .line 1732
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setHandleShadowEnabled(Z)V
    .locals 0

    .line 2018
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->al:Z

    return-void
.end method

.method public setHandleShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V
    .locals 1

    .line 1820
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->T:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 1821
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$7;->aI:[I

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 1827
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 1823
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->b_:Z

    .line 1830
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHandleSizeInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1779
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->V:I

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1357
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1379
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    .line 1380
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->h()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1367
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    .line 1368
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1369
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->h()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1391
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->f:Z

    .line 1392
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1393
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->h()V

    return-void
.end method

.method public setInitialFrameScale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    .line 1880
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(FFFF)F

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ai:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1908
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    .line 1909
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->r:Lcom/isseiaoki/simplecropview/a/a;

    .line 1910
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->f()V

    return-void
.end method

.method public setLoadCallback(Lcom/isseiaoki/simplecropview/b/c;)V
    .locals 0

    .line 1938
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->t:Lcom/isseiaoki/simplecropview/b/c;

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .line 1929
    sput-boolean p1, Lcom/isseiaoki/simplecropview/c/a;->enabled:Z

    return-void
.end method

.method public setMinFrameSizeInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1761
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    return-void
.end method

.method public setMinFrameSizeInPx(I)V
    .locals 0

    int-to-float p1, p1

    .line 1770
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->U:F

    return-void
.end method

.method public setOutputHeight(I)V
    .locals 0

    .line 1977
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    const/4 p1, 0x0

    .line 1978
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    return-void
.end method

.method public setOutputWidth(I)V
    .locals 0

    .line 1966
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->E:I

    const/4 p1, 0x0

    .line 1967
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->F:I

    return-void
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 1711
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->ae:I

    .line 1712
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setSaveCallback(Lcom/isseiaoki/simplecropview/b/d;)V
    .locals 0

    .line 1956
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->v:Lcom/isseiaoki/simplecropview/b/d;

    return-void
.end method

.method public setTouchPaddingInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 1790
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->W:I

    return-void
.end method
