.class public Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;
.super Ljava/lang/Object;
.source "ComicDetailResponse.java"


# instance fields
.field comic:Lcom/picacomic/fregata/objects/ComicDetailObject;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/ComicDetailObject;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->comic:Lcom/picacomic/fregata/objects/ComicDetailObject;

    return-void
.end method


# virtual methods
.method public getComic()Lcom/picacomic/fregata/objects/ComicDetailObject;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->comic:Lcom/picacomic/fregata/objects/ComicDetailObject;

    return-object v0
.end method

.method public setComic(Lcom/picacomic/fregata/objects/ComicDetailObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->comic:Lcom/picacomic/fregata/objects/ComicDetailObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicDetailResponse{comic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/ComicDetailResponse;->comic:Lcom/picacomic/fregata/objects/ComicDetailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
