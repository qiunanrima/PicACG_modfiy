.class Lcom/picacomic/fregata/activities/ComicViewerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ComicViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;
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

    .line 378
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$1;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "level"

    .line 382
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 383
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$1;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hW:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 385
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$1;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz p2, :cond_0

    .line 387
    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$1;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const-string v0, "cannot parse battery level."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method
