.class Lcom/picacomic/fregata/activities/ComicViewerActivity$14;
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


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 831
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    mul-int/lit8 p2, p2, 0x64

    add-int/lit16 p2, p2, 0x3e8

    iput p2, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    .line 832
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->b(Landroid/content/Context;I)Z

    .line 833
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 834
    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_dialogAutoPagingTitle:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u3010 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f01a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u3011"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
