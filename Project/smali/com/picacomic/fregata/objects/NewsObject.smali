.class public Lcom/picacomic/fregata/objects/NewsObject;
.super Ljava/lang/Object;
.source "NewsObject.java"


# instance fields
.field description:Ljava/lang/String;

.field image:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/ThumbnailObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NewsObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 16
    iput-object p2, p0, Lcom/picacomic/fregata/objects/NewsObject;->title:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/picacomic/fregata/objects/NewsObject;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NewsObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NewsObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/objects/NewsObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NewsObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NewsObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/picacomic/fregata/objects/NewsObject;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsObject{image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/NewsObject;->image:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/NewsObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/NewsObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
