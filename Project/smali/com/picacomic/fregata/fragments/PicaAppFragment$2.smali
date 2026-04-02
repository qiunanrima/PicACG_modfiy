.class Lcom/picacomic/fregata/fragments/PicaAppFragment$2;
.super Ljava/lang/Object;
.source "PicaAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/PicaAppFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qz:Lcom/picacomic/fregata/fragments/PicaAppFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/PicaAppFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment$2;->qz:Lcom/picacomic/fregata/fragments/PicaAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment$2;->qz:Lcom/picacomic/fregata/fragments/PicaAppFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 288
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment$2;->qz:Lcom/picacomic/fregata/fragments/PicaAppFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method
