.class public Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;
.super Ljava/lang/Object;
.source "PostCommentData.java"


# instance fields
.field content:Ljava/lang/String;

.field user:Lcom/picacomic/fregata/objects/UserBasicObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/picacomic/fregata/objects/UserBasicObject;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->content:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->user:Lcom/picacomic/fregata/objects/UserBasicObject;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/picacomic/fregata/objects/UserBasicObject;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->user:Lcom/picacomic/fregata/objects/UserBasicObject;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->content:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/picacomic/fregata/objects/UserBasicObject;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->user:Lcom/picacomic/fregata/objects/UserBasicObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostCommentData{content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/PostCommentResponse/PostCommentData;->user:Lcom/picacomic/fregata/objects/UserBasicObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
