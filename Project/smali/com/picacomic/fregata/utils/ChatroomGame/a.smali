.class public Lcom/picacomic/fregata/utils/ChatroomGame/a;
.super Ljava/lang/Object;
.source "BaseSprite.java"


# instance fields
.field targetHeight:I

.field targetWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/a;->targetWidth:I

    .line 18
    iput p2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/a;->targetHeight:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    mul-int p2, p2, p1

    .line 47
    div-int/lit16 p2, p2, 0x190

    return p2

    :cond_0
    return p2
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 30
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
