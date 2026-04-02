.class Lcom/picacomic/fregata/activities/ComicViewerActivity$25;
.super Landroid/os/CountDownTimer;
.source "ComicViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->bQ()V
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

    .line 1946
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1954
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1957
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
