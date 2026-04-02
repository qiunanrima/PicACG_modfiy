.class Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$28;[Ljava/lang/Object;)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1415
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, ""

    const-string v2, ""

    :try_start_0
    const-string v3, "user_id"

    .line 1426
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "user_id"

    .line 1427
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "title"

    .line 1430
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "title"

    .line 1431
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_3

    .line 1439
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1440
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28$1;->mb:Lcom/picacomic/fregata/fragments/ChatroomFragment$28;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$28;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setTitle(Ljava/lang/String;)V

    .line 1442
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Testing HERE ID= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  title = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 1434
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
