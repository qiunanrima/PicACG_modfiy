.class Lcom/picacomic/fregata/activities/ComicViewerActivity$24;
.super Landroid/os/CountDownTimer;
.source "ComicViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->bO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;JJ)V
    .locals 0

    .line 1756
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1764
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->ad(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 1766
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/a/c;->b(IZ)V

    .line 1767
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->r(I)V

    .line 1768
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bO()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
