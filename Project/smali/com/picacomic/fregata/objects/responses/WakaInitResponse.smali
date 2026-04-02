.class public Lcom/picacomic/fregata/objects/responses/WakaInitResponse;
.super Ljava/lang/Object;
.source "WakaInitResponse.java"


# instance fields
.field adKeyword:Ljava/lang/String;

.field addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field status:Ljava/lang/String;

.field waka:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->status:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->addresses:Ljava/util/ArrayList;

    .line 19
    iput-object p3, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->waka:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->adKeyword:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdKeyword()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->adKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getAddresses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->addresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getWaka()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->waka:Ljava/lang/String;

    return-object v0
.end method

.method public setAdKeyword(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->adKeyword:Ljava/lang/String;

    return-void
.end method

.method public setAddresses(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->addresses:Ljava/util/ArrayList;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setWaka(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->waka:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakaInitResponse{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", addresses="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waka=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->waka:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", adKeyword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->adKeyword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/WakaInitResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
