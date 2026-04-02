.class public Lcom/picacomic/fregata/objects/requests/SignInBody;
.super Ljava/lang/Object;
.source "SignInBody.java"


# instance fields
.field email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field password:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/SignInBody;->email:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/picacomic/fregata/objects/requests/SignInBody;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/SignInBody;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/SignInBody;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/SignInBody;->email:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/SignInBody;->password:Ljava/lang/String;

    return-void
.end method
