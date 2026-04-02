.class public Lcom/picacomic/fregata/objects/CommentObject;
.super Ljava/lang/Object;
.source "CommentObject.java"


# instance fields
.field childsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commentsCount"
    .end annotation
.end field

.field comicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_comic"
    .end annotation
.end field

.field commentId:Ljava/lang/String;
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

.field gameId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_game"
    .end annotation
.end field

.field hide:Z

.field isLiked:Z

.field isTop:Z

.field likesCount:I

.field user:Lcom/picacomic/fregata/objects/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/UserProfileObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->commentId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/picacomic/fregata/objects/CommentObject;->content:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/picacomic/fregata/objects/CommentObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 45
    iput-object p4, p0, Lcom/picacomic/fregata/objects/CommentObject;->comicId:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/picacomic/fregata/objects/CommentObject;->gameId:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/picacomic/fregata/objects/CommentObject;->createdAt:Ljava/lang/String;

    .line 48
    iput p7, p0, Lcom/picacomic/fregata/objects/CommentObject;->likesCount:I

    .line 49
    iput p8, p0, Lcom/picacomic/fregata/objects/CommentObject;->childsCount:I

    .line 50
    iput-boolean p9, p0, Lcom/picacomic/fregata/objects/CommentObject;->isLiked:Z

    .line 51
    iput-boolean p10, p0, Lcom/picacomic/fregata/objects/CommentObject;->hide:Z

    .line 52
    iput-boolean p11, p0, Lcom/picacomic/fregata/objects/CommentObject;->isTop:Z

    return-void
.end method


# virtual methods
.method public getChildsCount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->childsCount:I

    return v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->likesCount:I

    return v0
.end method

.method public getUser()Lcom/picacomic/fregata/objects/UserProfileObject;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-object v0
.end method

.method public isHide()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->hide:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->isLiked:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentObject;->isTop:Z

    return v0
.end method

.method public setChildsCount(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->childsCount:I

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setHide(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->hide:Z

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->likesCount:I

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->isTop:Z

    return-void
.end method

.method public setUser(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommentObject{commentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/CommentObject;->commentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", comicId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gameId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentObject;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/CommentObject;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", childsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/CommentObject;->childsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLiked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/CommentObject;->isLiked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/CommentObject;->hide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/CommentObject;->isTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
