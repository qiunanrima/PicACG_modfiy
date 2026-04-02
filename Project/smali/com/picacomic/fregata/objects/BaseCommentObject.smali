.class public Lcom/picacomic/fregata/objects/BaseCommentObject;
.super Ljava/lang/Object;
.source "BaseCommentObject.java"


# instance fields
.field childsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commentsCount"
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

.field isLiked:Z

.field likesCount:I

.field user:Lcom/picacomic/fregata/objects/UserBasicObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildsCount()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->childsCount:I

    return v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->likesCount:I

    return v0
.end method

.method public getUser()Lcom/picacomic/fregata/objects/UserBasicObject;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->user:Lcom/picacomic/fregata/objects/UserBasicObject;

    return-object v0
.end method

.method public isLiked()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->isLiked:Z

    return v0
.end method

.method public setChildsCount(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->childsCount:I

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->likesCount:I

    return-void
.end method

.method public setUser(Lcom/picacomic/fregata/objects/UserBasicObject;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BaseCommentObject;->user:Lcom/picacomic/fregata/objects/UserBasicObject;

    return-void
.end method
