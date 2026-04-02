.class Lcom/picacomic/fregata/services/ChatroomService$2$1;
.super Ljava/lang/Object;
.source "ChatroomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/services/ChatroomService$2;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic tJ:Lcom/picacomic/fregata/services/ChatroomService$2;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/services/ChatroomService$2;[Ljava/lang/Object;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$2$1;->tJ:Lcom/picacomic/fregata/services/ChatroomService$2;

    iput-object p2, p0, Lcom/picacomic/fregata/services/ChatroomService$2$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$2$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, ""

    :try_start_0
    const-string v2, "connections"

    .line 637
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "connections"

    .line 638
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$2$1;->tJ:Lcom/picacomic/fregata/services/ChatroomService$2;

    iget-object v0, v0, Lcom/picacomic/fregata/services/ChatroomService$2;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object v0, v0, Lcom/picacomic/fregata/services/ChatroomService;->textView_totalUserCount:Landroid/widget/TextView;

    const v2, 0x7f0f00bb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 646
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$2$1;->tJ:Lcom/picacomic/fregata/services/ChatroomService$2;

    iget-object v0, v0, Lcom/picacomic/fregata/services/ChatroomService$2;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    iget-object v0, v0, Lcom/picacomic/fregata/services/ChatroomService;->textView_totalUserCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    .line 641
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
