.class public Lcom/picacomic/fregata/fragments/CropImageFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CropImageFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private oJ:Lcom/picacomic/fregata/fragments/CropImageFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/CropImageFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment_ViewBinding;->oJ:Lcom/picacomic/fregata/fragments/CropImageFragment;

    const-string v0, "field \'mCropView\'"

    .line 22
    const-class v1, Lcom/isseiaoki/simplecropview/CropImageView;

    const v2, 0x7f0900af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const-string v0, "field \'imageButton_rotateLeft\'"

    .line 23
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09012e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_rotateLeft:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_rotateRight\'"

    .line 24
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09012f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_rotateRight:Landroid/widget/ImageButton;

    const-string v0, "field \'imageButton_done\'"

    .line 25
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09012d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_done:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment_ViewBinding;->oJ:Lcom/picacomic/fregata/fragments/CropImageFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment_ViewBinding;->oJ:Lcom/picacomic/fregata/fragments/CropImageFragment;

    .line 35
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    .line 36
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_rotateLeft:Landroid/widget/ImageButton;

    .line 37
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_rotateRight:Landroid/widget/ImageButton;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_done:Landroid/widget/ImageButton;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
