.class public Lcom/picacomic/fregata/objects/SingleImageTextViewObject;
.super Ljava/lang/Object;
.source "SingleImageTextViewObject.java"


# instance fields
.field image:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/ThumbnailObject;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 15
    iput-object p2, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImage()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileComicImageWithTextViewObject{image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/SingleImageTextViewObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
