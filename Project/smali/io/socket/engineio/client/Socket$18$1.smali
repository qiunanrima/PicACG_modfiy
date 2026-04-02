.class Lio/socket/engineio/client/Socket$18$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$18;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yR:Lio/socket/engineio/client/Socket$18;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$18;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    .line 349
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yP:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    aget-object p1, p1, v1

    check-cast p1, Lio/socket/engineio/parser/b;

    const-string v0, "pong"

    .line 352
    iget-object v2, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "probe"

    iget-object p1, p1, Lio/socket/engineio/parser/b;->data:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 353
    invoke-static {}, Lio/socket/engineio/client/Socket;->eZ()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "probe transport \'%s\' pong"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$18;->val$name:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object p1, p1, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    invoke-static {p1, v2}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Z)Z

    .line 355
    iget-object p1, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object p1, p1, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    const-string v0, "upgrading"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 356
    iget-object p1, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object p1, p1, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object p1, p1, v1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "websocket"

    .line 357
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lio/socket/engineio/client/Socket;->I(Z)Z

    .line 359
    invoke-static {}, Lio/socket/engineio/client/Socket;->eZ()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "pausing current transport \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    iget-object v3, v3, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    iget-object v3, v3, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object p1, p1, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    iget-object p1, p1, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    check-cast p1, Lio/socket/engineio/client/a/a;

    new-instance v0, Lio/socket/engineio/client/Socket$18$1$1;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$18$1$1;-><init>(Lio/socket/engineio/client/Socket$18$1;)V

    invoke-virtual {p1, v0}, Lio/socket/engineio/client/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-static {}, Lio/socket/engineio/client/Socket;->eZ()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "probe transport \'%s\' failed"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$18;->val$name:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 381
    new-instance p1, Lio/socket/engineio/client/EngineIOException;

    const-string v0, "probe error"

    invoke-direct {p1, v0}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    iput-object v0, p1, Lio/socket/engineio/client/EngineIOException;->xU:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    const-string v3, "upgradeError"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    :goto_0
    return-void
.end method
