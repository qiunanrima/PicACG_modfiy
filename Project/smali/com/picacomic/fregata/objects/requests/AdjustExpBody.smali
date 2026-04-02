.class public Lcom/picacomic/fregata/objects/requests/AdjustExpBody;
.super Ljava/lang/Object;
.source "AdjustExpBody.java"


# instance fields
.field exp:I

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->exp:I

    .line 15
    iput-object p2, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExp()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->exp:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setExp(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->exp:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdjustExpBody{exp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->exp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
