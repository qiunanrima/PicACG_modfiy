.class Lcom/isseiaoki/simplecropview/CropImageView$5;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aA:F

.field final synthetic aB:F

.field final synthetic aC:F

.field final synthetic aD:F

.field final synthetic as:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic ay:F

.field final synthetic az:F


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;FFFFFF)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->ay:F

    iput p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->az:F

    iput p4, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aA:F

    iput p5, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aB:F

    iput p6, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aC:F

    iput p7, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aD:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(F)V
    .locals 3

    .line 1489
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->ay:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->az:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1490
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aA:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aB:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1491
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->g(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1492
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method

.method public k()V
    .locals 3

    .line 1497
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aC:F

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1498
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->aD:F

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->b(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1499
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->d(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView;II)V

    .line 1500
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$5;->as:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method
