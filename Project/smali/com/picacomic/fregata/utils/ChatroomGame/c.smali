.class public Lcom/picacomic/fregata/utils/ChatroomGame/c;
.super Lcom/picacomic/fregata/utils/ChatroomGame/a;
.source "HeroSprite.java"


# instance fields
.field action:I

.field gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

.field private height:I

.field final uh:I

.field ui:[I

.field uj:I

.field uk:Landroid/graphics/Bitmap;

.field ul:I

.field um:Z

.field private width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(IILcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/picacomic/fregata/utils/ChatroomGame/a;-><init>(II)V

    const/16 p1, 0xfa

    .line 14
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->uh:I

    const/4 p2, 0x4

    .line 18
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ui:[I

    const/16 p2, 0x96

    .line 21
    iput p2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    .line 22
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->y:I

    const/16 p1, 0xa

    .line 23
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->uj:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ul:I

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->um:Z

    .line 47
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->width:I

    .line 48
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->height:I

    .line 49
    iput-object p3, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->gameView:Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;

    .line 50
    iput-object p4, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->uk:Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method public dW()V
    .locals 2

    .line 69
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 70
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    iget v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->uj:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    :cond_0
    return-void
.end method

.method public dX()V
    .locals 2

    .line 75
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 76
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    iget v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->uj:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 88
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->update()V

    .line 89
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ul:I

    .line 90
    iget v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ul:I

    .line 93
    new-instance v5, Landroid/graphics/Rect;

    iget v2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->width:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->height:I

    add-int/2addr v3, v1

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    new-instance v6, Landroid/graphics/Rect;

    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    iget v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->y:I

    invoke-virtual {p0, p1, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->a(Landroid/graphics/Canvas;I)I

    move-result v1

    iget v2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->x:I

    iget v3, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->targetWidth:I

    invoke-virtual {p0, p1, v3}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->a(Landroid/graphics/Canvas;I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->y:I

    invoke-virtual {p0, p1, v3}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->a(Landroid/graphics/Canvas;I)I

    move-result v3

    iget v4, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->targetHeight:I

    invoke-virtual {p0, p1, v4}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->a(Landroid/graphics/Canvas;I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    iget-object v4, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->uk:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->action:I

    return-void
.end method

.method public update()V
    .locals 2

    .line 56
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ul:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ul:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->ul:I

    .line 58
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->action:I

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->dW()V

    goto :goto_0

    .line 60
    :cond_0
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/c;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->dX()V

    :cond_1
    :goto_0
    return-void
.end method
