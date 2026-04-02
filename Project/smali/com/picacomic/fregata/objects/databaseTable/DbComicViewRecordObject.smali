.class public Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;
.super Lcom/orm/d;
.source "DbComicViewRecordObject.java"


# instance fields
.field comicId:Ljava/lang/String;

.field episodeOrder:I

.field episodeTitle:Ljava/lang/String;

.field episodeTotal:I

.field lastViewTimestamp:J

.field page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIJ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->comicId:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->page:I

    .line 22
    iput-object p3, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTitle:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeOrder:I

    .line 24
    iput p5, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTotal:I

    .line 25
    iput-wide p6, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->lastViewTimestamp:J

    return-void
.end method


# virtual methods
.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeOrder()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeOrder:I

    return v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTotal()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTotal:I

    return v0
.end method

.method public getLastViewTimestamp()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->lastViewTimestamp:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->page:I

    return v0
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeOrder(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeOrder:I

    return-void
.end method

.method public setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTitle:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeTotal(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTotal:I

    return-void
.end method

.method public setLastViewTimestamp(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->lastViewTimestamp:J

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->page:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbComicViewRecordObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", episodeTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", episodeTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastViewTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->lastViewTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDbComicViewRecordObject(Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->comicId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getPage()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->page:I

    .line 31
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTitle:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeOrder()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeOrder:I

    .line 33
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeTotal()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->episodeTotal:I

    .line 34
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getLastViewTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->lastViewTimestamp:J

    return-void
.end method
