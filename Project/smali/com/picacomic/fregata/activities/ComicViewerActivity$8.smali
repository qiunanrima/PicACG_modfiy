.class Lcom/picacomic/fregata/activities/ComicViewerActivity$8;
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

    .line 716
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 721
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 722
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const-class v1, Lcom/picacomic/fregata/activities/PopupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_KEY_COMIC_ID"

    .line 723
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_TYPE"

    const-string v1, "TYPE_KEY_COMMENT"

    .line 724
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
