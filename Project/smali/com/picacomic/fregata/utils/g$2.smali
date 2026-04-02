.class final Lcom/picacomic/fregata/utils/g$2;
.super Ljava/lang/Object;
.source "Tools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/utils/g;->av(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic uM:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/picacomic/fregata/utils/g$2;->uM:Ljava/util/List;

    iput-object p2, p0, Lcom/picacomic/fregata/utils/g$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 1175
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/g$2;->uM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1176
    sget-object v0, Lcom/picacomic/fregata/utils/g;->TAG:Ljava/lang/String;

    const-string v1, "Start Download Service"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/picacomic/fregata/utils/g$2;->val$context:Landroid/content/Context;

    const-class v2, Lcom/picacomic/fregata/services/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "COMIC_ID"

    .line 1178
    iget-object v2, p0, Lcom/picacomic/fregata/utils/g$2;->uM:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getComicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EPISODE_ID"

    .line 1179
    iget-object v2, p0, Lcom/picacomic/fregata/utils/g$2;->uM:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    iget-object v1, p0, Lcom/picacomic/fregata/utils/g$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
