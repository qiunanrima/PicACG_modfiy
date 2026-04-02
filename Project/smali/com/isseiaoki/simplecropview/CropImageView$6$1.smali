.class Lcom/isseiaoki/simplecropview/CropImageView$6$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aE:Landroid/graphics/Bitmap;

.field final synthetic aF:Lcom/isseiaoki/simplecropview/CropImageView$6;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView$6;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1619
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aF:Lcom/isseiaoki/simplecropview/CropImageView$6;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aE:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aF:Lcom/isseiaoki/simplecropview/CropImageView$6;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->j(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aF:Lcom/isseiaoki/simplecropview/CropImageView$6;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->j(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aE:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/isseiaoki/simplecropview/b/b;->d(Landroid/graphics/Bitmap;)V

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aF:Lcom/isseiaoki/simplecropview/CropImageView$6;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->k(Lcom/isseiaoki/simplecropview/CropImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6$1;->aF:Lcom/isseiaoki/simplecropview/CropImageView$6;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$6;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    :cond_1
    return-void
.end method
