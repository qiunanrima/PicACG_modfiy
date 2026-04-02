.class Lcom/picacomic/fregata/fragments/GameDetailFragment$9;
.super Ljava/lang/Object;
.source "GameDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/GameDetailFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$9;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 336
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$9;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010024

    const v1, 0x7f010025

    const v2, 0x7f010026

    const v3, 0x7f010027

    .line 337
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment$9;->pe:Lcom/picacomic/fregata/fragments/GameDetailFragment;

    .line 338
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->b(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/fragments/CommentFragment;->Z(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    const v2, 0x7f0900ab

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    .line 339
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
