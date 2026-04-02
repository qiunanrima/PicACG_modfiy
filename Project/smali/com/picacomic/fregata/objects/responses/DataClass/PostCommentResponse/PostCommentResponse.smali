.class public Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;
.super Ljava/lang/Object;
.source "PostCommentResponse.java"


# instance fields
.field childsCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "childsCount"
    .end annotation
.end field

.field comicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_comic"
    .end annotation
.end field

.field comment:Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;

.field commentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field likesCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likesCount"
    .end annotation
.end field

.field parentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_parent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comment:Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;

    .line 33
    iput-object p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->parentId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comicId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->commentId:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->createdAt:Ljava/lang/String;

    .line 37
    iput p6, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->likesCount:I

    .line 38
    iput p7, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->childsCount:I

    return-void
.end method


# virtual methods
.method public getChildsCount()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->childsCount:I

    return v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comment:Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->likesCount:I

    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public setChildsCount(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->childsCount:I

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setComment(Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comment:Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->likesCount:I

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->parentId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostCommentResponse{comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comment:Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comicId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", commentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->commentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", childsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentResponse;->childsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
