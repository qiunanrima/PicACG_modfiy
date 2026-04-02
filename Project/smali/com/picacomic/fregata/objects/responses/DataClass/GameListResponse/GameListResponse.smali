.class public Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;
.super Ljava/lang/Object;
.source "GameListResponse.java"


# instance fields
.field games:Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->games:Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    return-void
.end method


# virtual methods
.method public getGames()Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->games:Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    return-object v0
.end method

.method public setGames(Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->games:Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameListResponse{games="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListResponse;->games:Lcom/picacomic/fregata/objects/responses/DataClass/GameListResponse/GameListData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
