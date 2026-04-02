.class Lio/socket/engineio/client/Socket$2;
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
.field final synthetic yv:Lio/socket/engineio/client/Socket;

.field final synthetic yw:Lio/socket/b/a$a;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;Lio/socket/b/a$a;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lio/socket/engineio/client/Socket$2;->yv:Lio/socket/engineio/client/Socket;

    iput-object p2, p0, Lio/socket/engineio/client/Socket$2;->yw:Lio/socket/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 3

    .line 430
    iget-object p1, p0, Lio/socket/engineio/client/Socket$2;->yw:Lio/socket/b/a$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "transport closed"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lio/socket/b/a$a;->a([Ljava/lang/Object;)V

    return-void
.end method
