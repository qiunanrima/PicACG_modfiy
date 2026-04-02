.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ca()V
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

    .line 342
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 347
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ab

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$12;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    .line 348
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    .line 349
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public I(I)V
    .locals 0

    return-void
.end method
