.class Lcom/picacomic/fregata/fragments/ComicListFragment$7;
.super Ljava/lang/Object;
.source "ComicListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nT:Lcom/picacomic/fregata/fragments/ComicListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicListFragment;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$7;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 349
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$7;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    const/4 v0, 0x1

    iput v0, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    .line 350
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$7;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iput v0, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    .line 351
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$7;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$7;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cW()V

    .line 354
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
