.class public Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;
.super Ljava/lang/Object;
.source "CommentsData.java"


# instance fields
.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;"
        }
    .end annotation
.end field

.field limit:I

.field page:I

.field pages:I

.field total:I


# direct methods
.method public constructor <init>(IIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->total:I

    .line 20
    iput p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->limit:I

    .line 21
    iput p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->page:I

    .line 22
    iput p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->pages:I

    .line 23
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->docs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->docs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->total:I

    return v0
.end method

.method public setDocs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CommentObject;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->docs:Ljava/util/ArrayList;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommentsData{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", docs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/CommentsResponse/CommentsData;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
