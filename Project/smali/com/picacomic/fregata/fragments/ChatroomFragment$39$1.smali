.class Lcom/picacomic/fregata/fragments/ChatroomFragment$39$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$39;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic ml:Lcom/picacomic/fregata/fragments/ChatroomFragment$39;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$39;[Ljava/lang/Object;)V
    .locals 0

    .line 1756
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$39$1;->ml:Lcom/picacomic/fregata/fragments/ChatroomFragment$39;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$39$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    move-object/from16 v1, p0

    .line 1759
    iget-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$39$1;->ki:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    .line 1779
    new-instance v15, Lcom/picacomic/fregata/objects/ChatroomToObject;

    const-string v2, ""

    move-object/from16 v37, v3

    const-string v3, ""

    move-object/from16 v38, v4

    const-string v4, ""

    invoke-direct {v15, v2, v3, v4}, Lcom/picacomic/fregata/objects/ChatroomToObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "id"

    .line 1782
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "id"

    .line 1783
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, v37

    :goto_0
    const-string v2, "userId"

    .line 1785
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "userId"

    .line 1786
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v2, "user_id"

    .line 1788
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "user_id"

    .line 1789
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v3

    :goto_1
    const-string v2, "unique_id"

    .line 1791
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "unique_id"

    .line 1792
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_2

    :cond_3
    move-object/from16 v17, v38

    :goto_2
    const-string v2, "level"

    .line 1794
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "level"

    .line 1795
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    :goto_3
    const-string v2, "avatar"

    .line 1797
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "avatar"

    .line 1798
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object/from16 v20, v5

    const-string v2, "name"

    .line 1801
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v2, "title"

    .line 1803
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "title"

    .line 1804
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    move-object/from16 v22, v6

    const-string v2, "message"

    .line 1807
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "message"

    .line 1808
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    move-object/from16 v29, v7

    const-string v2, "verified"

    .line 1810
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "verified"

    .line 1811
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v32, v2

    goto :goto_4

    :cond_8
    const/16 v32, 0x0

    :goto_4
    const-string v2, "gender"

    .line 1813
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "gender"

    .line 1814
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_9
    move-object/from16 v23, v8

    const-string v2, "platform"

    .line 1816
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "platform"

    .line 1817
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_a
    move-object/from16 v24, v9

    const-string v2, "activation_date"

    .line 1819
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const-string v2, "activation_date"

    .line 1820
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_b
    move-object v2, v3

    :goto_5
    const-string v4, "activationDate"

    .line 1822
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v2, "activationDate"

    .line 1823
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    move-object/from16 v25, v2

    const-string v2, "at"

    .line 1825
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "at"

    .line 1826
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_d
    move-object/from16 v26, v10

    const-string v2, "reply_name"

    .line 1828
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "reply_name"

    .line 1829
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_e
    move-object/from16 v27, v11

    const-string v2, "reply"

    .line 1831
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "reply"

    .line 1832
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_f
    move-object/from16 v28, v12

    const-string v2, "email"

    .line 1834
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "email"

    .line 1835
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_10
    move-object/from16 v19, v13

    const-string v2, "block_user_id"

    .line 1837
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "block_user_id"

    .line 1838
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_11
    move-object/from16 v30, v14

    const-string v2, "to"

    .line 1840
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "to"

    .line 1841
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "name"

    .line 1845
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "name"

    .line 1846
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/picacomic/fregata/objects/ChatroomToObject;->setName(Ljava/lang/String;)V

    :cond_12
    const-string v4, "unique_id"

    .line 1847
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "unique_id"

    .line 1848
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/picacomic/fregata/objects/ChatroomToObject;->setName(Ljava/lang/String;)V

    :cond_13
    const-string v4, "user_id"

    .line 1849
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "user_id"

    .line 1850
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/picacomic/fregata/objects/ChatroomToObject;->setName(Ljava/lang/String;)V

    :cond_14
    const-string v2, "event_icon"

    .line 1853
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "event_icon"

    .line 1854
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v2

    goto :goto_6

    :cond_15
    move-object/from16 v35, v3

    :goto_6
    const-string v2, "event_colors"

    .line 1856
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "event_colors"

    .line 1857
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1858
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_17

    .line 1859
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1860
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 1861
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_16
    move-object/from16 v36, v4

    goto :goto_8

    :cond_17
    move-object/from16 v36, v3

    :goto_8
    const-string v2, "character"

    .line 1865
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "character"

    .line 1866
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v33, v0

    goto :goto_9

    :cond_18
    move-object/from16 v33, v3

    .line 1876
    :goto_9
    iget-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$39$1;->ml:Lcom/picacomic/fregata/fragments/ChatroomFragment$39;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$39;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    move-object v2, v15

    move-object v15, v0

    const/16 v31, 0x0

    move-object/from16 v34, v2

    invoke-virtual/range {v15 .. v36}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/picacomic/fregata/objects/ChatroomToObject;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 1869
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
