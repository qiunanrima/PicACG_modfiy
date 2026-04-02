.class public Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;
.super Lcom/orm/d;
.source "DbComicDetailObject.java"


# instance fields
.field author:Ljava/lang/String;

.field categories:Ljava/lang/String;

.field chineseTeam:Ljava/lang/String;

.field comicId:Ljava/lang/String;

.field commentsCount:I

.field createdAt:Ljava/lang/String;

.field creatorAvatarFileServer:Ljava/lang/String;

.field creatorAvatarOriginalName:Ljava/lang/String;

.field creatorAvatarPath:Ljava/lang/String;

.field creatorGender:Ljava/lang/String;

.field creatorId:Ljava/lang/String;

.field creatorName:Ljava/lang/String;

.field description:Ljava/lang/String;

.field downloadStatus:I

.field downloadedAt:J

.field episodeCount:I

.field finished:Z

.field isFavourite:Z

.field isLiked:Z

.field lastViewTimestamp:J

.field likesCount:I

.field pagesCount:I

.field tags:Ljava/lang/String;

.field thumbFileServer:Ljava/lang/String;

.field thumbOriginalName:Ljava/lang/String;

.field thumbPath:Ljava/lang/String;

.field title:Ljava/lang/String;

.field updatedAt:Ljava/lang/String;

.field viewsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/ComicDetailObject;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getChineseTeam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    .line 136
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCommentsCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    .line 142
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getPagesCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    .line 143
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getEpisodeCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    .line 144
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getLikesCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    .line 145
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getViewsCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    .line 146
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    .line 147
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isFavourite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    .line 148
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->isLiked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    .line 149
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getUpdatedAt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicDetailObject;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->lastViewTimestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIIIZZZLjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IIIIIZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Lcom/orm/d;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    move-object v1, p7

    .line 87
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 93
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    .line 95
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v2, p15

    .line 96
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    move-object/from16 v2, p16

    .line 97
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    move/from16 v1, p17

    .line 100
    iput v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    move/from16 v1, p18

    .line 101
    iput v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    move/from16 v1, p19

    .line 102
    iput v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    move/from16 v1, p20

    .line 103
    iput v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    move/from16 v1, p21

    .line 104
    iput v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    move/from16 v1, p22

    .line 105
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    move/from16 v1, p23

    .line 106
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    move/from16 v1, p24

    .line 107
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    move-object/from16 v1, p25

    .line 108
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 109
    iput-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    move-wide/from16 v1, p27

    .line 110
    iput-wide v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->lastViewTimestamp:J

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseTeam()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    return-object v0
.end method

.method public getComicDetailObject()Lcom/picacomic/fregata/objects/ComicDetailObject;
    .locals 25

    move-object/from16 v0, p0

    .line 186
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 188
    new-instance v24, Lcom/picacomic/fregata/objects/ComicDetailObject;

    move-object/from16 v2, v24

    iget-object v3, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    iget-object v4, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    iget-object v5, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    iget-object v6, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    iget-object v7, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreator()Lcom/picacomic/fregata/objects/CreatorObject;

    move-result-object v8

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v9

    iget-object v10, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    const-class v11, Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v1, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    const-class v12, Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v1, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/ArrayList;

    iget v12, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    iget v13, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    iget v14, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    iget v15, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    iget v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    move/from16 v19, v1

    iget-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    move-object/from16 v23, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v23}, Lcom/picacomic/fregata/objects/ComicDetailObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/CreatorObject;Lcom/picacomic/fregata/objects/ThumbnailObject;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIIIZZZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v24
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    return v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Lcom/picacomic/fregata/objects/CreatorObject;
    .locals 5

    .line 227
    new-instance v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/picacomic/fregata/objects/ThumbnailObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/picacomic/fregata/objects/CreatorObject;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/picacomic/fregata/objects/CreatorObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V

    return-object v1
.end method

.method public getCreatorAvatarFileServer()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorAvatarOriginalName()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorAvatarPath()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorGender()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->downloadStatus:I

    return v0
.end method

.method public getDownloadedAt()J
    .locals 2

    .line 485
    iget-wide v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->downloadedAt:J

    return-wide v0
.end method

.method public getEpisodeCount()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    return v0
.end method

.method public getLastViewTimestamp()J
    .locals 2

    .line 477
    iget-wide v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->lastViewTimestamp:J

    return-wide v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    return v0
.end method

.method public getPagesCount()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 4

    .line 216
    new-instance v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/picacomic/fregata/objects/ThumbnailObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThumbFileServer()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbOriginalName()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getViewsCount()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    return-void
.end method

.method public setChineseTeam(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCreator(Lcom/picacomic/fregata/objects/CreatorObject;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/CreatorObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCreatorAvatarFileServer(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    return-void
.end method

.method public setCreatorAvatarOriginalName(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    return-void
.end method

.method public setCreatorAvatarPath(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    return-void
.end method

.method public setCreatorGender(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    return-void
.end method

.method public setCreatorId(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->downloadStatus:I

    return-void
.end method

.method public setDownloadedAt(J)V
    .locals 0

    .line 489
    iput-wide p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->downloadedAt:J

    return-void
.end method

.method public setEpisodeCount(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    return-void
.end method

.method public setFavourite(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    return-void
.end method

.method public setLastViewTimestamp(J)V
    .locals 0

    .line 481
    iput-wide p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->lastViewTimestamp:J

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    return-void
.end method

.method public setPagesCount(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 1

    .line 221
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getOriginalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    return-void
.end method

.method public setThumbFileServer(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    return-void
.end method

.method public setThumbOriginalName(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public setViewsCount(I)V
    .locals 0

    .line 433
    iput p1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbComicDetailObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", chineseTeam=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creatorId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creatorName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creatorGender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creatorAvatarFileServer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creatorAvatarPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", creatorAvatarOriginalName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbFileServer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbOriginalName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", categories=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", commentsCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pagesCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", episodeCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", likesCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", viewsCount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", finished=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isFavourite=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isLiked=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastViewTimestamp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->lastViewTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->downloadStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadedAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->downloadedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDbComicDetailObject(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->comicId:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->title:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->author:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->description:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getChineseTeam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->chineseTeam:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorId:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatorGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorGender:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatorAvatarFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarFileServer:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatorAvatarPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarPath:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatorAvatarOriginalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->creatorAvatarOriginalName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getThumbFileServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbFileServer:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbPath:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getThumbOriginalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->thumbOriginalName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCategories()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->categories:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getTags()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->tags:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCommentsCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->commentsCount:I

    .line 172
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getPagesCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->pagesCount:I

    .line 173
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getEpisodeCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->episodeCount:I

    .line 174
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getLikesCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->likesCount:I

    .line 175
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getViewsCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->viewsCount:I

    .line 176
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->finished:Z

    .line 177
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFavourite:Z

    .line 178
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isLiked:Z

    .line 179
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getUpdatedAt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->updatedAt:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->createdAt:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getLastViewTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->lastViewTimestamp:J

    return-void
.end method
