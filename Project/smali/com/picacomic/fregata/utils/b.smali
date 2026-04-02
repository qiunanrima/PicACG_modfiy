.class public Lcom/picacomic/fregata/utils/b;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updateDbComicDetailObject(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V

    .line 38
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->save()J

    .line 39
    sget-object p0, Lcom/picacomic/fregata/utils/b;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->save()J

    .line 44
    sget-object v0, Lcom/picacomic/fregata/utils/b;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->updateDbComicViewRecordObject(Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;)V

    .line 66
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->save()J

    return v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->save()J

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->az(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->az(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->updateWithDownloadComicPageObject(Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;)V

    .line 149
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->save()J

    .line 151
    sget-object v0, Lcom/picacomic/fregata/utils/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->save()J

    .line 156
    sget-object v0, Lcom/picacomic/fregata/utils/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static aw(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;
    .locals 4

    .line 19
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    const-string v1, "comic_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;
    .locals 4

    .line 52
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    const-string v1, "comic_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ay(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;
    .locals 4

    .line 78
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    const-string v1, "episode_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/picacomic/fregata/utils/b;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Ep DB object size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static az(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;
    .locals 4

    .line 134
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    const-string v1, "comic_page_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/picacomic/fregata/utils/b;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Page DB object size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
