.class public Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;
.super Ljava/lang/Object;
.source "ChatroomGameEmitConfirm.java"


# instance fields
.field id:Ljava/lang/String;

.field options:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->options:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->options:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->id:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->options:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatroomGameEmitConfirm{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", options=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/chatroomGameObjects/listens/ChatroomGameEmitConfirm;->options:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
