.class public Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;
.super Ljava/lang/Object;
.source "ComicPagesResponse.java"


# instance fields
.field ep:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

.field pages:Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;Lcom/picacomic/fregata/objects/ComicEpisodeObject;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->pages:Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    .line 15
    iput-object p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->ep:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    return-void
.end method


# virtual methods
.method public getEp()Lcom/picacomic/fregata/objects/ComicEpisodeObject;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->ep:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    return-object v0
.end method

.method public getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->pages:Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    return-object v0
.end method

.method public setEp(Lcom/picacomic/fregata/objects/ComicEpisodeObject;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->ep:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    return-void
.end method

.method public setPages(Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->pages:Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicPagesResponse{pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->pages:Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->ep:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
