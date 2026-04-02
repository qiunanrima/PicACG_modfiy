.class public Lcom/picacomic/fregata/objects/GameListObject;
.super Ljava/lang/Object;
.source "GameListObject.java"


# instance fields
.field adult:Z

.field android:Z

.field gameId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field ios:Z

.field likesCount:I

.field publisher:Ljava/lang/String;

.field suggest:Z

.field title:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZLcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->gameId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/picacomic/fregata/objects/GameListObject;->title:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/picacomic/fregata/objects/GameListObject;->version:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/picacomic/fregata/objects/GameListObject;->publisher:Ljava/lang/String;

    .line 35
    iput p5, p0, Lcom/picacomic/fregata/objects/GameListObject;->likesCount:I

    .line 36
    iput-boolean p6, p0, Lcom/picacomic/fregata/objects/GameListObject;->suggest:Z

    .line 37
    iput-boolean p7, p0, Lcom/picacomic/fregata/objects/GameListObject;->adult:Z

    .line 38
    iput-boolean p8, p0, Lcom/picacomic/fregata/objects/GameListObject;->ios:Z

    .line 39
    iput-boolean p9, p0, Lcom/picacomic/fregata/objects/GameListObject;->android:Z

    .line 40
    iput-object p10, p0, Lcom/picacomic/fregata/objects/GameListObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->likesCount:I

    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->adult:Z

    return v0
.end method

.method public isAndroid()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->android:Z

    return v0
.end method

.method public isIos()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->ios:Z

    return v0
.end method

.method public isSuggest()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameListObject;->suggest:Z

    return v0
.end method

.method public setAdult(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->adult:Z

    return-void
.end method

.method public setAndroid(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->android:Z

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setIos(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->ios:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->likesCount:I

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->publisher:Ljava/lang/String;

    return-void
.end method

.method public setSuggest(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->suggest:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameListObject;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameListObject{gameId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameListObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameListObject;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", publisher=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameListObject;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suggest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->suggest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->adult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->ios:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", android="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->android:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/GameListObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
