.class public Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;
.super Ljava/lang/Object;
.source "ProfileCommentsData.java"


# instance fields
.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ProfileCommentObject;",
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
            "Lcom/picacomic/fregata/objects/ProfileCommentObject;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->total:I

    .line 21
    iput p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->limit:I

    .line 22
    iput p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->page:I

    .line 23
    iput p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->pages:I

    .line 24
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->docs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ProfileCommentObject;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->docs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->total:I

    return v0
.end method

.method public setDocs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ProfileCommentObject;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->docs:Ljava/util/ArrayList;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;->total:I

    return-void
.end method
