.class Lcom/isseiaoki/simplecropview/CropImageView$4;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic as:Lcom/isseiaoki/simplecropview/CropImageView;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;)V
    .locals 0

    .line 1428
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1431
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    .line 1432
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/c/b;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;I)I

    .line 1433
    invoke-static {}, Lcom/isseiaoki/simplecropview/c/b;->getMaxSize()I

    move-result v0

    .line 1434
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->d(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 1437
    :try_start_0
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v3}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/isseiaoki/simplecropview/c/b;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1440
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    sget v3, Lcom/isseiaoki/simplecropview/c/b;->ch:I

    invoke-static {v2, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;I)I

    .line 1441
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    sget v3, Lcom/isseiaoki/simplecropview/c/b;->ci:I

    invoke-static {v2, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Lcom/isseiaoki/simplecropview/CropImageView;I)I

    .line 1442
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->f(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isseiaoki/simplecropview/CropImageView$4$1;

    invoke-direct {v3, p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView$4$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An unexpected error has occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/isseiaoki/simplecropview/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1456
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V

    .line 1457
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOM Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/isseiaoki/simplecropview/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1452
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V

    .line 1453
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    :goto_1
    return-void
.end method
