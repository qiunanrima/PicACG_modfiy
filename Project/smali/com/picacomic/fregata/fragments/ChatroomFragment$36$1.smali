.class Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$36;[Ljava/lang/Object;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1686
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "character"

    .line 1689
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const-string v2, "character"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$36$1;->mi:Lcom/picacomic/fregata/fragments/ChatroomFragment$36;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$36;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 1693
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
