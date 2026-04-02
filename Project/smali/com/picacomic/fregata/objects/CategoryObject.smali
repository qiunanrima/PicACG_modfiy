.class public Lcom/picacomic/fregata/objects/CategoryObject;
.super Ljava/lang/Object;
.source "CategoryObject.java"


# instance fields
.field categoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field description:Ljava/lang/String;

.field isWeb:Z

.field link:Ljava/lang/String;

.field thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;ZLjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->categoryId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/picacomic/fregata/objects/CategoryObject;->title:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/picacomic/fregata/objects/CategoryObject;->description:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/picacomic/fregata/objects/CategoryObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 48
    iput-boolean p5, p0, Lcom/picacomic/fregata/objects/CategoryObject;->isWeb:Z

    .line 49
    iput-object p6, p0, Lcom/picacomic/fregata/objects/CategoryObject;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CategoryObject;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CategoryObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CategoryObject;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CategoryObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CategoryObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isWeb()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CategoryObject;->isWeb:Z

    return v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->link:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setWeb(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->isWeb:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryObject{categoryId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/CategoryObject;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CategoryObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CategoryObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CategoryObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isWeb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/CategoryObject;->isWeb:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", link=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CategoryObject;->link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
