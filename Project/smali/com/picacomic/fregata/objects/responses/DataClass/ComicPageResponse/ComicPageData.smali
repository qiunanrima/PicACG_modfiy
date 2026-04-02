.class public Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;
.super Ljava/lang/Object;
.source "ComicPageData.java"


# instance fields
.field docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;"
        }
    .end annotation
.end field

.field limit:I

.field page:I

.field pages:I

.field total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->total:I

    .line 22
    iput p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->limit:I

    .line 23
    iput p3, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->page:I

    .line 24
    iput p4, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->pages:I

    .line 25
    iput-object p5, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->docs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDocs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->docs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->limit:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->pages:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->total:I

    return v0
.end method

.method public setDocs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->docs:Ljava/util/ArrayList;

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->limit:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->page:I

    return-void
.end method

.method public setPages(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->pages:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicPageData{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", docs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
