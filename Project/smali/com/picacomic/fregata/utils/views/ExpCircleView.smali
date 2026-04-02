.class public Lcom/picacomic/fregata/utils/views/ExpCircleView;
.super Lde/hdodenhof/circleimageview/CircleImageView;
.source "ExpCircleView.java"


# static fields
.field private static final DEFAULT_ANGLE:I = 0x0

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_WIDTH:I = 0x0

.field private static final DEFAULT_FILL_COLOR:I = 0x0

.field private static final DEFAULT_FILL_WIDTH:I = 0x2


# instance fields
.field private gridSize:I

.field private mAngle:F

.field private mBorderColor:I

.field private mBorderColorDark:I

.field private mBorderDarkPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mCalFillPaint:Landroid/graphics/Paint;

.field private mDarkFillPaint:Landroid/graphics/Paint;

.field private mFillColor:I

.field private mFillColorDark:I

.field private mFillColorLight:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFillWidth:I

.field private mLightFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderRect:Landroid/graphics/RectF;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mLightFillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mDarkFillPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 37
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColor:I

    .line 38
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColorDark:I

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    .line 41
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColor:I

    .line 42
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorLight:I

    .line 43
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorDark:I

    const/4 p1, 0x2

    .line 44
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillWidth:I

    .line 64
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 68
    invoke-direct {p0, p1, p2}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderRect:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mLightFillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mDarkFillPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 37
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColor:I

    .line 38
    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColorDark:I

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    .line 41
    iput v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColor:I

    .line 42
    iput v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorLight:I

    .line 43
    iput v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorDark:I

    const/4 v2, 0x2

    .line 44
    iput v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillWidth:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/picacomic/fregata/a$a;->ExpCircleView:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 72
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    const/4 p2, 0x1

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColor:I

    .line 75
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColorDark:I

    const/4 v0, 0x4

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColor:I

    const/4 v0, 0x6

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorLight:I

    const/4 v0, 0x5

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorDark:I

    const/4 v0, 0x7

    .line 79
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillWidth:I

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mAngle:F

    .line 81
    iput p2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->gridSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->init()V

    return-void

    :catchall_0
    move-exception p2

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderRect:Landroid/graphics/RectF;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mLightFillPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mDarkFillPaint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 37
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColor:I

    .line 38
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColorDark:I

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    .line 41
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColor:I

    .line 42
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorLight:I

    .line 43
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorDark:I

    const/4 p1, 0x2

    .line 44
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillWidth:I

    return-void
.end method


# virtual methods
.method public colorCal(IIFI)I
    .locals 6

    .line 170
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 171
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 172
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 174
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 175
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 176
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    sub-int/2addr p1, p2

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr p3, v4

    int-to-float v4, p4

    mul-float p3, p3, v4

    float-to-double v4, p3

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p3, v4

    mul-int v0, v0, p3

    .line 186
    div-int/2addr v0, p4

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int v1, v1, p3

    .line 187
    div-int/2addr v1, p4

    int-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v3, v0

    mul-int p1, p1, p3

    .line 188
    div-int/2addr p1, p4

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    .line 190
    invoke-static {v2, v3, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mReady:Z

    .line 157
    iget-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->setup()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 95
    invoke-super {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mAngle:F

    .line 106
    iget v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->gridSize:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/16 v3, -0x5a

    cmpg-float v4, v1, v0

    if-gez v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v4, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorLight:I

    iget v5, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorDark:I

    iget v6, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->gridSize:I

    invoke-virtual {p0, v4, v5, v1, v6}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->colorCal(IIFI)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v6, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderRect:Landroid/graphics/RectF;

    int-to-float v2, v3

    add-float v7, v2, v1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    iget v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->gridSize:I

    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v4, v0

    div-float/2addr v1, v4

    :goto_1
    if-gt v2, v0, :cond_1

    .line 149
    iget-object v5, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderRect:Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v6, v2

    mul-float v6, v6, v1

    add-float/2addr v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Lde/hdodenhof/circleimageview/CircleImageView;->onSizeChanged(IIII)V

    .line 166
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->setup()V

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mAngle:F

    .line 240
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->invalidate()V

    return-void
.end method

.method public setGridSize(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->gridSize:I

    return-void
.end method

.method public setup()V
    .locals 6

    .line 194
    iget-boolean v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mSetupPending:Z

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderDarkPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderColorDark:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mLightFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mLightFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mLightFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorLight:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mDarkFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mDarkFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mDarkFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColorDark:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mCalFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/picacomic/fregata/utils/views/ExpCircleView;->mBorderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->invalidate()V

    return-void
.end method
