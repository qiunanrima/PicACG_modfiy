.class Lio/socket/engineio/client/Socket$18$1$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$18$1;->a([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yS:Lio/socket/engineio/client/Socket$18$1;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$18$1;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 363
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yP:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yY:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v2, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    invoke-static {v2}, Lio/socket/engineio/client/Socket;->d(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return-void

    .line 366
    :cond_1
    invoke-static {}, Lio/socket/engineio/client/Socket;->eZ()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v2, "changing transport and sending upgrade packet"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yQ:[Ljava/lang/Runnable;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 370
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    iget-object v2, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V

    .line 371
    new-instance v0, Lio/socket/engineio/parser/b;

    const-string v2, "upgrade"

    invoke-direct {v0, v2}, Lio/socket/engineio/parser/b;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v2, v2, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v4, v3, [Lio/socket/engineio/parser/b;

    aput-object v0, v4, v1

    invoke-virtual {v2, v4}, Lio/socket/engineio/client/Transport;->a([Lio/socket/engineio/parser/b;)V

    .line 373
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    const-string v2, "upgrade"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v4, v4, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 374
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 375
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    invoke-static {v0, v1}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Socket;Z)Z

    .line 376
    iget-object v0, p0, Lio/socket/engineio/client/Socket$18$1$1;->yS:Lio/socket/engineio/client/Socket$18$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18$1;->yR:Lio/socket/engineio/client/Socket$18;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->e(Lio/socket/engineio/client/Socket;)V

    return-void
.end method
