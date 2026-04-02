.class public Lcom/picacomic/fregata/objects/responses/UserProfileResponse;
.super Ljava/lang/Object;
.source "UserProfileResponse.java"


# instance fields
.field user:Lcom/picacomic/fregata/objects/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-void
.end method


# virtual methods
.method public getUser()Lcom/picacomic/fregata/objects/UserProfileObject;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-object v0
.end method

.method public setUser(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileResponse{user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
