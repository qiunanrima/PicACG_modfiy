.class Lcom/picacomic/fregata/fragments/CropImageFragment$1;
.super Ljava/lang/Object;
.source "CropImageFragment.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CropImageFragment;->init()V
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

    .line 108
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$1;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$1;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$1;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;)V

    .line 113
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$1;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->d(II)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$1;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->aP:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;)V

    :goto_0
    return-void
.end method
