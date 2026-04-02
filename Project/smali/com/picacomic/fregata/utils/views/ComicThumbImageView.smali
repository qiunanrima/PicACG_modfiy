.class public Lcom/picacomic/fregata/utils/views/ComicThumbImageView;
.super Landroid/widget/ImageView;
.source "ComicThumbImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 27
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ComicThumbImageView;->getMeasuredWidth()I

    move-result p1

    mul-int/lit8 p2, p1, 0x3

    .line 28
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/utils/views/ComicThumbImageView;->setMeasuredDimension(II)V

    return-void
.end method
