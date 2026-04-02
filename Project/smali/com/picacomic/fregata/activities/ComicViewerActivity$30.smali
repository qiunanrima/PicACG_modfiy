.class Lcom/picacomic/fregata/activities/ComicViewerActivity$30;
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

    .line 611
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 614
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-boolean p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    if-eqz p1, :cond_0

    .line 615
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    .line 616
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->h(Z)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    .line 619
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->h(Z)V

    .line 621
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-boolean v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->e(Landroid/content/Context;Z)Z

    return-void
.end method
