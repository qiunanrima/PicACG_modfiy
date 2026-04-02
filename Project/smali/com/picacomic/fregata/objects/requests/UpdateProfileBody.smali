.class public Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;
.super Ljava/lang/Object;
.source "UpdateProfileBody.java"


# instance fields
.field slogan:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;->slogan:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSlogan()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;->slogan:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateProfileBody{slogan=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
