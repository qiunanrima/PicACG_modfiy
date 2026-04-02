.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 438
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 441
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isAllowComment()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010024

    const v1, 0x7f010025

    const v2, 0x7f010026

    const v3, 0x7f010027

    .line 443
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900ab

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    .line 444
    invoke-static {v1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/CreatorObject;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$2;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/fragments/CommentFragment;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    .line 445
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
