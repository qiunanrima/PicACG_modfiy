.class Lcom/picacomic/fregata/activities/ComicViewerActivity$12;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 537
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 538
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getOrder()I

    move-result p2

    iput p2, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    .line 539
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->b(IIZ)V

    :cond_0
    return-void
.end method
