.class Lcom/picacomic/fregata/fragments/ComicListFragment$10;
.super Ljava/lang/Object;
.source "ComicListFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicListFragment;->ca()V
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

    .line 469
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 475
    :try_start_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->hP:I

    .line 476
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->hP:I

    iput p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ComicListFragment;->page:I

    iput p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->hP:I

    .line 481
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/ComicListFragment;->nQ:Z

    .line 483
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->a(Lcom/picacomic/fregata/fragments/ComicListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "CATEGORY_USER_FAVOURITE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cV()V

    goto :goto_1

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicListFragment$10;->nT:Lcom/picacomic/fregata/fragments/ComicListFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicListFragment;->cW()V

    :goto_1
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
