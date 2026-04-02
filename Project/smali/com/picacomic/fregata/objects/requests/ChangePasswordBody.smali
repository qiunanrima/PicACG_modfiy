.class public Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;
.super Ljava/lang/Object;
.source "ChangePasswordBody.java"


# instance fields
.field newPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_password"
    .end annotation
.end field

.field oldPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "old_password"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->oldPassword:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->newPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->newPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getOldPassword()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->oldPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setNewPassword(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->newPassword:Ljava/lang/String;

    return-void
.end method

.method public setOldPassword(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->oldPassword:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangePasswordBody{oldPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->oldPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", newPassword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;->newPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
