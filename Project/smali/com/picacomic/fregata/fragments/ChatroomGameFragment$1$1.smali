.class Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;
.super Ljava/lang/Object;
.source "ChatroomGameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mL:Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;[Ljava/lang/Object;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;->mL:Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    const-string v2, "message"

    .line 94
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "message"

    .line 95
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->TAG:Ljava/lang/String;

    const-string v2, "get Profile"

    invoke-static {v0, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1$1;->mL:Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$1;->mK:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "get profile"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
