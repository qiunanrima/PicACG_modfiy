.class Lio/socket/engineio/client/Socket$18;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->aJ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic yB:Lio/socket/engineio/client/Socket;

.field final synthetic yP:[Z

.field final synthetic yQ:[Ljava/lang/Runnable;

.field final synthetic yv:Lio/socket/engineio/client/Socket;

.field final synthetic yx:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[ZLjava/lang/String;[Lio/socket/engineio/client/Transport;Lio/socket/engineio/client/Socket;[Ljava/lang/Runnable;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lio/socket/engineio/client/Socket$18;->yv:Lio/socket/engineio/client/Socket;

    iput-object p2, p0, Lio/socket/engineio/client/Socket$18;->yP:[Z

    iput-object p3, p0, Lio/socket/engineio/client/Socket$18;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    iput-object p5, p0, Lio/socket/engineio/client/Socket$18;->yB:Lio/socket/engineio/client/Socket;

    iput-object p6, p0, Lio/socket/engineio/client/Socket$18;->yQ:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    .line 341
    iget-object p1, p0, Lio/socket/engineio/client/Socket$18;->yP:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-static {}, Lio/socket/engineio/client/Socket;->eZ()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v1, "probe transport \'%s\' opened"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/engineio/client/Socket$18;->val$name:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 344
    new-instance p1, Lio/socket/engineio/parser/b;

    const-string v1, "ping"

    const-string v3, "probe"

    invoke-direct {p1, v1, v3}, Lio/socket/engineio/parser/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object v1, v1, v0

    new-array v2, v2, [Lio/socket/engineio/parser/b;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lio/socket/engineio/client/Transport;->a([Lio/socket/engineio/parser/b;)V

    .line 346
    iget-object p1, p0, Lio/socket/engineio/client/Socket$18;->yx:[Lio/socket/engineio/client/Transport;

    aget-object p1, p1, v0

    const-string v0, "packet"

    new-instance v1, Lio/socket/engineio/client/Socket$18$1;

    invoke-direct {v1, p0}, Lio/socket/engineio/client/Socket$18$1;-><init>(Lio/socket/engineio/client/Socket$18;)V

    invoke-virtual {p1, v0, v1}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-void
.end method
