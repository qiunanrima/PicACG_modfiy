.class Lcom/picacomic/fregata/activities/ComicViewerActivity$13;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field ik:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 794
    iput p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ik:I

    if-eqz p3, :cond_0

    .line 799
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ik:I

    iput p2, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 800
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    iget p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ik:I

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/picacomic/fregata/a/c;->b(IZ)V

    .line 801
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->r(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
