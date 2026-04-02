.class Lio/socket/client/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->a(Lio/socket/client/Manager$b;)Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xb:Lio/socket/client/Manager$b;

.field final synthetic xc:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager$b;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    iput-object p2, p0, Lio/socket/client/Manager$1;->xb:Lio/socket/client/Manager$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 253
    invoke-static {}, Lio/socket/client/Manager;->eG()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "readyState %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    iget-object v4, v4, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    iget-object v0, v0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    sget-object v1, Lio/socket/client/Manager$ReadyState;->xv:Lio/socket/client/Manager$ReadyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    iget-object v0, v0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    sget-object v1, Lio/socket/client/Manager$ReadyState;->xu:Lio/socket/client/Manager$ReadyState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lio/socket/client/Manager;->eG()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "opening %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v4}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;)Ljava/net/URI;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    new-instance v1, Lio/socket/client/Manager$a;

    iget-object v3, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v3}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;)Ljava/net/URI;

    move-result-object v3

    iget-object v4, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v4}, Lio/socket/client/Manager;->b(Lio/socket/client/Manager;)Lio/socket/client/Manager$c;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lio/socket/client/Manager$a;-><init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$a;)V

    iput-object v1, v0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    .line 258
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    iget-object v11, v0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    .line 259
    iget-object v12, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    .line 260
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    sget-object v1, Lio/socket/client/Manager$ReadyState;->xu:Lio/socket/client/Manager$ReadyState;

    iput-object v1, v0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    .line 261
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v0, v5}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;Z)Z

    const-string v0, "transport"

    .line 264
    new-instance v1, Lio/socket/client/Manager$1$1;

    invoke-direct {v1, p0, v12}, Lio/socket/client/Manager$1$1;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    invoke-virtual {v11, v0, v1}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string v0, "open"

    .line 271
    new-instance v1, Lio/socket/client/Manager$1$2;

    invoke-direct {v1, p0, v12}, Lio/socket/client/Manager$1$2;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    invoke-static {v11, v0, v1}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v0

    const-string v1, "error"

    .line 279
    new-instance v3, Lio/socket/client/Manager$1$3;

    invoke-direct {v3, p0, v12}, Lio/socket/client/Manager$1$3;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    invoke-static {v11, v1, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v1

    .line 298
    iget-object v3, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v3}, Lio/socket/client/Manager;->f(Lio/socket/client/Manager;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_1

    .line 299
    iget-object v3, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v3}, Lio/socket/client/Manager;->f(Lio/socket/client/Manager;)J

    move-result-wide v3

    .line 300
    invoke-static {}, Lio/socket/client/Manager;->eG()Ljava/util/logging/Logger;

    move-result-object v6

    const-string v7, "connection attempt will timeout after %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 303
    new-instance v5, Lio/socket/client/Manager$1$4;

    move-object v6, v5

    move-object v7, p0

    move-wide v8, v3

    move-object v10, v0

    invoke-direct/range {v6 .. v12}, Lio/socket/client/Manager$1$4;-><init>(Lio/socket/client/Manager$1;JLio/socket/client/c$a;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 319
    iget-object v3, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v3}, Lio/socket/client/Manager;->g(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v3

    new-instance v4, Lio/socket/client/Manager$1$5;

    invoke-direct {v4, p0, v2}, Lio/socket/client/Manager$1$5;-><init>(Lio/socket/client/Manager$1;Ljava/util/Timer;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_1
    iget-object v2, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->g(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->g(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lio/socket/client/Manager$1;->xc:Lio/socket/client/Manager;

    iget-object v0, v0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->eR()Lio/socket/engineio/client/Socket;

    return-void

    :cond_2
    :goto_0
    return-void
.end method
