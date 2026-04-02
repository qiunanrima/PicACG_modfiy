.class Lcom/isseiaoki/simplecropview/CropImageView$3;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic as:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic av:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->av:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;)Lcom/isseiaoki/simplecropview/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->av:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/isseiaoki/simplecropview/b/d;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
