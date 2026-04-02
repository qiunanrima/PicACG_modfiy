.class public Lcom/picacomic/fregata/objects/requests/RegisterBody;
.super Ljava/lang/Object;
.source "RegisterBody.java"


# instance fields
.field answer1:Ljava/lang/String;

.field answer2:Ljava/lang/String;

.field answer3:Ljava/lang/String;

.field birthday:Ljava/lang/String;

.field email:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field question1:Ljava/lang/String;

.field question2:Ljava/lang/String;

.field question3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->name:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->email:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->password:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->birthday:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->gender:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question1:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question2:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question3:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer1:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer2:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnswer1()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer1:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswer2()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer2:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswer3()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer3:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion1()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question1:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion2()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question2:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion3()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question3:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer1(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer1:Ljava/lang/String;

    return-void
.end method

.method public setAnswer2(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer2:Ljava/lang/String;

    return-void
.end method

.method public setAnswer3(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->answer3:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->email:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->gender:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->password:Ljava/lang/String;

    return-void
.end method

.method public setQuestion1(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question1:Ljava/lang/String;

    return-void
.end method

.method public setQuestion2(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question2:Ljava/lang/String;

    return-void
.end method

.method public setQuestion3(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/RegisterBody;->question3:Ljava/lang/String;

    return-void
.end method
