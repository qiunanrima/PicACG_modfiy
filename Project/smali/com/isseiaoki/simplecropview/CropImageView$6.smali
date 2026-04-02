.class Lcom/isseiaoki/simplecropview/CropImageView$6;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/b/b;Lcom/isseiaoki/simplecropview/b/d;)V
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

    .line 1596
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1602
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->h(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1608
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->i(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    move-result-object v1

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aR:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v1, v2, :cond_1

    .line 1609
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1615
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1617
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->d(Lcom/isseiaoki/simplecropview/CropImageView;I)I

    .line 1618
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->e(Lcom/isseiaoki/simplecropview/CropImageView;I)I

    .line 1619
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->f(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isseiaoki/simplecropview/CropImageView$6$1;

    invoke-direct {v2, p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView$6$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView$6;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1629
    :cond_2
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->j(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V

    .line 1632
    :goto_1
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->l(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1633
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/b/a;)V

    return-void

    .line 1636
    :cond_3
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->l(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 1637
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->d(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method
