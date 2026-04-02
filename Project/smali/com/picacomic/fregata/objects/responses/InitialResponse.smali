.class public Lcom/picacomic/fregata/objects/responses/InitialResponse;
.super Ljava/lang/Object;
.source "InitialResponse.java"


# instance fields
.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field public imageServer:Ljava/lang/String;

.field public isIdUpdated:Z

.field public isPunched:Z

.field public latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

.field public notification:Lcom/picacomic/fregata/objects/NotificationObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CategoryObject;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageServer()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->imageServer:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestApplication()Lcom/picacomic/fregata/objects/LatestApplicationObject;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    return-object v0
.end method

.method public getNotification()Lcom/picacomic/fregata/objects/NotificationObject;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->notification:Lcom/picacomic/fregata/objects/NotificationObject;

    return-object v0
.end method

.method public isIdUpdated()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isIdUpdated:Z

    return v0
.end method

.method public isPunched()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isPunched:Z

    return v0
.end method

.method public setCategories(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CategoryObject;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method public setIdUpdated(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isIdUpdated:Z

    return-void
.end method

.method public setImageServer(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->imageServer:Ljava/lang/String;

    return-void
.end method

.method public setLatestApplication(Lcom/picacomic/fregata/objects/LatestApplicationObject;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    return-void
.end method

.method public setNotification(Lcom/picacomic/fregata/objects/NotificationObject;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->notification:Lcom/picacomic/fregata/objects/NotificationObject;

    return-void
.end method

.method public setPunched(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isPunched:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitialResponse{latestApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPunched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isPunched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imageServer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->imageServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->notification:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isIdUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isIdUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
