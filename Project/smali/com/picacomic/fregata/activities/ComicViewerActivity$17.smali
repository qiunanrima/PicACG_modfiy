.class Lcom/picacomic/fregata/activities/ComicViewerActivity$17;
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

    .line 878
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 881
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 882
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    sub-int/2addr v2, v1

    iput v2, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    .line 883
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {p1, v2, v0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->b(IIZ)V

    goto :goto_0

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->q(I)V

    .line 886
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const v1, 0x7f0f0103

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
