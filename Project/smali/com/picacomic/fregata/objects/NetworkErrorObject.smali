.class public Lcom/picacomic/fregata/objects/NetworkErrorObject;
.super Ljava/lang/Object;
.source "NetworkErrorObject.java"


# instance fields
.field code:I

.field detail:Ljava/lang/String;

.field error:Ljava/lang/String;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->code:I

    .line 17
    iput-object p2, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->error:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->message:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->code:I

    return v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->code:I

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->detail:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->error:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkErrorObject{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NetworkErrorObject;->detail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
