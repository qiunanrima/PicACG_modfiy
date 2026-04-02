.class Lcom/isseiaoki/simplecropview/CropImageView$4$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aw:Landroid/graphics/Bitmap;

.field final synthetic ax:Lcom/isseiaoki/simplecropview/CropImageView$4;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView$4;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->ax:Lcom/isseiaoki/simplecropview/CropImageView$4;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->aw:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->ax:Lcom/isseiaoki/simplecropview/CropImageView$4;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->aw:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1446
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->ax:Lcom/isseiaoki/simplecropview/CropImageView$4;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->e(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->ax:Lcom/isseiaoki/simplecropview/CropImageView$4;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->e(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/b/c;->onSuccess()V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$4$1;->ax:Lcom/isseiaoki/simplecropview/CropImageView$4;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$4;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method
