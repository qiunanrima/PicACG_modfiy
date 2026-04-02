.class public Lcom/picacomic/fregata/objects/ChatMessageObject;
.super Lcom/picacomic/fregata/objects/ChatBaseObject;
.source "ChatMessageObject.java"


# instance fields
.field public activation_date:Ljava/lang/String;

.field public at:Ljava/lang/String;

.field public audio:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public block_user_id:Ljava/lang/String;

.field public character:Ljava/lang/String;

.field public characters:[Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public event_colors:[Ljava/lang/String;

.field public event_icon:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public level:I

.field public message:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public reply:Ljava/lang/String;

.field public reply_name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public to:Lcom/picacomic/fregata/objects/ChatroomToObject;

.field public type:I

.field public unique_id:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public verified:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/picacomic/fregata/objects/ChatBaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 59
    invoke-direct {p0}, Lcom/picacomic/fregata/objects/ChatBaseObject;-><init>()V

    move-object v1, p1

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    move-object v1, p2

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->unique_id:Ljava/lang/String;

    move v1, p3

    .line 62
    iput v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->level:I

    move-object v1, p4

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->email:Ljava/lang/String;

    move-object v1, p5

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    move-object v1, p6

    .line 65
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->name:Ljava/lang/String;

    move-object v1, p7

    .line 66
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->title:Ljava/lang/String;

    move-object v1, p8

    .line 67
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->gender:Ljava/lang/String;

    move-object v1, p9

    .line 68
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->platform:Ljava/lang/String;

    move-object v1, p10

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->activation_date:Ljava/lang/String;

    move-object v1, p11

    .line 70
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->at:Ljava/lang/String;

    move-object v1, p12

    .line 71
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    move-object v1, p13

    .line 72
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 73
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->message:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 74
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->image:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 75
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->audio:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 76
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->block_user_id:Ljava/lang/String;

    move/from16 v1, p18

    .line 77
    iput v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    move/from16 v1, p19

    .line 78
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->verified:Z

    move-object/from16 v1, p20

    .line 79
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->character:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 80
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->characters:[Ljava/lang/String;

    move-object/from16 v1, p22

    .line 81
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 82
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_colors:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 83
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->to:Lcom/picacomic/fregata/objects/ChatroomToObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/picacomic/fregata/objects/ChatroomToObject;)V
    .locals 2

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Lcom/picacomic/fregata/objects/ChatBaseObject;-><init>()V

    move-object v1, p1

    .line 87
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    move-object v1, p2

    .line 88
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->unique_id:Ljava/lang/String;

    move v1, p3

    .line 89
    iput v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->level:I

    move-object v1, p4

    .line 90
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->email:Ljava/lang/String;

    move-object v1, p5

    .line 91
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    move-object v1, p6

    .line 92
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->name:Ljava/lang/String;

    move-object v1, p7

    .line 93
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->title:Ljava/lang/String;

    move-object v1, p8

    .line 94
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->gender:Ljava/lang/String;

    move-object v1, p9

    .line 95
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->platform:Ljava/lang/String;

    move-object v1, p10

    .line 96
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->activation_date:Ljava/lang/String;

    move-object v1, p11

    .line 97
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->at:Ljava/lang/String;

    move-object v1, p12

    .line 98
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    move-object v1, p13

    .line 99
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->message:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 101
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->image:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 102
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->audio:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 103
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->block_user_id:Ljava/lang/String;

    move/from16 v1, p18

    .line 104
    iput v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    move/from16 v1, p19

    .line 105
    iput-boolean v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->verified:Z

    move-object/from16 v1, p20

    .line 106
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->character:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 107
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->characters:[Ljava/lang/String;

    move-object/from16 v1, p22

    .line 108
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 109
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_colors:[Ljava/lang/String;

    move-object/from16 v1, p24

    .line 110
    iput-object v1, v0, Lcom/picacomic/fregata/objects/ChatMessageObject;->to:Lcom/picacomic/fregata/objects/ChatroomToObject;

    return-void
.end method


# virtual methods
.method public getActivationDate()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->activation_date:Ljava/lang/String;

    return-object v0
.end method

.method public getAt()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->at:Ljava/lang/String;

    return-object v0
.end method

.method public getAudio()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->audio:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockUserId()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->block_user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacters()[Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->characters:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEventColors()[Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_colors:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventIcon()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->level:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReply_name()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lcom/picacomic/fregata/objects/ChatroomToObject;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->to:Lcom/picacomic/fregata/objects/ChatroomToObject;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->unique_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->verified:Z

    return v0
.end method

.method public setActivationDate(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->activation_date:Ljava/lang/String;

    return-void
.end method

.method public setAt(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->at:Ljava/lang/String;

    return-void
.end method

.method public setAudio(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->audio:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBlockUserId(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->block_user_id:Ljava/lang/String;

    return-void
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->character:Ljava/lang/String;

    return-void
.end method

.method public setCharacters([Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->characters:[Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->email:Ljava/lang/String;

    return-void
.end method

.method public setEventColors([Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_colors:[Ljava/lang/String;

    return-void
.end method

.method public setEventIcon(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->gender:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->image:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->level:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->message:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->platform:Ljava/lang/String;

    return-void
.end method

.method public setReply(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply:Ljava/lang/String;

    return-void
.end method

.method public setReplyName(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    return-void
.end method

.method public setReply_name(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->title:Ljava/lang/String;

    return-void
.end method

.method public setTo(Lcom/picacomic/fregata/objects/ChatroomToObject;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->to:Lcom/picacomic/fregata/objects/ChatroomToObject;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->unique_id:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->verified:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatMessageObject{user_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unique_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->unique_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", platform=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->platform:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activation_date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->activation_date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", at=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->at:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reply_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reply=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->reply:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", image=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audio=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->audio:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", block_user_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->block_user_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", level=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", verified=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->verified:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->character:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", characters=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->characters:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", event_icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", event_colors=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->event_colors:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/ChatMessageObject;->to:Lcom/picacomic/fregata/objects/ChatroomToObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
