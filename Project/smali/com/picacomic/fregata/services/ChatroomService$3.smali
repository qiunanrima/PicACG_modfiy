.class Lcom/picacomic/fregata/services/ChatroomService$3;
.super Ljava/lang/Object;
.source "ChatroomService.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/picacomic/fregata/services/ChatroomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tI:Lcom/picacomic/fregata/services/ChatroomService;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/services/ChatroomService;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/picacomic/fregata/services/ChatroomService$3;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/picacomic/fregata/services/ChatroomService$3;->tI:Lcom/picacomic/fregata/services/ChatroomService;

    new-instance v1, Lcom/picacomic/fregata/services/ChatroomService$3$1;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/services/ChatroomService$3$1;-><init>(Lcom/picacomic/fregata/services/ChatroomService$3;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/picacomic/fregata/services/ChatroomService;->a(Lcom/picacomic/fregata/services/ChatroomService;Ljava/lang/Runnable;)V

    return-void
.end method
