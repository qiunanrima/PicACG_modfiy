.class Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$31;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$31;[Ljava/lang/Object;)V
    .locals 0

    .line 1573
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1577
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    const-string v1, "Testing KICK"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, ""

    :try_start_0
    const-string v2, "message"

    .line 1590
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "message"

    .line 1591
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1599
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->onDetach()V

    .line 1600
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31$1;->me:Lcom/picacomic/fregata/fragments/ChatroomFragment$31;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$31;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void

    :catch_0
    move-exception v0

    .line 1594
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
