.class public Lcom/picacomic/fregata/objects/requests/UserIdBody;
.super Ljava/lang/Object;
.source "UserIdBody.java"


# instance fields
.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UserIdBody;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/UserIdBody;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/UserIdBody;->userId:Ljava/lang/String;

    return-void
.end method
