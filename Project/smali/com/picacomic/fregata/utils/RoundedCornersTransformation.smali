.class public Lcom/picacomic/fregata/utils/RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;
    }
.end annotation


# instance fields
.field private mMargin:I

.field private us:I

.field private ut:I

.field private uu:Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 28
    sget-object v0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;->uw:Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;-><init>(IILcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;)V

    return-void
.end method

.method public constructor <init>(IILcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    mul-int/lit8 p1, p1, 0x2

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    .line 34
    iput p2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    .line 35
    iput-object p3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->uu:Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 56
    iget v0, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 57
    iget v0, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 59
    sget-object v0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation$1;->uv:[I

    iget-object v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->uu:Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float p3, p3

    iget p4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float p4, p4

    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->o(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 94
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->l(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 88
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->j(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 85
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->i(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 82
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 79
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 76
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 73
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 70
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 67
    :pswitch_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 64
    :pswitch_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    .line 61
    :pswitch_e
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float p3, p3

    iget p4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float p4, p4

    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private g(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 146
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private j(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 172
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private l(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 184
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 189
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    .line 198
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 200
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private o(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5

    .line 208
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    iget v4, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 213
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->us:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->mMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->ut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->uu:Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;

    .line 218
    invoke-virtual {v1}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 43
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 47
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v0, v0

    int-to-float v1, v1

    .line 49
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/picacomic/fregata/utils/RoundedCornersTransformation;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method
