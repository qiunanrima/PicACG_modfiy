.class Lcom/picacomic/fregata/fragments/ChatroomFragment$32$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$32;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mf:Lcom/picacomic/fregata/fragments/ChatroomFragment$32;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$32;[Ljava/lang/Object;)V
    .locals 0

    .line 1610
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$32$1;->mf:Lcom/picacomic/fregata/fragments/ChatroomFragment$32;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$32$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1613
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$32$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    .line 1615
    sget-object v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiveNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "message"

    .line 1617
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "message"

    .line 1618
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1624
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$32$1;->mf:Lcom/picacomic/fregata/fragments/ChatroomFragment$32;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$32;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->Q(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 1621
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
