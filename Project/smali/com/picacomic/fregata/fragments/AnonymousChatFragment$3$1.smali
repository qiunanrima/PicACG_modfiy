.class Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;
.super Ljava/lang/Object;
.source "AnonymousChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic kj:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;[Ljava/lang/Object;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;->kj:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    .line 264
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3$1;->kj:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$3;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->b(Lorg/json/JSONObject;)Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    sget-object v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getActionType()Ljava/lang/String;

    return-void
.end method
