.class Lcom/picacomic/fregata/activities/ComicViewerActivity$4;
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

    .line 665
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$4;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 670
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$4;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const-class v1, Lcom/picacomic/fregata/activities/PopupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_KEY_TYPE"

    const-string v1, "TYPE_KEY_SETTING"

    .line 671
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$4;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
