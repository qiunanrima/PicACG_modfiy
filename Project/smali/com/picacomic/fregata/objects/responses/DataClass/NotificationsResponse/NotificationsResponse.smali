.class public Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;
.super Ljava/lang/Object;
.source "NotificationsResponse.java"


# instance fields
.field notifications:Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->notifications:Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    return-void
.end method


# virtual methods
.method public getNotifications()Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->notifications:Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    return-object v0
.end method

.method public setNotifications(Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->notifications:Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationsResponse{notifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsResponse;->notifications:Lcom/picacomic/fregata/objects/responses/DataClass/NotificationsResponse/NotificationsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
