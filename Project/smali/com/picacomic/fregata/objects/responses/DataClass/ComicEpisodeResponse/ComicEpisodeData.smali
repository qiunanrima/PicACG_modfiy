.class public Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;
.super Ljava/lang/Object;
.source "ComicEpisodeData.java"


# instance fields
.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;"
        }
    .end annotation
.end field

.field limit:I

.field page:I

.field pages:I

.field total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;IIII)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->docs:Ljava/util/ArrayList;

    .line 26
    iput p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->total:I

    .line 27
    iput p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->limit:I

    .line 28
    iput p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->page:I

    .line 29
    iput p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->pages:I

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->docs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->total:I

    return v0
.end method

.method public setDocs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->docs:Ljava/util/ArrayList;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicEpisodeData{docs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
