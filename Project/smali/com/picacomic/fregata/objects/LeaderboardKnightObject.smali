.class public Lcom/picacomic/fregata/objects/LeaderboardKnightObject;
.super Ljava/lang/Object;
.source "LeaderboardKnightObject.java"


# instance fields
.field avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field character:Ljava/lang/String;

.field characters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field comicsUploaded:I

.field exp:I

.field gender:Ljava/lang/String;

.field leaderboardKnightId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field level:I

.field name:Ljava/lang/String;

.field verified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;Ljava/util/ArrayList;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->leaderboardKnightId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->name:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->gender:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->character:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 60
    iput-object p6, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->characters:Ljava/util/ArrayList;

    .line 61
    iput p7, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->level:I

    .line 62
    iput p8, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->exp:I

    .line 63
    iput p9, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->comicsUploaded:I

    .line 64
    iput-boolean p10, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->verified:Z

    return-void
.end method


# virtual methods
.method public getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->characters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComicsUploaded()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->comicsUploaded:I

    return v0
.end method

.method public getExp()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->exp:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderboardKnightId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->leaderboardKnightId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->verified:Z

    return v0
.end method

.method public setAvatar(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->character:Ljava/lang/String;

    return-void
.end method

.method public setCharacters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->characters:Ljava/util/ArrayList;

    return-void
.end method

.method public setComicsUploaded(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->comicsUploaded:I

    return-void
.end method

.method public setExp(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->exp:I

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->gender:Ljava/lang/String;

    return-void
.end method

.method public setLeaderboardKnightId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->leaderboardKnightId:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->level:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->verified:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LeaderboardKnightObject{leaderboardKnightId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->leaderboardKnightId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->character:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", characters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->exp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", comicsUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->comicsUploaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/LeaderboardKnightObject;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
