.class public Lcom/makeramen/roundedimageview/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final gF:Landroid/graphics/Shader$TileMode;

.field private static final gG:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private gD:Landroid/content/res/ColorStateList;

.field private gE:Landroid/widget/ImageView$ScaleType;

.field private final gH:[F

.field private gI:Landroid/graphics/drawable/Drawable;

.field private gJ:Z

.field private gK:Z

.field private gL:Z

.field private gM:Z

.field private gN:I

.field private gw:Landroid/graphics/Shader$TileMode;

.field private gz:Landroid/graphics/Shader$TileMode;

.field private mBorderWidth:F

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->gF:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    .line 49
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->gG:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 60
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/high16 p1, -0x1000000

    .line 65
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gJ:Z

    .line 70
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gK:Z

    .line 71
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gL:Z

    .line 72
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gM:Z

    .line 74
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gE:Landroid/widget/ImageView$ScaleType;

    .line 75
    sget-object p1, Lcom/makeramen/roundedimageview/RoundedImageView;->gF:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gw:Landroid/graphics/Shader$TileMode;

    .line 76
    sget-object p1, Lcom/makeramen/roundedimageview/RoundedImageView;->gF:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gz:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    .line 60
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/high16 v0, -0x1000000

    .line 65
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 68
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gJ:Z

    .line 70
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gK:Z

    .line 71
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gL:Z

    .line 72
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gM:Z

    .line 74
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gE:Landroid/widget/ImageView$ScaleType;

    .line 75
    sget-object v3, Lcom/makeramen/roundedimageview/RoundedImageView;->gF:Landroid/graphics/Shader$TileMode;

    iput-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gw:Landroid/graphics/Shader$TileMode;

    .line 76
    sget-object v3, Lcom/makeramen/roundedimageview/RoundedImageView;->gF:Landroid/graphics/Shader$TileMode;

    iput-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gz:Landroid/graphics/Shader$TileMode;

    .line 89
    sget-object v3, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_android_scaleType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 93
    sget-object v3, Lcom/makeramen/roundedimageview/RoundedImageView;->gG:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, v3, p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 96
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    :goto_0
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius:I

    .line 100
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 102
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    sget v4, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_top_left:I

    .line 103
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v2

    .line 104
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    sget v4, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_top_right:I

    .line 105
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 106
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/4 v4, 0x2

    sget v6, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_bottom_right:I

    .line 107
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    .line 108
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/4 v4, 0x3

    sget v6, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_bottom_left:I

    .line 109
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    .line 112
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 113
    iget-object v7, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aget v7, v7, v4

    cmpg-float v7, v7, v1

    if-gez v7, :cond_1

    .line 114
    iget-object v7, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aput v1, v7, v4

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    cmpg-float v3, p2, v1

    if-gez v3, :cond_3

    const/4 p2, 0x0

    .line 124
    :cond_3
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    array-length v3, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    .line 125
    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aput p2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 129
    :cond_4
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_border_width:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 130
    iget p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_5

    .line 131
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 134
    :cond_5
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_border_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    .line 135
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_6

    .line 136
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    .line 139
    :cond_6
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_mutate_background:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gM:Z

    .line 140
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_oval:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gL:Z

    .line 142
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_tile_mode:I

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_7

    .line 144
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->h(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 145
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->h(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 148
    :cond_7
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_tile_mode_x:I

    .line 149
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_8

    .line 151
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->h(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 154
    :cond_8
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_tile_mode_y:I

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_9

    .line 157
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->h(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 160
    :cond_9
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    .line 161
    invoke-direct {p0, v5}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private bg()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 250
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 255
    :cond_0
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    if-eqz v2, :cond_1

    .line 257
    :try_start_0
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RoundedImageView"

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    :cond_1
    move-object v0, v1

    .line 264
    :goto_0
    invoke-static {v0}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private bh()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private bi()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gJ:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gK:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    instance-of v0, p1, Lcom/makeramen/roundedimageview/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 314
    check-cast p1, Lcom/makeramen/roundedimageview/b;

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gE:Landroid/widget/ImageView$ScaleType;

    .line 315
    invoke-virtual {p1, v0}, Lcom/makeramen/roundedimageview/b;->a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/b;

    move-result-object v0

    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 316
    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/b;->i(F)Lcom/makeramen/roundedimageview/b;

    move-result-object v0

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    .line 317
    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/b;->a(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/b;

    move-result-object v0

    iget-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gL:Z

    .line 318
    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/b;->e(Z)Lcom/makeramen/roundedimageview/b;

    move-result-object v0

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gw:Landroid/graphics/Shader$TileMode;

    .line 319
    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/b;

    move-result-object v0

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gz:Landroid/graphics/Shader$TileMode;

    .line 320
    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/b;->b(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/b;

    .line 322
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/makeramen/roundedimageview/b;->b(FFFF)Lcom/makeramen/roundedimageview/b;

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bi()V

    goto :goto_1

    .line 331
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 333
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 334
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 335
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->c(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gM:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gI:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gI:Landroid/graphics/drawable/Drawable;

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gI:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private static h(I)Landroid/graphics/Shader$TileMode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :pswitch_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 171
    :pswitch_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 169
    :pswitch_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c(FFFF)V
    .locals 5

    .line 432
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aput p1, v0, v1

    .line 440
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aput p2, p1, v4

    .line 441
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aput p3, p1, v3

    .line 442
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    aput p4, p1, v2

    .line 444
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    .line 445
    invoke-direct {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 181
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 182
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 450
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gH:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 361
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gw:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gz:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gI:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 344
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 345
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gI:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 472
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 483
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gD:Landroid/content/res/ColorStateList;

    .line 484
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    const/4 p1, 0x0

    .line 485
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 486
    iget p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 458
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 461
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    const/4 p1, 0x0

    .line 462
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 454
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gK:Z

    .line 289
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gJ:Z

    .line 290
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bi()V

    .line 291
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 402
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->c(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 382
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 383
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->c(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    .line 229
    invoke-static {p1}, Lcom/makeramen/roundedimageview/b;->e(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/b;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    .line 231
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    .line 221
    invoke-static {p1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    .line 223
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 236
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    if-eq v0, p1, :cond_0

    .line 237
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gN:I

    .line 238
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bg()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    .line 240
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 246
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gL:Z

    .line 497
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    const/4 p1, 0x0

    .line 498
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gE:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gE:Landroid/widget/ImageView$ScaleType;

    .line 197
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 205
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    const/4 p1, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gw:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gw:Landroid/graphics/Shader$TileMode;

    .line 510
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    const/4 p1, 0x0

    .line 511
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gz:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 522
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->gz:Landroid/graphics/Shader$TileMode;

    .line 523
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->bh()V

    const/4 p1, 0x0

    .line 524
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method
