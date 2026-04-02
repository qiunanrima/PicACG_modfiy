.class public Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;
.super Ljava/lang/Object;
.source "ForgotPasswordResponse.java"


# instance fields
.field question1:Ljava/lang/String;

.field question2:Ljava/lang/String;

.field question3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question1:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question2:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQuestion1()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question1:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion2()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question2:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion3()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question3:Ljava/lang/String;

    return-object v0
.end method

.method public setQuestion1(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question1:Ljava/lang/String;

    return-void
.end method

.method public setQuestion2(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question2:Ljava/lang/String;

    return-void
.end method

.method public setQuestion3(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question3:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForgotPasswordResponse{question1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", question2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", question3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->question3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
