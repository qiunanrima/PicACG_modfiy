.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$9;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$9;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 725
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$9;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 726
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ComicListFragment;

    move-result-object p1

    sget-object v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    const v2, 0x7f0900ab

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 728
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
