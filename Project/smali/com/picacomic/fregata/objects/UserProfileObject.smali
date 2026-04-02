.class public Lcom/picacomic/fregata/objects/UserProfileObject;
.super Ljava/lang/Object;
.source "UserProfileObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/picacomic/fregata/objects/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activation_date"
    .end annotation
.end field

.field avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field birthday:Ljava/lang/String;

.field character:Ljava/lang/String;

.field characters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field email:Ljava/lang/String;

.field exp:I

.field gender:Ljava/lang/String;

.field isPunched:Z

.field level:I

.field name:Ljava/lang/String;

.field role:Ljava/lang/String;

.field slogan:Ljava/lang/String;

.field title:Ljava/lang/String;

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_id"
    .end annotation
.end field

.field verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 356
    new-instance v0, Lcom/picacomic/fregata/objects/UserProfileObject$1;

    invoke-direct {v0}, Lcom/picacomic/fregata/objects/UserProfileObject$1;-><init>()V

    sput-object v0, Lcom/picacomic/fregata/objects/UserProfileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->userId:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->email:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->name:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->title:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->birthday:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->gender:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->slogan:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->role:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->character:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->activationDate:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->exp:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->level:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched:Z

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->verified:Z

    .line 353
    const-class v0, Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ThumbnailObject;

    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IIZZLcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 2
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IIZZ",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 54
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->userId:Ljava/lang/String;

    move-object v1, p2

    .line 55
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->email:Ljava/lang/String;

    move-object v1, p3

    .line 56
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->name:Ljava/lang/String;

    move-object v1, p4

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->title:Ljava/lang/String;

    move-object v1, p5

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->birthday:Ljava/lang/String;

    move-object v1, p6

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->gender:Ljava/lang/String;

    move-object v1, p7

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->slogan:Ljava/lang/String;

    move-object v1, p8

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->role:Ljava/lang/String;

    move-object v1, p9

    .line 62
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->character:Ljava/lang/String;

    move-object v1, p10

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    move-object v1, p11

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->activationDate:Ljava/lang/String;

    move v1, p12

    .line 65
    iput v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->exp:I

    move v1, p13

    .line 66
    iput v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->level:I

    move/from16 v1, p14

    .line 67
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched:Z

    move/from16 v1, p15

    .line 68
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->verified:Z

    move-object/from16 v1, p16

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/objects/UserProfileObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivationDate()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->activationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCharactersStringArray()[Ljava/lang/String;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->exp:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isPunched()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->verified:Z

    return v0
.end method

.method public setActivationDate(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->activationDate:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Lcom/picacomic/fregata/objects/ThumbnailObject;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->character:Ljava/lang/String;

    return-void
.end method

.method public setCharacters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->email:Ljava/lang/String;

    return-void
.end method

.method public setExp(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->exp:I

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->gender:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->level:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setPunched(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched:Z

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->role:Ljava/lang/String;

    return-void
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->slogan:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->verified:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileObject{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthday=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", slogan=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", role=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->role:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->character:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", characters=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activationDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->activationDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", exp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->exp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPunched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->slogan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->role:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->character:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->characters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 329
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->activationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->exp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 333
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->verified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 334
    iget-object v0, p0, Lcom/picacomic/fregata/objects/UserProfileObject;->avatar:Lcom/picacomic/fregata/objects/ThumbnailObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
