.class public Lcom/picacomic/fregata/objects/ProfileCommentObject;
.super Ljava/lang/Object;
.source "ProfileCommentObject.java"


# instance fields
.field childsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commentsCount"
    .end annotation
.end field

.field commentComicIdTitleObject:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_comic"
    .end annotation
.end field

.field commentGameIdTitleObject:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_game"
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

.field hide:Z

.field isLiked:Z

.field likesCount:I

.field user:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;Ljava/lang/String;IIZZ)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->content:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->user:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentComicIdTitleObject:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    .line 53
    iput-object p5, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentGameIdTitleObject:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    .line 54
    iput-object p6, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->createdAt:Ljava/lang/String;

    .line 55
    iput p7, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->likesCount:I

    .line 56
    iput p8, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->childsCount:I

    .line 57
    iput-boolean p9, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->isLiked:Z

    .line 58
    iput-boolean p10, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->hide:Z

    return-void
.end method


# virtual methods
.method public getChildsCount()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->childsCount:I

    return v0
.end method

.method public getCommentComicIdTitleObject()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentComicIdTitleObject:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    return-object v0
.end method

.method public getCommentGameIdTitleObject()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentGameIdTitleObject:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->likesCount:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->user:Ljava/lang/String;

    return-object v0
.end method

.method public isHide()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->hide:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->isLiked:Z

    return v0
.end method

.method public setChildsCount(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->childsCount:I

    return-void
.end method

.method public setCommentComicIdTitleObject(Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentComicIdTitleObject:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    return-void
.end method

.method public setCommentGameIdTitleObject(Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentGameIdTitleObject:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setHide(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->hide:Z

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->likesCount:I

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->user:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileCommentObject{commentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", commentComicIdTitleObject=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentComicIdTitleObject:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", commentGameIdTitleObject=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentGameIdTitleObject:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", likesCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->likesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", childsCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->childsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLiked=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->isLiked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hide=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ProfileCommentObject;->hide:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
