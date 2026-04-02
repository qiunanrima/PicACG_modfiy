.class Lcom/picacomic/fregata/fragments/CropImageFragment$4;
.super Ljava/lang/Object;
.source "CropImageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CropImageFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oH:Lcom/picacomic/fregata/fragments/CropImageFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CropImageFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 150
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "croped-image.jpg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oE:Landroid/net/Uri;

    .line 153
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CropImageFragment;->bB()V

    .line 155
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->getActualCropRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oG:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x44480000    # 800.0f

    const/16 v3, 0x320

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->c(II)V

    .line 159
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->d(II)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->c(II)V

    .line 162
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->d(II)V

    .line 165
    :cond_1
    :goto_0
    sget-object v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crop size = w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oE:Landroid/net/Uri;

    new-instance v1, Lcom/picacomic/fregata/fragments/CropImageFragment$4$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CropImageFragment$4$1;-><init>(Lcom/picacomic/fregata/fragments/CropImageFragment$4;)V

    new-instance v2, Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;-><init>(Lcom/picacomic/fregata/fragments/CropImageFragment$4;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/b/b;Lcom/isseiaoki/simplecropview/b/d;)V

    return-void
.end method
