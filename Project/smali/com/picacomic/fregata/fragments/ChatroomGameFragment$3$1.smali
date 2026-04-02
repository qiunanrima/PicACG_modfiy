.class Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3$1;
.super Ljava/lang/Object;
.source "ChatroomGameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mN:Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;[Ljava/lang/Object;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3$1;->mN:Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    const-string v2, "message"

    .line 145
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "message"

    .line 146
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3$1;->mN:Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomGameFragment$3;->mK:Lcom/picacomic/fregata/fragments/ChatroomGameFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomGameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "get Confirmed"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
