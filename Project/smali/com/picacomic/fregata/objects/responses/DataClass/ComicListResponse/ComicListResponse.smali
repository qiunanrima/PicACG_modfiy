.class public Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;
.super Ljava/lang/Object;
.source "ComicListResponse.java"


# instance fields
.field comics:Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->comics:Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    return-void
.end method


# virtual methods
.method public getComics()Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->comics:Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    return-object v0
.end method

.method public setComics(Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->comics:Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicListResponse{, comics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListResponse;->comics:Lcom/picacomic/fregata/objects/responses/DataClass/ComicListResponse/ComicListData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
