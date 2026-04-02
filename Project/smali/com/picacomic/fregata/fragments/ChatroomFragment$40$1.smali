.class Lcom/picacomic/fregata/fragments/ChatroomFragment$40$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$40;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ki:[Ljava/lang/Object;

.field final synthetic mm:Lcom/picacomic/fregata/fragments/ChatroomFragment$40;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$40;[Ljava/lang/Object;)V
    .locals 0

    .line 1890
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$40$1;->mm:Lcom/picacomic/fregata/fragments/ChatroomFragment$40;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$40$1;->ki:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1893
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$40$1;->ki:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    .line 1895
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$40$1;->mm:Lcom/picacomic/fregata/fragments/ChatroomFragment$40;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$40;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->a(Lorg/json/JSONObject;I)Lcom/picacomic/fregata/objects/ChatMessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1899
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$40$1;->mm:Lcom/picacomic/fregata/fragments/ChatroomFragment$40;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$40;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v1, v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->c(Lcom/picacomic/fregata/objects/ChatMessageObject;)V

    return-void
.end method
