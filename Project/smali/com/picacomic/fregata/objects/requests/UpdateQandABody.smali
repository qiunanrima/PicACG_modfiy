.class public Lcom/picacomic/fregata/objects/requests/UpdateQandABody;
.super Ljava/lang/Object;
.source "UpdateQandABody.java"


# instance fields
.field answer1:Ljava/lang/String;

.field answer2:Ljava/lang/String;

.field answer3:Ljava/lang/String;

.field question1:Ljava/lang/String;

.field question2:Ljava/lang/String;

.field question3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question1:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question2:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question3:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer1:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer2:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnswer1()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer1:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswer2()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer2:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswer3()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer3:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion1()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question1:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion2()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question2:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion3()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question3:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer1(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer1:Ljava/lang/String;

    return-void
.end method

.method public setAnswer2(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer2:Ljava/lang/String;

    return-void
.end method

.method public setAnswer3(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer3:Ljava/lang/String;

    return-void
.end method

.method public setQuestion1(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question1:Ljava/lang/String;

    return-void
.end method

.method public setQuestion2(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question2:Ljava/lang/String;

    return-void
.end method

.method public setQuestion3(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question3:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateQandABody{question1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", question2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", question3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->question3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", answer1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", answer2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", answer3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;->answer3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
