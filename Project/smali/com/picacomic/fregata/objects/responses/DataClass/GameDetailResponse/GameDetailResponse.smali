.class public Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;
.super Ljava/lang/Object;
.source "GameDetailResponse.java"


# instance fields
.field game:Lcom/picacomic/fregata/objects/GameDetailObject;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/GameDetailObject;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->game:Lcom/picacomic/fregata/objects/GameDetailObject;

    return-void
.end method


# virtual methods
.method public getGame()Lcom/picacomic/fregata/objects/GameDetailObject;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->game:Lcom/picacomic/fregata/objects/GameDetailObject;

    return-object v0
.end method

.method public setGame(Lcom/picacomic/fregata/objects/GameDetailObject;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->game:Lcom/picacomic/fregata/objects/GameDetailObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameDetailResponse{game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;->game:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
