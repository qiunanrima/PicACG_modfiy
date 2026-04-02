.class Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4$1;
.super Ljava/lang/Object;
.source "AnonymousChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic kk:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;[Ljava/lang/Object;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4$1;->kk:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    .line 284
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4$1;->kk:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->b(Lorg/json/JSONObject;)Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    sget-object v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESPONSE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getResponseType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4$1;->kk:Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$4;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getResponseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnonymousChatActionDataObject;->getData()Lcom/picacomic/fregata/objects/AnonymousChatDataObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/AnonymousChatDataObject;)V

    :cond_1
    return-void
.end method
