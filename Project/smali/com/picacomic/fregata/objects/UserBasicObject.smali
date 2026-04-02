.class public Lcom/picacomic/fregata/objects/UserBasicObject;
.super Ljava/lang/Object;
.source "UserBasicObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/picacomic/fregata/objects/UserBasicObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field character:Ljava/lang/String;

.field exp:I

.field gender:Ljava/lang/String;

.field level:I

.field name:Ljava/lang/String;

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Lcom/picacomic/fregata/objects/UserBasicObject$1;

    invoke-direct {v0}, Lcom/picacomic/fregata/objects/UserBasicObject$1;-><init>()V

    sput-object v0, Lcom/picacomic/fregata/objects/UserBasicObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    .line 256
    const-class v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/objects/UserProfileObject;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getExp()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    .line 47
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    .line 48
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    .line 49
    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    .line 35
    iput p5, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    .line 36
    iput p6, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    .line 37
    iput-boolean p7, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    .line 38
    iput-object p8, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    return v0
.end method

.method public setAvatar(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    return-void
.end method

.method public setExp(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserBasicObject{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", exp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->character:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->exp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->verified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserBasicObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
