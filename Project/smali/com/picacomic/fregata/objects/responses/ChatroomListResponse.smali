.class public Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;
.super Ljava/lang/Object;
.source "ChatroomListResponse.java"


# instance fields
.field chatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->chatList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChatList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->chatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setChatList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;->chatList:Ljava/util/ArrayList;

    return-void
.end method
