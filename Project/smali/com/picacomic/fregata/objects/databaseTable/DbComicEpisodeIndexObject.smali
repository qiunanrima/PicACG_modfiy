.class public Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;
.super Ljava/lang/Object;
.source "DbComicEpisodeIndexObject.java"


# instance fields
.field comicId:Ljava/lang/String;

.field episodeId:Ljava/lang/String;

.field limit:I

.field page:I

.field pages:I

.field total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->comicId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->episodeId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getTotal()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->total:I

    .line 40
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->limit:I

    .line 41
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getPage()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->page:I

    .line 42
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getPages()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->pages:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->comicId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->episodeId:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->total:I

    .line 31
    iput p4, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->limit:I

    .line 32
    iput p5, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->page:I

    .line 33
    iput p6, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->pages:I

    return-void
.end method


# virtual methods
.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->total:I

    return v0
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->episodeId:Ljava/lang/String;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbComicEpisodeIndexObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", episodeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDbComicEpisodeIndexObject(Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->comicId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->episodeId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getTotal()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->total:I

    .line 49
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->limit:I

    .line 50
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getPage()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->page:I

    .line 51
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->getPages()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicEpisodeIndexObject;->pages:I

    return-void
.end method
