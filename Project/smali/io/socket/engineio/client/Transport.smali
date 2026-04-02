.class public abstract Lio/socket/engineio/client/Transport;
.super Lio/socket/b/a;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/Transport$a;,
        Lio/socket/engineio/client/Transport$ReadyState;
    }
.end annotation


# instance fields
.field protected hostname:Ljava/lang/String;

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public name:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected port:I

.field protected proxy:Ljava/net/Proxy;

.field protected secure:Z

.field protected yc:Z

.field protected yh:Ljava/lang/String;

.field public yk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected yp:Ljavax/net/ssl/SSLContext;

.field protected yq:Ljava/lang/String;

.field protected yr:Ljava/lang/String;

.field public za:Z

.field protected zb:Lio/socket/engineio/client/Socket;

.field protected zc:Lio/socket/engineio/client/Transport$ReadyState;


# direct methods
.method public constructor <init>(Lio/socket/engineio/client/Transport$a;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lio/socket/b/a;-><init>()V

    .line 54
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->path:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->path:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    .line 56
    iget v0, p1, Lio/socket/engineio/client/Transport$a;->port:I

    iput v0, p0, Lio/socket/engineio/client/Transport;->port:I

    .line 57
    iget-boolean v0, p1, Lio/socket/engineio/client/Transport$a;->secure:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->secure:Z

    .line 58
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->yk:Ljava/util/Map;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->yk:Ljava/util/Map;

    .line 59
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->yh:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->yh:Ljava/lang/String;

    .line 60
    iget-boolean v0, p1, Lio/socket/engineio/client/Transport$a;->yc:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->yc:Z

    .line 61
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->yp:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->yp:Ljavax/net/ssl/SSLContext;

    .line 62
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->zb:Lio/socket/engineio/client/Socket;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->zb:Lio/socket/engineio/client/Socket;

    .line 63
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 64
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->proxy:Ljava/net/Proxy;

    .line 65
    iget-object v0, p1, Lio/socket/engineio/client/Transport$a;->yq:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->yq:Ljava/lang/String;

    .line 66
    iget-object p1, p1, Lio/socket/engineio/client/Transport$a;->yr:Ljava/lang/String;

    iput-object p1, p0, Lio/socket/engineio/client/Transport;->yr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lio/socket/engineio/parser/b;)V
    .locals 3

    const-string v0, "packet"

    const/4 v1, 0x1

    .line 134
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method public a([Lio/socket/engineio/parser/b;)V
    .locals 1

    .line 103
    new-instance v0, Lio/socket/engineio/client/Transport$3;

    invoke-direct {v0, p0, p1}, Lio/socket/engineio/client/Transport$3;-><init>(Lio/socket/engineio/client/Transport;[Lio/socket/engineio/parser/b;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected aL(Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-static {p1}, Lio/socket/engineio/parser/c;->aM(Ljava/lang/String;)Lio/socket/engineio/parser/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->a(Lio/socket/engineio/parser/b;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 2

    .line 71
    new-instance v0, Lio/socket/engineio/client/EngineIOException;

    invoke-direct {v0, p1, p2}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "error"

    const/4 p2, 0x1

    .line 72
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-object p0
.end method

.method protected abstract b([Lio/socket/engineio/parser/b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation
.end method

.method protected c([B)V
    .locals 0

    .line 130
    invoke-static {p1}, Lio/socket/engineio/parser/c;->e([B)Lio/socket/engineio/parser/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->a(Lio/socket/engineio/parser/b;)V

    return-void
.end method

.method protected eS()V
    .locals 2

    .line 120
    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->zg:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->za:Z

    const-string v0, "open"

    const/4 v1, 0x0

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method public fa()Lio/socket/engineio/client/Transport;
    .locals 1

    .line 77
    new-instance v0, Lio/socket/engineio/client/Transport$1;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Transport$1;-><init>(Lio/socket/engineio/client/Transport;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public fb()Lio/socket/engineio/client/Transport;
    .locals 1

    .line 90
    new-instance v0, Lio/socket/engineio/client/Transport$2;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Transport$2;-><init>(Lio/socket/engineio/client/Transport;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected abstract fc()V
.end method

.method protected abstract fd()V
.end method

.method protected onClose()V
    .locals 2

    .line 138
    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->zh:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Transport;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    const-string v0, "close"

    const/4 v1, 0x0

    .line 139
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method
