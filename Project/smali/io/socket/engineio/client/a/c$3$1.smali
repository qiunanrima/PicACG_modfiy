.class Lio/socket/engineio/client/a/c$3$1;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/a/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zL:Lio/socket/engineio/client/a/c$3;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/a/c$3;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lio/socket/engineio/client/a/c$3$1;->zL:Lio/socket/engineio/client/a/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lio/socket/engineio/client/a/c$3$1;->zL:Lio/socket/engineio/client/a/c$3;

    iget-object v0, v0, Lio/socket/engineio/client/a/c$3;->zG:Lio/socket/engineio/client/a/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/socket/engineio/client/a/c;->za:Z

    .line 156
    iget-object v0, p0, Lio/socket/engineio/client/a/c$3$1;->zL:Lio/socket/engineio/client/a/c$3;

    iget-object v0, v0, Lio/socket/engineio/client/a/c$3;->zG:Lio/socket/engineio/client/a/c;

    const-string v1, "drain"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
