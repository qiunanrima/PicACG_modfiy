.class public Lcom/picacomic/fregata/objects/NotificationObject;
.super Ljava/lang/Object;
.source "NotificationObject.java"


# instance fields
.field content:Ljava/lang/String;

.field cover:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field link:Ljava/lang/String;

.field notificationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field redirectId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_redirectId"
    .end annotation
.end field

.field redirectType:Ljava/lang/String;

.field sender:Lcom/picacomic/fregata/objects/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_sender"
    .end annotation
.end field

.field system:Z

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/picacomic/fregata/objects/ThumbnailObject;Lcom/picacomic/fregata/objects/UserProfileObject;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->notificationId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->title:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/picacomic/fregata/objects/NotificationObject;->content:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectId:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectType:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/picacomic/fregata/objects/NotificationObject;->link:Ljava/lang/String;

    .line 38
    iput-boolean p7, p0, Lcom/picacomic/fregata/objects/NotificationObject;->system:Z

    .line 39
    iput-object p8, p0, Lcom/picacomic/fregata/objects/NotificationObject;->cover:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 40
    iput-object p9, p0, Lcom/picacomic/fregata/objects/NotificationObject;->sender:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 41
    iput-object p10, p0, Lcom/picacomic/fregata/objects/NotificationObject;->createdAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->cover:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->notificationId:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectType()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectType:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Lcom/picacomic/fregata/objects/UserProfileObject;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->sender:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSystem()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/NotificationObject;->system:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setCover(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->cover:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->link:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->notificationId:Ljava/lang/String;

    return-void
.end method

.method public setRedirectId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectId:Ljava/lang/String;

    return-void
.end method

.method public setRedirectType(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectType:Ljava/lang/String;

    return-void
.end method

.method public setSender(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->sender:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-void
.end method

.method public setSystem(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->system:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationObject{notificationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/NotificationObject;->notificationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", redirectId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", redirectType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->redirectType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", link=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", system="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->system:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->cover:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->sender:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NotificationObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
