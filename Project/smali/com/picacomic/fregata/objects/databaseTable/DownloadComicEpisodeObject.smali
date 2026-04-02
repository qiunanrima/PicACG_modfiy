.class public Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;
.super Lcom/orm/d;
.source "DownloadComicEpisodeObject.java"


# instance fields
.field comicId:Ljava/lang/String;

.field episodeId:Ljava/lang/String;

.field episodeOrder:I

.field status:I

.field title:Ljava/lang/String;

.field total:I

.field updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/picacomic/fregata/objects/ComicEpisodeObject;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->comicId:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeId:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->title:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getOrder()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeOrder:I

    .line 41
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getUpdatedAt()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->updatedAt:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/picacomic/fregata/objects/ComicEpisodeObject;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->comicId:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeId:Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->title:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getOrder()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeOrder:I

    .line 50
    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getUpdatedAt()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->updatedAt:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->status:I

    return-void
.end method


# virtual methods
.method public getComicEpisodeObject()Lcom/picacomic/fregata/objects/ComicEpisodeObject;
    .locals 5

    .line 55
    new-instance v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->title:Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeOrder:I

    iget-object v4, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->updatedAt:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeOrder()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeOrder:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->total:I

    return v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeOrder(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeOrder:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->total:I

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadComicEpisodeObject{episodeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comicId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", episodeOrder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->episodeOrder:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", total="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->total:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
