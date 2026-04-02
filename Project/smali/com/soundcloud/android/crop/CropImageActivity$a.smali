.class Lcom/soundcloud/android/crop/CropImageActivity$a;
.super Ljava/lang/Object;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/CropImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic vo:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method private constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/CropImageActivity$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$a;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity$a;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity$a;->em()V

    return-void
.end method

.method private em()V
    .locals 11

    .line 220
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/soundcloud/android/crop/HighlightView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v1}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/soundcloud/android/crop/HighlightView;-><init>(Landroid/view/View;)V

    .line 225
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v1}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/e;->getWidth()I

    move-result v1

    .line 226
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v2}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/e;->getHeight()I

    move-result v2

    .line 228
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    .line 235
    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v6}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v6}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v6}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v7}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v7

    if-le v6, v7, :cond_1

    .line 237
    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v6}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v6

    mul-int v6, v6, v5

    iget-object v7, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v7}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v7

    div-int/2addr v6, v7

    goto :goto_0

    .line 239
    :cond_1
    iget-object v6, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v6}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v6

    mul-int v6, v6, v5

    iget-object v7, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v7}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v7

    div-int/2addr v6, v7

    move v10, v6

    move v6, v5

    move v5, v10

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    sub-int/2addr v1, v5

    .line 243
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v6

    .line 244
    div-int/lit8 v2, v2, 0x2

    .line 246
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v2

    add-int/2addr v1, v5

    int-to-float v1, v1

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-direct {v7, v8, v9, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v1}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v2}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v2}, Lcom/soundcloud/android/crop/CropImageActivity;->f(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {v0, v1, v3, v7, v4}, Lcom/soundcloud/android/crop/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 248
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v1}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/soundcloud/android/crop/CropImageView;->c(Lcom/soundcloud/android/crop/HighlightView;)V

    return-void
.end method


# virtual methods
.method public en()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$a;->vo:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->c(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$a$1;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$a$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
