.class public Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;
.super Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;
.source "ChangeTitleAction.java"


# instance fields
.field from:Ljava/lang/String;

.field title:Ljava/lang/String;

.field user:Ljava/lang/String;

.field user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/picacomic/fregata/objects/chatroomObjects/ChatroomSystemAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p3, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->title:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->from:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->from:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->title:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeTitleAction{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", from=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->from:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", user_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/chatroomObjects/ChangeTitleAction;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
