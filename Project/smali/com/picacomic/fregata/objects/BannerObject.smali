.class public Lcom/picacomic/fregata/objects/BannerObject;
.super Ljava/lang/Object;
.source "BannerObject.java"


# instance fields
.field bannerId:Ljava/lang/String;

.field comicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_comic"
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_game"
    .end annotation
.end field

.field link:Ljava/lang/String;

.field shortDescription:Ljava/lang/String;

.field thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->bannerId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/picacomic/fregata/objects/BannerObject;->title:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/picacomic/fregata/objects/BannerObject;->type:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/picacomic/fregata/objects/BannerObject;->shortDescription:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/picacomic/fregata/objects/BannerObject;->gameId:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/picacomic/fregata/objects/BannerObject;->comicId:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/picacomic/fregata/objects/BannerObject;->link:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/picacomic/fregata/objects/BannerObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public getBannerId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->bannerId:Ljava/lang/String;

    return-object v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/picacomic/fregata/objects/BannerObject;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->bannerId:Ljava/lang/String;

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->link:Ljava/lang/String;

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/picacomic/fregata/objects/BannerObject;->type:Ljava/lang/String;

    return-void
.end method
