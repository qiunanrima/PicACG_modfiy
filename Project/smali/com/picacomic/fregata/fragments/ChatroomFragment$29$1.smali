.class Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$29;[Ljava/lang/Object;)V
    .locals 0

    .line 1458
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1462
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    const-string v2, "avatar"

    .line 1476
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "avatar"

    .line 1477
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v2, "name"

    .line 1480
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "name"

    .line 1481
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const-string v4, "character"

    .line 1484
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "character"

    .line 1485
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    const-string v5, "title"

    .line 1488
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "title"

    .line 1489
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v3

    :goto_2
    const-string v6, "level"

    .line 1492
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "level"

    .line 1493
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const-string v7, "event_icon"

    .line 1495
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "event_icon"

    .line 1496
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    move-object v7, v3

    :goto_4
    const-string v8, "event_colors"

    .line 1498
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "event_colors"

    .line 1499
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1500
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 1501
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1502
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 1503
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1516
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_b

    .line 1523
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object v2, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lm:Ljava/lang/String;

    .line 1524
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object v4, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lo:Ljava/lang/String;

    .line 1525
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object v5, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ln:Ljava/lang/String;

    .line 1526
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput v6, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lr:I

    .line 1527
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object v7, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lq:Ljava/lang/String;

    .line 1528
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iput-object v3, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lp:[Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1532
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setName(Ljava/lang/String;)V

    :cond_8
    if-eqz v4, :cond_9

    .line 1535
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 1538
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->setTitle(Ljava/lang/String;)V

    :cond_a
    if-lez v6, :cond_b

    .line 1541
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29$1;->mc:Lcom/picacomic/fregata/fragments/ChatroomFragment$29;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$29;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v6}, Lcom/picacomic/fregata/objects/UserProfileObject;->setLevel(I)V

    :cond_b
    return-void

    :catch_0
    move-exception v0

    .line 1512
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
