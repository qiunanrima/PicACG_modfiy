.class Lcom/picacomic/fregata/activities/ComicViewerActivity$2;
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

    .line 640
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 645
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 646
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 649
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
