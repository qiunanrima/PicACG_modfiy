.class public Lcom/picacomic/fregata/objects/responses/PunchInResponse;
.super Ljava/lang/Object;
.source "PunchInResponse.java"


# instance fields
.field res:Lcom/picacomic/fregata/objects/responses/PunchInObject;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/PunchInObject;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/PunchInResponse;->res:Lcom/picacomic/fregata/objects/responses/PunchInObject;

    return-void
.end method


# virtual methods
.method public getRes()Lcom/picacomic/fregata/objects/responses/PunchInObject;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/PunchInResponse;->res:Lcom/picacomic/fregata/objects/responses/PunchInObject;

    return-object v0
.end method

.method public setRes(Lcom/picacomic/fregata/objects/responses/PunchInObject;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/PunchInResponse;->res:Lcom/picacomic/fregata/objects/responses/PunchInObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PunchInResponse{res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/PunchInResponse;->res:Lcom/picacomic/fregata/objects/responses/PunchInObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
