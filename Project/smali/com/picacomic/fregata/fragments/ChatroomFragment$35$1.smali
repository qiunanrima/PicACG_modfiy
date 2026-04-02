.class Lcom/picacomic/fregata/fragments/ChatroomFragment$35$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$35;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mh:Lcom/picacomic/fregata/fragments/ChatroomFragment$35;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$35;[Ljava/lang/Object;)V
    .locals 0

    .line 1659
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$35$1;->mh:Lcom/picacomic/fregata/fragments/ChatroomFragment$35;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$35$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1662
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$35$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, ""

    :try_start_0
    const-string v2, "connections"

    .line 1665
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "connections"

    .line 1666
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$35$1;->mh:Lcom/picacomic/fregata/fragments/ChatroomFragment$35;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$35;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->S(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 1669
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
