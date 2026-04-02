.class public Lcom/picacomic/fregata/objects/GameDetailObject;
.super Ljava/lang/Object;
.source "GameDetailObject.java"


# instance fields
.field adult:Z

.field android:Z

.field androidLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field androidSize:F

.field commentsCount:I

.field description:Ljava/lang/String;

.field downloadsCount:I

.field gameId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field ios:Z

.field iosLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iosSize:F

.field isLiked:Z

.field likesCount:I

.field publisher:Ljava/lang/String;

.field screenshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ">;"
        }
    .end annotation
.end field

.field suggest:Z

.field title:Ljava/lang/String;

.field updateContent:Ljava/lang/String;

.field version:Ljava/lang/String;

.field videoLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZZFFLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZZZZZFF",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 62
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->gameId:Ljava/lang/String;

    move-object v1, p2

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->title:Ljava/lang/String;

    move-object v1, p3

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->version:Ljava/lang/String;

    move-object v1, p4

    .line 65
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->publisher:Ljava/lang/String;

    move-object v1, p5

    .line 66
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-object v1, p6

    .line 67
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->updateContent:Ljava/lang/String;

    move-object v1, p7

    .line 68
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->description:Ljava/lang/String;

    move-object v1, p8

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->videoLink:Ljava/lang/String;

    move v1, p9

    .line 70
    iput v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->downloadsCount:I

    move v1, p10

    .line 71
    iput v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->commentsCount:I

    move v1, p11

    .line 72
    iput v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->likesCount:I

    move v1, p12

    .line 73
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->isLiked:Z

    move v1, p13

    .line 74
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->suggest:Z

    move/from16 v1, p14

    .line 75
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->adult:Z

    move/from16 v1, p15

    .line 76
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->ios:Z

    move/from16 v1, p16

    .line 77
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->android:Z

    move/from16 v1, p17

    .line 78
    iput v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosSize:F

    move/from16 v1, p18

    .line 79
    iput v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidSize:F

    move-object/from16 v1, p19

    .line 80
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosLinks:Ljava/util/ArrayList;

    move-object/from16 v1, p20

    .line 81
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidLinks:Ljava/util/ArrayList;

    move-object/from16 v1, p21

    .line 82
    iput-object v1, v0, Lcom/picacomic/fregata/objects/GameDetailObject;->screenshots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAndroidLinks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidLinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAndroidSize()F
    .locals 1

    .line 222
    iget v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidSize:F

    return v0
.end method

.method public getCommentsCount()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->commentsCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadsCount()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->downloadsCount:I

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getIosLinks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosLinks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIosSize()F
    .locals 1

    .line 214
    iget v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosSize:F

    return v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->likesCount:I

    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshots()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->screenshots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->updateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLink()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->videoLink:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->adult:Z

    return v0
.end method

.method public isAndroid()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->android:Z

    return v0
.end method

.method public isIos()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->ios:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->isLiked:Z

    return v0
.end method

.method public isSuggest()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->suggest:Z

    return v0
.end method

.method public setAdult(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->adult:Z

    return-void
.end method

.method public setAndroid(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->android:Z

    return-void
.end method

.method public setAndroidLinks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidLinks:Ljava/util/ArrayList;

    return-void
.end method

.method public setAndroidSize(F)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidSize:F

    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->commentsCount:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setDownloadsCount(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->downloadsCount:I

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setIos(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->ios:Z

    return-void
.end method

.method public setIosLinks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosLinks:Ljava/util/ArrayList;

    return-void
.end method

.method public setIosSize(F)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosSize:F

    return-void
.end method

.method public setLiked(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->isLiked:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->likesCount:I

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->publisher:Ljava/lang/String;

    return-void
.end method

.method public setScreenshots(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ">;)V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->screenshots:Ljava/util/ArrayList;

    return-void
.end method

.method public setSuggest(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->suggest:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateContent(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->updateContent:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->version:Ljava/lang/String;

    return-void
.end method

.method public setVideoLink(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->videoLink:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameDetailObject{gameId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", publisher=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", icon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->icon:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", updateContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->updateContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->videoLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", downloadsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->downloadsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commentsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->commentsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLiked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->isLiked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", suggest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->suggest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->adult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->ios:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", android="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->android:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iosSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", androidSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", iosLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->iosLinks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->androidLinks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/GameDetailObject;->screenshots:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
