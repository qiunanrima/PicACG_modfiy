.class public Lcom/picacomic/fregata/objects/requests/CommentBody;
.super Ljava/lang/Object;
.source "CommentBody.java"


# instance fields
.field content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/CommentBody;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/picacomic/fregata/objects/requests/CommentBody;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/picacomic/fregata/objects/requests/CommentBody;->content:Ljava/lang/String;

    return-void
.end method
