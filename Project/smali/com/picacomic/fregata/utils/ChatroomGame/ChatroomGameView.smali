.class public Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;
.super Landroid/view/SurfaceView;
.source "ChatroomGameView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomGameView"


# instance fields
.field height:I

.field private tZ:Landroid/view/SurfaceHolder;

.field private ua:Lcom/picacomic/fregata/utils/ChatroomGame/b;

.field ub:Landroid/graphics/Bitmap;

.field uc:Landroid/graphics/Bitmap;

.field ud:Lcom/picacomic/fregata/utils/ChatroomGame/c;

.field ue:I

.field uf:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ue:I

    .line 34
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->uf:I

    .line 38
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ue:I

    .line 34
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->uf:I

    .line 43
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ue:I

    .line 34
    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->uf:I

    .line 48
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->init()V

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)Lcom/picacomic/fregata/utils/ChatroomGame/b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ua:Lcom/picacomic/fregata/utils/ChatroomGame/b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 152
    invoke-virtual {p0, p3}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->k(F)F

    move-result p3

    invoke-virtual {p0, p4}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->k(F)F

    move-result p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public dV()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009c

    .line 98
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ub:Landroid/graphics/Bitmap;

    const v1, 0x7f08009b

    .line 99
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->uc:Landroid/graphics/Bitmap;

    .line 100
    new-instance v0, Lcom/picacomic/fregata/utils/ChatroomGame/c;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ub:Landroid/graphics/Bitmap;

    const/16 v2, 0x64

    invoke-direct {v0, v2, v2, p0, v1}, Lcom/picacomic/fregata/utils/ChatroomGame/c;-><init>(IILcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ud:Lcom/picacomic/fregata/utils/ChatroomGame/c;

    return-void
.end method

.method public getHeroSprite()Lcom/picacomic/fregata/utils/ChatroomGame/c;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ud:Lcom/picacomic/fregata/utils/ChatroomGame/c;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 59
    new-instance v0, Lcom/picacomic/fregata/utils/ChatroomGame/b;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/utils/ChatroomGame/b;-><init>(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)V

    iput-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ua:Lcom/picacomic/fregata/utils/ChatroomGame/b;

    .line 60
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->tZ:Landroid/view/SurfaceHolder;

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->tZ:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView$1;-><init>(Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 91
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->dV()V

    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 6

    .line 105
    iget-object v2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->uc:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ud:Lcom/picacomic/fregata/utils/ChatroomGame/c;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/utils/ChatroomGame/c;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public k(F)F
    .locals 1

    .line 156
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->height:I

    if-lez v0, :cond_0

    .line 157
    iget v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->height:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/high16 v0, 0x43c80000    # 400.0f

    div-float/2addr p1, v0

    return p1

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 54
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->height:I

    .line 55
    iget p1, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->height:I

    iget p2, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->height:I

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRunning(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/picacomic/fregata/utils/ChatroomGame/ChatroomGameView;->ua:Lcom/picacomic/fregata/utils/ChatroomGame/b;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/utils/ChatroomGame/b;->setRunning(Z)V

    return-void
.end method
