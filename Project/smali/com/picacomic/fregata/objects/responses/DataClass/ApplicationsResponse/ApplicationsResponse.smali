.class public Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;
.super Ljava/lang/Object;
.source "ApplicationsResponse.java"


# instance fields
.field applications:Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->applications:Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    return-void
.end method


# virtual methods
.method public getApplications()Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->applications:Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    return-object v0
.end method

.method public setApplications(Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->applications:Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationsResponse{applications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsResponse;->applications:Lcom/picacomic/fregata/objects/responses/DataClass/ApplicationsResponse/ApplicationsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
