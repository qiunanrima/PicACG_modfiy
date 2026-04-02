.class public Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;
.super Lcom/orm/d;
.source "DownloadComicPageObject.java"


# instance fields
.field comicId:Ljava/lang/String;

.field comicPageId:Ljava/lang/String;

.field episodeId:Ljava/lang/String;

.field mediaFileServer:Ljava/lang/String;

.field mediaOriginalName:Ljava/lang/String;

.field mediaPath:Ljava/lang/String;

.field storageFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ComicPageObject;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->episodeId:Ljava/lang/String;

    .line 42
    invoke-virtual {p4}, Lcom/picacomic/fregata/objects/ComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicPageId:Ljava/lang/String;

    .line 43
    invoke-virtual {p4}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    .line 44
    invoke-virtual {p4}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    .line 45
    invoke-virtual {p4}, Lcom/picacomic/fregata/objects/ComicPageObject;->getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->storageFolder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getComicPageId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getComicPageObject()Lcom/picacomic/fregata/objects/ComicPageObject;
    .locals 6

    .line 62
    new-instance v0, Lcom/picacomic/fregata/objects/ComicPageObject;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicPageId:Ljava/lang/String;

    new-instance v2, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iget-object v3, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/picacomic/fregata/objects/ThumbnailObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/objects/ComicPageObject;-><init>(Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 4

    .line 58
    new-instance v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/picacomic/fregata/objects/ThumbnailObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMediaFileServer()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaOriginalName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPath()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageFolder()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->storageFolder:Ljava/lang/String;

    return-object v0
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setComicPageId(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicPageId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->episodeId:Ljava/lang/String;

    return-void
.end method

.method public setMedia(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setMediaFileServer(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    return-void
.end method

.method public setMediaOriginalName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    return-void
.end method

.method public setMediaPath(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    return-void
.end method

.method public setStorageFolder(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->storageFolder:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadComicPageObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", episodeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comicPageId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicPageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediaFileServer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediaOriginalName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediaPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", storageFolder=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->storageFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWithDownloadComicPageObject(Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->episodeId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getComicPageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->comicPageId:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getMediaFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaFileServer:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getMediaOriginalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaOriginalName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getMediaPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->mediaPath:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getStorageFolder()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->storageFolder:Ljava/lang/String;

    return-void
.end method
