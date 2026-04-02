.class public Lcom/picacomic/fregata/objects/ComicDetailObject;
.super Ljava/lang/Object;
.source "ComicDetailObject.java"


# instance fields
.field allowComment:Z

.field allowDownload:Z

.field author:Ljava/lang/String;

.field categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field chineseTeam:Ljava/lang/String;

.field comicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field commentsCount:I

.field createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field creator:Lcom/picacomic/fregata/objects/CreatorObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_creator"
    .end annotation
.end field

.field description:Ljava/lang/String;

.field episodeCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epsCount"
    .end annotation
.end field

.field finished:Z

.field isFavourite:Z

.field isLiked:Z

.field likesCount:I

.field pagesCount:I

.field tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;

.field updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field

.field viewsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/CreatorObject;Lcom/picacomic/fregata/objects/ThumbnailObject;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIIIZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/picacomic/fregata/objects/CreatorObject;",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IIIIIZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 100
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->comicId:Ljava/lang/String;

    move-object v1, p2

    .line 101
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->title:Ljava/lang/String;

    move-object v1, p3

    .line 102
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->author:Ljava/lang/String;

    move-object v1, p4

    .line 103
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->description:Ljava/lang/String;

    move-object v1, p5

    .line 104
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->chineseTeam:Ljava/lang/String;

    move-object v1, p6

    .line 105
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->creator:Lcom/picacomic/fregata/objects/CreatorObject;

    move-object v1, p7

    .line 106
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-object v1, p8

    .line 107
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->categories:Ljava/util/ArrayList;

    move-object v1, p9

    .line 108
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->tags:Ljava/util/ArrayList;

    move v1, p10

    .line 109
    iput v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->commentsCount:I

    move v1, p11

    .line 110
    iput v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->pagesCount:I

    move v1, p12

    .line 111
    iput v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->episodeCount:I

    move v1, p13

    .line 112
    iput v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->likesCount:I

    move/from16 v1, p14

    .line 113
    iput v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->viewsCount:I

    move/from16 v1, p15

    .line 114
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->finished:Z

    move/from16 v1, p16

    .line 115
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite:Z

    move/from16 v1, p17

    .line 116
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked:Z

    move/from16 v1, p18

    .line 117
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowDownload:Z

    move/from16 v1, p19

    .line 118
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowComment:Z

    move-object/from16 v1, p20

    .line 119
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->updatedAt:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 120
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ComicDetailObject;->createdAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChineseTeam()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->chineseTeam:Ljava/lang/String;

    return-object v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->commentsCount:I

    return v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Lcom/picacomic/fregata/objects/CreatorObject;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->creator:Lcom/picacomic/fregata/objects/CreatorObject;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeCount()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->episodeCount:I

    return v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->likesCount:I

    return v0
.end method

.method public getPagesCount()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->pagesCount:I

    return v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getViewsCount()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->viewsCount:I

    return v0
.end method

.method public isAllowComment()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowComment:Z

    return v0
.end method

.method public isAllowDownload()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowDownload:Z

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->finished:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked:Z

    return v0
.end method

.method public setAllowComment(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowComment:Z

    return-void
.end method

.method public setAllowDownload(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowDownload:Z

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->author:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method public setChineseTeam(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->chineseTeam:Ljava/lang/String;

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->commentsCount:I

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCreator(Lcom/picacomic/fregata/objects/CreatorObject;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->creator:Lcom/picacomic/fregata/objects/CreatorObject;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeCount(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->episodeCount:I

    return-void
.end method

.method public setFavourite(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite:Z

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->finished:Z

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->likesCount:I

    return-void
.end method

.method public setPagesCount(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->pagesCount:I

    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->tags:Ljava/util/ArrayList;

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public setViewsCount(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->viewsCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicDetailObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", chineseTeam=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->chineseTeam:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creator="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->creator:Lcom/picacomic/fregata/objects/CreatorObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", thumb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", categories="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", commentsCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->commentsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pagesCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->pagesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", episodeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->episodeCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", likesCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->likesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewsCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->viewsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", finished="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->finished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFavourite="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLiked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowDownload:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowComment="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowComment:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWithComicDetailObject(Lcom/picacomic/fregata/objects/ComicDetailObject;)V
    .locals 1

    .line 124
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->comicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->comicId:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->title:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->author:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->author:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->description:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->chineseTeam:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->chineseTeam:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->creator:Lcom/picacomic/fregata/objects/CreatorObject;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->creator:Lcom/picacomic/fregata/objects/CreatorObject;

    .line 130
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 131
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->categories:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->categories:Ljava/util/ArrayList;

    .line 132
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->tags:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->tags:Ljava/util/ArrayList;

    .line 133
    iget v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->commentsCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->commentsCount:I

    .line 134
    iget v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->pagesCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->pagesCount:I

    .line 135
    iget v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->episodeCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->episodeCount:I

    .line 136
    iget v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->likesCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->likesCount:I

    .line 137
    iget v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->viewsCount:I

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->viewsCount:I

    .line 138
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->finished:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->finished:Z

    .line 139
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite:Z

    .line 140
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked:Z

    .line 141
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowDownload:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowDownload:Z

    .line 142
    iget-boolean v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowComment:Z

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->allowComment:Z

    .line 143
    iget-object v0, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->updatedAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->updatedAt:Ljava/lang/String;

    .line 144
    iget-object p1, p1, Lcom/picacomic/fregata/objects/ComicDetailObject;->createdAt:Ljava/lang/String;

    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicDetailObject;->createdAt:Ljava/lang/String;

    return-void
.end method
