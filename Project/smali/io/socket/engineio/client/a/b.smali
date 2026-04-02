.class public Lio/socket/engineio/client/a/b;
.super Lio/socket/engineio/client/a/a;
.source "PollingXHR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/a/b$a;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lio/socket/engineio/client/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/a/b;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/socket/engineio/client/a/a;-><init>(Lio/socket/engineio/client/Transport$a;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/b;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/a/b;->b(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lio/socket/engineio/client/a/b;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/a/b;->b(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic fj()Ljava/util/logging/Logger;
    .locals 1

    .line 19
    sget-object v0, Lio/socket/engineio/client/a/b;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected a(Lio/socket/engineio/client/a/b$a$a;)Lio/socket/engineio/client/a/b$a;
    .locals 3

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lio/socket/engineio/client/a/b$a$a;

    invoke-direct {p1}, Lio/socket/engineio/client/a/b$a$a;-><init>()V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lio/socket/engineio/client/a/b;->ff()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->zz:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lio/socket/engineio/client/a/b;->yp:Ljavax/net/ssl/SSLContext;

    iput-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->yp:Ljavax/net/ssl/SSLContext;

    .line 37
    iget-object v0, p0, Lio/socket/engineio/client/a/b;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 38
    iget-object v0, p0, Lio/socket/engineio/client/a/b;->proxy:Ljava/net/Proxy;

    iput-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->proxy:Ljava/net/Proxy;

    .line 40
    new-instance v0, Lio/socket/engineio/client/a/b$a;

    invoke-direct {v0, p1}, Lio/socket/engineio/client/a/b$a;-><init>(Lio/socket/engineio/client/a/b$a$a;)V

    const-string p1, "requestHeaders"

    .line 43
    new-instance v1, Lio/socket/engineio/client/a/b$2;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/a/b$2;-><init>(Lio/socket/engineio/client/a/b;Lio/socket/engineio/client/a/b;)V

    invoke-virtual {v0, p1, v1}, Lio/socket/engineio/client/a/b$a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    move-result-object p1

    const-string v1, "responseHeaders"

    new-instance v2, Lio/socket/engineio/client/a/b$1;

    invoke-direct {v2, p0, p0}, Lio/socket/engineio/client/a/b$1;-><init>(Lio/socket/engineio/client/a/b;Lio/socket/engineio/client/a/b;)V

    .line 49
    invoke-virtual {p1, v1, v2}, Lio/socket/b/a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-object v0
.end method

.method protected c([BLjava/lang/Runnable;)V
    .locals 2

    .line 65
    new-instance v0, Lio/socket/engineio/client/a/b$a$a;

    invoke-direct {v0}, Lio/socket/engineio/client/a/b$a$a;-><init>()V

    const-string v1, "POST"

    .line 66
    iput-object v1, v0, Lio/socket/engineio/client/a/b$a$a;->method:Ljava/lang/String;

    .line 67
    iput-object p1, v0, Lio/socket/engineio/client/a/b$a$a;->data:[B

    .line 68
    invoke-virtual {p0, v0}, Lio/socket/engineio/client/a/b;->a(Lio/socket/engineio/client/a/b$a$a;)Lio/socket/engineio/client/a/b$a;

    move-result-object p1

    const-string v0, "success"

    .line 70
    new-instance v1, Lio/socket/engineio/client/a/b$3;

    invoke-direct {v1, p0, p2}, Lio/socket/engineio/client/a/b$3;-><init>(Lio/socket/engineio/client/a/b;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Lio/socket/engineio/client/a/b$a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string p2, "error"

    .line 81
    new-instance v0, Lio/socket/engineio/client/a/b$4;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/a/b$4;-><init>(Lio/socket/engineio/client/a/b;Lio/socket/engineio/client/a/b;)V

    invoke-virtual {p1, p2, v0}, Lio/socket/engineio/client/a/b$a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 93
    invoke-virtual {p1}, Lio/socket/engineio/client/a/b$a;->create()V

    return-void
.end method

.method protected fg()V
    .locals 3

    .line 98
    sget-object v0, Lio/socket/engineio/client/a/b;->logger:Ljava/util/logging/Logger;

    const-string v1, "xhr poll"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lio/socket/engineio/client/a/b;->fi()Lio/socket/engineio/client/a/b$a;

    move-result-object v0

    const-string v1, "data"

    .line 101
    new-instance v2, Lio/socket/engineio/client/a/b$5;

    invoke-direct {v2, p0, p0}, Lio/socket/engineio/client/a/b$5;-><init>(Lio/socket/engineio/client/a/b;Lio/socket/engineio/client/a/b;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/a/b$a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string v1, "error"

    .line 117
    new-instance v2, Lio/socket/engineio/client/a/b$6;

    invoke-direct {v2, p0, p0}, Lio/socket/engineio/client/a/b$6;-><init>(Lio/socket/engineio/client/a/b;Lio/socket/engineio/client/a/b;)V

    invoke-virtual {v0, v1, v2}, Lio/socket/engineio/client/a/b$a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 129
    invoke-virtual {v0}, Lio/socket/engineio/client/a/b$a;->create()V

    return-void
.end method

.method protected fi()Lio/socket/engineio/client/a/b$a;
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lio/socket/engineio/client/a/b;->a(Lio/socket/engineio/client/a/b$a$a;)Lio/socket/engineio/client/a/b$a;

    move-result-object v0

    return-object v0
.end method
