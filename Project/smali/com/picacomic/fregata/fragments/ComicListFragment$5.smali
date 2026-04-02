.class Lcom/picacomic/fregata/fragments/ComicListFragment$5;
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

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicListFragment;Landroid/view/MenuItem;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iput p2, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nS:I

    .line 304
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    const/4 v1, 0x1

    iput v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    .line 305
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iput v1, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->totalPage:I

    .line 306
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    sget-object v2, Lcom/picacomic/fregata/c/c;->uR:[Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget v3, v3, Lcom/picacomic/fregata/fragments/ComicListFragment;->nS:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->val$item:Landroid/view/MenuItem;

    aget-object p2, v0, p2

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 309
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->nE:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$5;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cW()V

    .line 311
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
