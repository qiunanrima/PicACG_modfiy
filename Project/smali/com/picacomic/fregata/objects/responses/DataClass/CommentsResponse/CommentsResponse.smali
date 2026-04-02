.class public Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;
.super Ljava/lang/Object;
.source "CommentsResponse.java"


# instance fields
.field comments:Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

.field topComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    .line 20
    iput-object p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->topComments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getComments()Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    return-object v0
.end method

.method public getTopComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->topComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setComments(Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    return-void
.end method

.method public setTopComments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->topComments:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommentsResponse{comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topComments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsResponse;->topComments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
