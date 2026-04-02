.class public Lcom/picacomic/fregata/objects/CommentWithReplyObject;
.super Ljava/lang/Object;
.source "CommentWithReplyObject.java"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field

.field childsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commentsCount"
    .end annotation
.end field

.field comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;
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

.field currentPage:I

.field gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_game"
    .end annotation
.end field

.field hide:Z

.field isLiked:Z

.field isTop:Z

.field likesCount:I

.field title:Ljava/lang/String;

.field totalPage:I

.field user:Lcom/picacomic/fregata/objects/UserProfileObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/CommentObject;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->commentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->commentId:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->content:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 74
    new-instance v0, Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentObject;->getComicId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    .line 75
    new-instance v0, Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CommentObject;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    .line 76
    iget-object v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->createdAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->createdAt:Ljava/lang/String;

    .line 77
    iget v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->likesCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->likesCount:I

    .line 78
    iget v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->childsCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->childsCount:I

    .line 79
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->isLiked:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked:Z

    .line 80
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/CommentObject;->hide:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->hide:Z

    .line 81
    iget-boolean p1, p1, Lcom/picacomic/fregata/objects/CommentObject;->isTop:Z

    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop:Z

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    const/4 p1, 0x1

    .line 83
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/ProfileCommentObject;Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->commentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->commentId:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->content:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 101
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ProfileCommentObject;->getCommentComicIdTitleObject()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    .line 102
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ProfileCommentObject;->getCommentGameIdTitleObject()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    .line 103
    iget-object p2, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->createdAt:Ljava/lang/String;

    iput-object p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->createdAt:Ljava/lang/String;

    .line 104
    iget p2, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->likesCount:I

    iput p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->likesCount:I

    .line 105
    iget p2, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->childsCount:I

    iput p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->childsCount:I

    .line 106
    iget-boolean p2, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->isLiked:Z

    iput-boolean p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked:Z

    .line 107
    iget-boolean p1, p1, Lcom/picacomic/fregata/objects/ProfileCommentObject;->hide:Z

    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->hide:Z

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop:Z

    .line 109
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    const/4 p1, 0x1

    .line 110
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/UserProfileObject;Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;Ljava/lang/String;Ljava/lang/String;IIZZZ)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->commentId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->content:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 57
    iput-object p4, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    .line 58
    iput-object p5, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    .line 59
    iput-object p6, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->title:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->createdAt:Ljava/lang/String;

    .line 61
    iput p8, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->likesCount:I

    .line 62
    iput p9, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->childsCount:I

    .line 63
    iput-boolean p10, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked:Z

    .line 64
    iput-boolean p11, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->hide:Z

    .line 65
    iput-boolean p12, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop:Z

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    const/4 p1, 0x1

    .line 67
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    return-void
.end method


# virtual methods
.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildsCount()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->childsCount:I

    return v0
.end method

.method public getComicId()Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    return v0
.end method

.method public getGameId()Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->likesCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    return v0
.end method

.method public getUser()Lcom/picacomic/fregata/objects/UserProfileObject;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-object v0
.end method

.method public isHide()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->hide:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop:Z

    return v0
.end method

.method public setArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->arrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setChildsCount(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->childsCount:I

    return-void
.end method

.method public setComicId(Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    return-void
.end method

.method public setGameId(Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    return-void
.end method

.method public setHide(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->hide:Z

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->likesCount:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop:Z

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    return-void
.end method

.method public setUser(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommentWithReplyObject{commentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->commentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->user:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comicId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->comicId:Lcom/picacomic/fregata/objects/CommentComicIdTitleObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gameId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->gameId:Lcom/picacomic/fregata/objects/CommentGameIdTitleObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", likesCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->likesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", childsCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->childsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currentPage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->currentPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLiked=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isLiked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", totalPage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->totalPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", arrayList=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hide=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->hide:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isTop=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/CommentWithReplyObject;->isTop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
