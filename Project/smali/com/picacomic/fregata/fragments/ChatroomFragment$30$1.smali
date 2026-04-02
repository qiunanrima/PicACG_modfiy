.class Lcom/picacomic/fregata/fragments/ChatroomFragment$30$1;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment$30;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic md:Lcom/picacomic/fregata/fragments/ChatroomFragment$30;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment$30;)V
    .locals 0

    .line 1557
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$30$1;->md:Lcom/picacomic/fregata/fragments/ChatroomFragment$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1561
    sget-object v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->TAG:Ljava/lang/String;

    const-string v1, "Testing INIT"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$30$1;->md:Lcom/picacomic/fregata/fragments/ChatroomFragment$30;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment$30;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$30$1;->md:Lcom/picacomic/fregata/fragments/ChatroomFragment$30;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$30;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    const-class v2, Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$30$1;->md:Lcom/picacomic/fregata/fragments/ChatroomFragment$30;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ChatroomFragment$30;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-static {v1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->f(Lcom/picacomic/fregata/fragments/ChatroomFragment;)Lio/socket/client/d;

    move-result-object v1

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
