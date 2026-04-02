.class public Lcom/picacomic/fregata/objects/ComicPageObject;
.super Ljava/lang/Object;
.source "ComicPageObject.java"


# instance fields
.field comicPageId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field media:Lcom/picacomic/fregata/objects/ThumbnailObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->comicPageId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->media:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public getComicPageId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->comicPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->media:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public setComicPageId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->comicPageId:Ljava/lang/String;

    return-void
.end method

.method public setMedia(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->media:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicPageObject{comicPageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->comicPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicPageObject;->media:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
