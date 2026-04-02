.class public Lcom/picacomic/fregata/objects/LeaderboardComicListObject;
.super Ljava/lang/Object;
.source "LeaderboardComicListObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/picacomic/fregata/objects/LeaderboardComicListObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field comicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field episodeCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epsCount"
    .end annotation
.end field

.field finished:Z

.field leaderboardCount:I

.field likesCount:I

.field pagesCount:I

.field thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;

.field viewsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject$1;

    invoke-direct {v0}, Lcom/picacomic/fregata/objects/LeaderboardComicListObject$1;-><init>()V

    sput-object v0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->comicId:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->title:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->author:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->likesCount:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->pagesCount:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->episodeCount:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->viewsCount:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->leaderboardCount:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->finished:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->categories:Ljava/util/ArrayList;

    .line 189
    const-class v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/util/ArrayList;Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->comicId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->title:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->author:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->likesCount:I

    .line 43
    iput p5, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->pagesCount:I

    .line 44
    iput p6, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->episodeCount:I

    .line 45
    iput p7, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->viewsCount:I

    .line 46
    iput p8, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->leaderboardCount:I

    .line 47
    iput-boolean p9, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->finished:Z

    .line 48
    iput-object p10, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->categories:Ljava/util/ArrayList;

    .line 49
    iput-object p11, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->author:Ljava/lang/String;

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

    .line 125
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeCount()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->episodeCount:I

    return v0
.end method

.method public getLeaderboardCount()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->leaderboardCount:I

    return v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->likesCount:I

    return v0
.end method

.method public getPagesCount()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->pagesCount:I

    return v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewsCount()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->viewsCount:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->finished:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->author:Ljava/lang/String;

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

    .line 129
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeCount(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->episodeCount:I

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->finished:Z

    return-void
.end method

.method public setLeaderboardCount(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->leaderboardCount:I

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->likesCount:I

    return-void
.end method

.method public setPagesCount(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->pagesCount:I

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewsCount(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->viewsCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LeaderboardComicListObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->pagesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->episodeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->viewsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leaderboardCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->leaderboardCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->finished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->comicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->likesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->pagesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->episodeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->viewsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->leaderboardCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->finished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/picacomic/fregata/objects/LeaderboardComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
