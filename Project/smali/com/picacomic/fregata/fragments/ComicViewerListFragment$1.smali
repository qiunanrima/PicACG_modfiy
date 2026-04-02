.class Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;
.super Ljava/lang/Object;
.source "ComicViewerListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field oc:I

.field od:I

.field final synthetic oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicViewerListFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public da()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget v1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oc:I

    iput v1, v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    .line 124
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget-boolean v0, v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nY:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iput-boolean v1, v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nY:Z

    .line 128
    :cond_0
    iget v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oc:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->od:I

    if-le v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget v2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oc:I

    iget v3, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->od:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->nV:Lcom/picacomic/fregata/a/d;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget v1, v1, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/a/d;->r(I)V

    .line 141
    sget-object v0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oe:Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    iget v2, v2, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 117
    iput p2, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->oc:I

    .line 118
    iput p3, p0, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->od:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment$1;->da()V

    :cond_0
    return-void
.end method
