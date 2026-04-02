.class public Lcom/soundcloud/android/crop/CropImageActivity;
.super Lcom/soundcloud/android/crop/c;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/CropImageActivity$a;
    }
.end annotation


# instance fields
.field private by:Landroid/net/Uri;

.field private bz:Landroid/net/Uri;

.field private exifRotation:I

.field private final handler:Landroid/os/Handler;

.field private vf:I

.field private vg:I

.field private vh:I

.field private vi:I

.field private vj:Z

.field private vk:I

.field private vl:Lcom/soundcloud/android/crop/e;

.field private vm:Lcom/soundcloud/android/crop/CropImageView;

.field private vn:Lcom/soundcloud/android/crop/HighlightView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/c;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/soundcloud/android/crop/CropImageActivity;->ek()V

    const/4 v3, 0x0

    .line 327
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v1, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    .line 328
    :try_start_1
    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5

    .line 329
    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    .line 330
    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    .line 332
    iget v8, v1, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    if-eqz v8, :cond_2

    .line 334
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 335
    iget v9, v1, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 337
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 338
    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v11, p1

    invoke-direct {v10, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 341
    iget v8, v9, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    cmpg-float v8, v8, v10

    if-gez v8, :cond_0

    int-to-float v8, v6

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget v11, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v11, v11, v10

    if-gez v11, :cond_1

    int-to-float v10, v7

    :cond_1
    invoke-virtual {v9, v8, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 342
    new-instance v8, Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v9, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v9, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-direct {v8, v10, v11, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object/from16 v11, p1

    move-object v8, v11

    .line 346
    :goto_1
    :try_start_2
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v5, v8, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v3, v0, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v5

    goto :goto_3

    .line 348
    :cond_4
    :goto_2
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 349
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v2, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v15, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 350
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v5

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :goto_3
    invoke-static {v4}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    move-object v5, v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v3, v5

    goto :goto_4

    :catch_3
    move-exception v0

    .line 354
    :goto_4
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rectangle "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is outside of the image ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v5, v3

    :goto_5
    move-object v3, v4

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v5, v3

    :goto_6
    move-object v3, v4

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v5, v3

    .line 362
    :goto_7
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOM cropping image: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    invoke-direct {v1, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v5, v3

    .line 359
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error cropping image: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    invoke-direct {v1, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 365
    :goto_9
    invoke-static {v3}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    :goto_a
    return-object v5

    :goto_b
    invoke-static {v4}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/HighlightView;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vn:Lcom/soundcloud/android/crop/HighlightView;

    return-object p1
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->ej()V

    return-void
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->h(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    return-object p0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 2

    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x194

    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private d(Landroid/net/Uri;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-static {p1}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    .line 165
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->eg()I

    move-result v2

    .line 167
    :goto_0
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p1, v1

    if-gt p1, v2, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr p1, v1

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 162
    :goto_2
    invoke-static {v2}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic d(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/e;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    return-object p0
.end method

.method static synthetic e(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vf:I

    return p0
.end method

.method private e(Landroid/net/Uri;)V
    .locals 2

    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private ed()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method private ee()V
    .locals 2

    .line 93
    sget v0, Lcom/soundcloud/android/crop/d$c;->crop__activity_crop:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setContentView(I)V

    .line 95
    sget v0, Lcom/soundcloud/android/crop/d$b;->crop_image:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/CropImageView;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    .line 96
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    iput-object p0, v0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageView;->setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$a;)V

    .line 105
    sget v0, Lcom/soundcloud/android/crop/d$b;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$2;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$2;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v0, Lcom/soundcloud/android/crop/d$b;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$3;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$3;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private ef()V
    .locals 5

    .line 120
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "aspect_x"

    .line 124
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vf:I

    const-string v2, "aspect_y"

    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vg:I

    const-string v2, "max_x"

    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vh:I

    const-string v2, "max_y"

    .line 127
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vi:I

    const-string v2, "output"

    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->bz:Landroid/net/Uri;

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    .line 132
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/soundcloud/android/crop/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->h(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->d(Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vk:I

    .line 138
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vk:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    new-instance v3, Lcom/soundcloud/android/crop/e;

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v3, v0, v2}, Lcom/soundcloud/android/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 146
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOM reading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 143
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :goto_2
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :goto_4
    return-void
.end method

.method private eg()I
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->eh()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    return v0

    :cond_0
    const/16 v1, 0x1000

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private eh()I
    .locals 3

    const/4 v0, 0x1

    .line 184
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd33

    .line 185
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 186
    aget v0, v0, v1

    return v0
.end method

.method private ei()V
    .locals 4

    .line 190
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/CropImageView;->a(Lcom/soundcloud/android/crop/e;Z)V

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/d$d;->crop__wait:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$4;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/CropImageActivity$4;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/soundcloud/android/crop/a;->a(Lcom/soundcloud/android/crop/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method private ej()V
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vn:Lcom/soundcloud/android/crop/HighlightView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vj:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vj:Z

    .line 272
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vn:Lcom/soundcloud/android/crop/HighlightView;

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vk:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/soundcloud/android/crop/HighlightView;->m(F)Landroid/graphics/Rect;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 274
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 278
    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vh:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vi:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vh:I

    if-gt v2, v4, :cond_1

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vi:I

    if-le v3, v4, :cond_3

    :cond_1
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 280
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vh:I

    int-to-float v3, v3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vi:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    .line 281
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vi:I

    .line 282
    iget v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vi:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    goto :goto_0

    .line 284
    :cond_2
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vh:I

    .line 285
    iget v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vh:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    move v6, v3

    move v3, v2

    move v2, v6

    .line 290
    :cond_3
    :goto_0
    :try_start_0
    invoke-direct {p0, v1, v2, v3}, Lcom/soundcloud/android/crop/CropImageActivity;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 298
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v3, Lcom/soundcloud/android/crop/e;

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v3, v1, v4}, Lcom/soundcloud/android/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3, v0}, Lcom/soundcloud/android/crop/CropImageView;->a(Lcom/soundcloud/android/crop/e;Z)V

    .line 299
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->ep()V

    .line 300
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->vt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_4
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->g(Landroid/graphics/Bitmap;)V

    return-void

    :catch_0
    move-exception v0

    .line 292
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Ljava/lang/Throwable;)V

    .line 293
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private ek()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vm:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->clear()V

    .line 372
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/e;->recycle()V

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method static synthetic f(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vg:I

    return p0
.end method

.method static synthetic g(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vn:Lcom/soundcloud/android/crop/HighlightView;

    return-object p0
.end method

.method private g(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/d$d;->crop__saving:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$5;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/soundcloud/android/crop/a;->a(Lcom/soundcloud/android/crop/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    :goto_0
    return-void
.end method

.method private h(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->bz:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->bz:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 384
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

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
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 390
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 387
    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->b(Ljava/lang/Throwable;)V

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->bz:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/soundcloud/android/crop/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    .line 394
    :goto_2
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->by:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/soundcloud/android/crop/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->bz:Landroid/net/Uri;

    invoke-static {p0, v1, v2}, Lcom/soundcloud/android/crop/a;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/a;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 398
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->bz:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->e(Landroid/net/Uri;)V

    goto :goto_4

    .line 390
    :goto_3
    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->b(Ljava/io/Closeable;)V

    throw p1

    .line 402
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$6;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/soundcloud/android/crop/c$b;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/c;->a(Lcom/soundcloud/android/crop/c$b;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/soundcloud/android/crop/c$b;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/c;->b(Lcom/soundcloud/android/crop/c$b;)V

    return-void
.end method

.method public el()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vj:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/c;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->ed()V

    .line 74
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->ee()V

    .line 76
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->ef()V

    .line 77
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->ei()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 414
    invoke-super {p0}, Lcom/soundcloud/android/crop/c;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->vl:Lcom/soundcloud/android/crop/e;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/e;->recycle()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
