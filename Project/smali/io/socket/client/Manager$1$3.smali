.class Lio/socket/client/Manager$1$3;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xd:Lio/socket/client/Manager;

.field final synthetic xe:Lio/socket/client/Manager$1;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lio/socket/client/Manager$1$3;->xe:Lio/socket/client/Manager$1;

    iput-object p2, p0, Lio/socket/client/Manager$1$3;->xd:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    .line 282
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    aget-object p1, p1, v2

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 283
    :goto_0
    invoke-static {}, Lio/socket/client/Manager;->eG()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v3, "connect_error"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->xd:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->d(Lio/socket/client/Manager;)V

    .line 285
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->xd:Lio/socket/client/Manager;

    sget-object v3, Lio/socket/client/Manager$ReadyState;->xt:Lio/socket/client/Manager$ReadyState;

    iput-object v3, v0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    .line 286
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->xd:Lio/socket/client/Manager;

    const-string v3, "connect_error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lio/socket/client/Manager$1$3;->xe:Lio/socket/client/Manager$1;

    iget-object v0, v0, Lio/socket/client/Manager$1;->xb:Lio/socket/client/Manager$b;

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Lio/socket/client/SocketIOException;

    const-string v2, "Connection error"

    instance-of v3, p1, Ljava/lang/Exception;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    :cond_1
    invoke-direct {v0, v2, v1}, Lio/socket/client/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    iget-object p1, p0, Lio/socket/client/Manager$1$3;->xe:Lio/socket/client/Manager$1;

    iget-object p1, p1, Lio/socket/client/Manager$1;->xb:Lio/socket/client/Manager$b;

    invoke-interface {p1, v0}, Lio/socket/client/Manager$b;->b(Ljava/lang/Exception;)V

    goto :goto_1

    .line 293
    :cond_2
    iget-object p1, p0, Lio/socket/client/Manager$1$3;->xd:Lio/socket/client/Manager;

    invoke-static {p1}, Lio/socket/client/Manager;->e(Lio/socket/client/Manager;)V

    :goto_1
    return-void
.end method
