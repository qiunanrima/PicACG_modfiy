.class Lcom/picacomic/fregata/fragments/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qW:Lcom/picacomic/fregata/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$1;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 140
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$1;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$1;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatarBlur:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 142
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$1;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatarBlur:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 143
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$1;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatarBlur:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/picacomic/fregata/utils/g;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
