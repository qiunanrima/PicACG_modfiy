.class Lio/socket/client/Manager$1$4$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xi:Lio/socket/client/Manager$1$4;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1$4;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 309
    invoke-static {}, Lio/socket/client/Manager;->eG()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "connect attempt timed out after %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    iget-wide v4, v4, Lio/socket/client/Manager$1$4;->xf:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    iget-object v0, v0, Lio/socket/client/Manager$1$4;->xg:Lio/socket/client/c$a;

    invoke-interface {v0}, Lio/socket/client/c$a;->destroy()V

    .line 311
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    iget-object v0, v0, Lio/socket/client/Manager$1$4;->xh:Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->eW()Lio/socket/engineio/client/Socket;

    .line 312
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    iget-object v0, v0, Lio/socket/client/Manager$1$4;->xh:Lio/socket/engineio/client/Socket;

    const-string v1, "error"

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lio/socket/client/SocketIOException;

    const-string v6, "timeout"

    invoke-direct {v4, v6}, Lio/socket/client/SocketIOException;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 313
    iget-object v0, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    iget-object v0, v0, Lio/socket/client/Manager$1$4;->xd:Lio/socket/client/Manager;

    const-string v1, "connect_timeout"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/client/Manager$1$4$1;->xi:Lio/socket/client/Manager$1$4;

    iget-wide v3, v3, Lio/socket/client/Manager$1$4;->xf:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
