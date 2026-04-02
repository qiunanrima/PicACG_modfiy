.class public Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;
.super Ljava/lang/Object;
.source "AnonymousChatActionDataObject.java"


# instance fields
.field actionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionType"
    .end annotation
.end field

.field data:Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

.field responseType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->actionType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->responseType:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->data:Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->data:Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->data:Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->responseType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnonymousChatActionDataObject{actionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->actionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", responseType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->data:Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
