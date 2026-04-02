.class public Lcom/picacomic/fregata/objects/ComicListObject;
.super Ljava/lang/Object;
.source "ComicListObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/picacomic/fregata/objects/ComicListObject;",
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

.field likesCount:I

.field pagesCount:I

.field thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject$1;

    invoke-direct {v0}, Lcom/picacomic/fregata/objects/ComicListObject$1;-><init>()V

    sput-object v0, Lcom/picacomic/fregata/objects/ComicListObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    .line 82
    const-class v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getLikesCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    .line 65
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getPagesCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    .line 66
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getEpisodeCount()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    .line 67
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->isFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    .line 68
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getCategories()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DbComicDetailObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    const/4 v1, 0x1

    .line 41
    iput v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    .line 42
    iput v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    .line 43
    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    .line 44
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/ArrayList;Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

    .line 52
    iput p4, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    .line 53
    iput p5, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    .line 54
    iput p6, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    .line 55
    iput-boolean p7, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    .line 56
    iput-object p8, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    .line 57
    iput-object p9, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

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

    .line 114
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

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

    .line 154
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComicId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeCount()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    return v0
.end method

.method public getLikesCount()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    return v0
.end method

.method public getPagesCount()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    return v0
.end method

.method public getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

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

    .line 158
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method public setComicId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    return-void
.end method

.method public setEpisodeCount(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    return-void
.end method

.method public setFinished(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    return-void
.end method

.method public setLikesCount(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    return-void
.end method

.method public setPagesCount(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    return-void
.end method

.method public setThumb(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicListObject{comicId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->comicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->likesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->pagesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->episodeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->finished:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 199
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicListObject;->thumb:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
