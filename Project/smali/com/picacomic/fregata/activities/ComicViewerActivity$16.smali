.class Lcom/picacomic/fregata/activities/ComicViewerActivity$16;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 859
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 865
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 866
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    .line 867
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->b(IIZ)V

    goto :goto_0

    .line 870
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->p(I)V

    .line 871
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const v0, 0x7f0f0104

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
