.class public Lcom/picacomic/fregata/objects/responses/ActionResponse;
.super Ljava/lang/Object;
.source "ActionResponse.java"


# instance fields
.field action:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ActionResponse;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ActionResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ActionResponse;->action:Ljava/lang/String;

    return-void
.end method
