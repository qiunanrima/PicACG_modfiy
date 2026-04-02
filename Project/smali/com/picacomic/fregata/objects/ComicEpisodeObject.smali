.class public Lcom/picacomic/fregata/objects/ComicEpisodeObject;
.super Ljava/lang/Object;
.source "ComicEpisodeObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field episodeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field order:I

.field selected:Z

.field status:I

.field title:Ljava/lang/String;

.field updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject$1;

    invoke-direct {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject$1;-><init>()V

    sput-object v0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->episodeId:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->title:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->order:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->updatedAt:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->status:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->selected:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->episodeId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->title:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->order:I

    .line 30
    iput-object p4, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->updatedAt:Ljava/lang/String;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->status:I

    .line 32
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->selected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->order:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->selected:Z

    return v0
.end method

.method public setEpisodeId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->episodeId:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->order:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->selected:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComicEpisodeObject{episodeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", order="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->order:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->episodeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->order:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean p2, p0, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->selected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
