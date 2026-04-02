.class public Lcom/picacomic/fregata/objects/responses/PutAvatarResponse;
.super Ljava/lang/Object;
.source "PutAvatarResponse.java"


# instance fields
.field avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/PutAvatarResponse;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/PutAvatarResponse;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public setAvatar(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/PutAvatarResponse;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutAvatarResponse{avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/PutAvatarResponse;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
