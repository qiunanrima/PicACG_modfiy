.class public Lcom/picacomic/fregata/objects/LatestApplicationObject;
.super Ljava/lang/Object;
.source "LatestApplicationObject.java"


# instance fields
.field apk:Lcom/picacomic/fregata/objects/ApkObject;

.field createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field downloadUrl:Ljava/lang/String;

.field latestApplicationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field updateContent:Ljava/lang/String;

.field updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ApkObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->latestApplicationId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->version:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updateContent:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->downloadUrl:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->apk:Lcom/picacomic/fregata/objects/ApkObject;

    .line 33
    iput-object p6, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->createdAt:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updatedAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApk()Lcom/picacomic/fregata/objects/ApkObject;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->apk:Lcom/picacomic/fregata/objects/ApkObject;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestApplicationId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->latestApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApk(Lcom/picacomic/fregata/objects/ApkObject;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->apk:Lcom/picacomic/fregata/objects/ApkObject;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setLatestApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->latestApplicationId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateContent(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updateContent:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatestApplicationData{latestApplicationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->latestApplicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updateContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->apk:Lcom/picacomic/fregata/objects/ApkObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LatestApplicationObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
