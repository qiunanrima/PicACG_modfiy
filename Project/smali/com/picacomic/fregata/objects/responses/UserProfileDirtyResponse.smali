.class public Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;
.super Ljava/lang/Object;
.source "UserProfileDirtyResponse.java"


# instance fields
.field dirty:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;->dirty:Z

    return-void
.end method


# virtual methods
.method public isDirty()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;->dirty:Z

    return v0
.end method

.method public setDirty(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;->dirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileDirtyResponse{dirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;->dirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
