.class Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;
.super Ljava/lang/Object;
.source "CropImageFragment.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/CropImageFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oI:Lcom/picacomic/fregata/fragments/CropImageFragment$4;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/CropImageFragment$4;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;->oI:Lcom/picacomic/fregata/fragments/CropImageFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;->oI:Lcom/picacomic/fregata/fragments/CropImageFragment$4;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oF:Lcom/picacomic/fregata/a/f;

    invoke-interface {v0, p1}, Lcom/picacomic/fregata/a/f;->b(Landroid/net/Uri;)V

    .line 187
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;->oI:Lcom/picacomic/fregata/fragments/CropImageFragment$4;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/CropImageFragment;->bC()V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment$4$2;->oI:Lcom/picacomic/fregata/fragments/CropImageFragment$4;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/CropImageFragment$4;->oH:Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->bC()V

    return-void
.end method
