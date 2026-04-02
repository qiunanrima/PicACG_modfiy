.class public Lcom/picacomic/fregata/objects/CreatorObject;
.super Ljava/lang/Object;
.source "CreatorObject.java"


# instance fields
.field avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field creatorId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field gender:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CreatorObject;->creatorId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/picacomic/fregata/objects/CreatorObject;->name:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/picacomic/fregata/objects/CreatorObject;->gender:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/picacomic/fregata/objects/CreatorObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CreatorObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CreatorObject;->creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CreatorObject;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CreatorObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CreatorObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CreatorObject;->creatorId:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CreatorObject;->gender:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CreatorObject;->name:Ljava/lang/String;

    return-void
.end method
