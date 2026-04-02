.class Lcom/picacomic/fregata/fragments/CropImageFragment$3;
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

    .line 139
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$3;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$3;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->aV:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;)V

    return-void
.end method
