.class public Lcom/picacomic/fregata/objects/AnnouncementObject;
.super Ljava/lang/Object;
.source "AnnouncementObject.java"


# instance fields
.field announcementId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field content:Ljava/lang/String;

.field createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->announcementId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->title:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->content:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->createdAt:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public getAnnouncementId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->announcementId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAnnouncementId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->announcementId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/objects/AnnouncementObject;->title:Ljava/lang/String;

    return-void
.end method
