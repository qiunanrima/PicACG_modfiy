.class public Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;
.super Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;
.source "ImageAction.java"


# instance fields
.field from:Ljava/lang/String;

.field toggle:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-boolean p3, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->toggle:Z

    .line 17
    iput-object p4, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->from:Ljava/lang/String;

    return-object v0
.end method

.method public isToggle()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->toggle:Z

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->from:Ljava/lang/String;

    return-void
.end method

.method public setToggle(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->toggle:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageAction{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toggle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->toggle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ImageAction;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
