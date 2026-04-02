.class Lcom/picacomic/fregata/fragments/ComicListFragment$6;
.super Ljava/lang/Object;
.source "ComicListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

    .line 317
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    .line 320
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nH:[Z

    aput-boolean p3, p1, p2

    if-eqz p3, :cond_1

    .line 322
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p3, p3, Lcom/picacomic/fregata/fragments/ComicListFragment;->nG:[Ljava/lang/String;

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 p1, 0x0

    const/4 p3, -0x1

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    const/4 v0, 0x0

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nG:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/ComicListFragment;->nG:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p3, p1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 337
    :cond_4
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$6;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nF:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method
