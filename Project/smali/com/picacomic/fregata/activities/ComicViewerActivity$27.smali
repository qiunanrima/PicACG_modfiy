.class Lcom/picacomic/fregata/activities/ComicViewerActivity$27;
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

    .line 583
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$27;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 586
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$27;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->k(I)V

    .line 587
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$27;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->l(I)V

    .line 588
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$27;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->c(Landroid/content/Context;Z)Z

    return-void
.end method
