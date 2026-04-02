.class public Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;
.super Ljava/lang/Object;
.source "ProfileCommentsResponse.java"


# instance fields
.field comments:Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    return-void
.end method


# virtual methods
.method public getComments()Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    return-object v0
.end method

.method public setComments(Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsResponse;->comments:Lcom/picacomic/fregata/objects/responses/DataClass/ProfileCommentsResponse/ProfileCommentsData;

    return-void
.end method
