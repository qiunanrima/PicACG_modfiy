.class public Lio/socket/engineio/client/Socket;
.super Lio/socket/b/a;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/Socket$a;,
        Lio/socket/engineio/client/Socket$ReadyState;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static wE:Ljavax/net/ssl/SSLContext;

.field private static wF:Ljavax/net/ssl/HostnameVerifier;

.field private static ya:Z


# instance fields
.field hostname:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private id:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field port:I

.field public proxy:Ljava/net/Proxy;

.field private secure:Z

.field private xY:J

.field private xZ:J

.field private yb:Z

.field private yc:Z

.field private yd:Z

.field private ye:Z

.field private yf:I

.field private yg:I

.field private yh:Ljava/lang/String;

.field private yi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field yl:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/socket/engineio/parser/b;",
            ">;"
        }
    .end annotation
.end field

.field ym:Lio/socket/engineio/client/Transport;

.field private yn:Ljava/util/concurrent/Future;

.field private yo:Ljava/util/concurrent/Future;

.field private yp:Ljavax/net/ssl/SSLContext;

.field public yq:Ljava/lang/String;

.field public yr:Ljava/lang/String;

.field private ys:Lio/socket/engineio/client/Socket$ReadyState;

.field private yt:Ljava/util/concurrent/ScheduledExecutorService;

.field private final yu:Lio/socket/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 99
    sput-boolean v0, Lio/socket/engineio/client/Socket;->ya:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    new-instance v0, Lio/socket/engineio/client/Socket$a;

    invoke-direct {v0}, Lio/socket/engineio/client/Socket$a;-><init>()V

    invoke-direct {p0, v0}, Lio/socket/engineio/client/Socket;-><init>(Lio/socket/engineio/client/Socket$a;)V

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Socket$a;)V
    .locals 7

    .line 173
    invoke-direct {p0}, Lio/socket/b/a;-><init>()V

    .line 121
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    .line 133
    new-instance v0, Lio/socket/engineio/client/Socket$1;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$1;-><init>(Lio/socket/engineio/client/Socket;)V

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yu:Lio/socket/b/a$a;

    .line 174
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->host:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->host:Ljava/lang/String;

    const-string v5, ":"

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    const/16 v5, 0x5b

    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_1

    add-int/2addr v5, v3

    .line 179
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/16 v5, 0x5d

    .line 180
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 181
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_2
    iput-object v0, p1, Lio/socket/engineio/client/Socket$a;->hostname:Ljava/lang/String;

    .line 186
    :cond_3
    iget-boolean v0, p1, Lio/socket/engineio/client/Socket$a;->secure:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->secure:Z

    .line 188
    iget v0, p1, Lio/socket/engineio/client/Socket$a;->port:I

    if-ne v0, v4, :cond_5

    .line 190
    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->secure:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x1bb

    goto :goto_1

    :cond_4
    const/16 v0, 0x50

    :goto_1
    iput v0, p1, Lio/socket/engineio/client/Socket$a;->port:I

    .line 193
    :cond_5
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yp:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yp:Ljavax/net/ssl/SSLContext;

    goto :goto_2

    :cond_6
    sget-object v0, Lio/socket/engineio/client/Socket;->wE:Ljavax/net/ssl/SSLContext;

    :goto_2
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yp:Ljavax/net/ssl/SSLContext;

    .line 194
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->hostname:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v0, "localhost"

    :goto_3
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->hostname:Ljava/lang/String;

    .line 195
    iget v0, p1, Lio/socket/engineio/client/Socket$a;->port:I

    iput v0, p0, Lio/socket/engineio/client/Socket;->port:I

    .line 196
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yU:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yU:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lio/socket/e/a;->aR(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_4
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yk:Ljava/util/Map;

    .line 198
    iget-boolean v0, p1, Lio/socket/engineio/client/Socket$a;->yb:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->yb:Z

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lio/socket/engineio/client/Socket$a;->path:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lio/socket/engineio/client/Socket$a;->path:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string v4, "/engine.io"

    :goto_5
    const-string v5, "/$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->path:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yh:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yh:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const-string v0, "t"

    :goto_6
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yh:Ljava/lang/String;

    .line 201
    iget-boolean v0, p1, Lio/socket/engineio/client/Socket$a;->yc:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->yc:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p1, Lio/socket/engineio/client/Socket$a;->yT:[Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v1, p1, Lio/socket/engineio/client/Socket$a;->yT:[Ljava/lang/String;

    goto :goto_7

    :cond_b
    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "polling"

    aput-object v4, v1, v2

    const-string v2, "websocket"

    aput-object v2, v1, v3

    :goto_7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yi:Ljava/util/List;

    .line 204
    iget v0, p1, Lio/socket/engineio/client/Socket$a;->yf:I

    if-eqz v0, :cond_c

    iget v0, p1, Lio/socket/engineio/client/Socket$a;->yf:I

    goto :goto_8

    :cond_c
    const/16 v0, 0x34b

    :goto_8
    iput v0, p0, Lio/socket/engineio/client/Socket;->yf:I

    .line 205
    iget-boolean v0, p1, Lio/socket/engineio/client/Socket$a;->ye:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->ye:Z

    .line 206
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_9

    :cond_d
    sget-object v0, Lio/socket/engineio/client/Socket;->wF:Ljavax/net/ssl/HostnameVerifier;

    :goto_9
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 207
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->proxy:Ljava/net/Proxy;

    .line 208
    iget-object v0, p1, Lio/socket/engineio/client/Socket$a;->yq:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yq:Ljava/lang/String;

    .line 209
    iget-object p1, p1, Lio/socket/engineio/client/Socket$a;->yr:Ljava/lang/String;

    iput-object p1, p0, Lio/socket/engineio/client/Socket;->yr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$a;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p1, p2}, Lio/socket/engineio/client/Socket$a;->b(Ljava/net/URI;Lio/socket/engineio/client/Socket$a;)Lio/socket/engineio/client/Socket$a;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Lio/socket/engineio/client/Socket;-><init>(Lio/socket/engineio/client/Socket$a;)V

    return-void
.end method

.method static synthetic I(Z)Z
    .locals 0

    .line 31
    sput-boolean p0, Lio/socket/engineio/client/Socket;->ya:Z

    return p0
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket$ReadyState;)Lio/socket/engineio/client/Socket$ReadyState;
    .locals 0

    .line 31
    iput-object p1, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    return-object p1
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Ljava/lang/String;)Lio/socket/engineio/client/Transport;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->aI(Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lio/socket/engineio/client/Socket;->j(J)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/Transport;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Lio/socket/engineio/parser/b;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/parser/b;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Ljava/lang/Exception;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Ljava/lang/String;[BLjava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;[BLjava/lang/Runnable;)V

    return-void
.end method

.method private a(Lio/socket/engineio/client/Transport;)V
    .locals 6

    .line 295
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "setting transport %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "clearing existing transport %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    iget-object v3, v3, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->eQ()Lio/socket/b/a;

    .line 303
    :cond_0
    iput-object p1, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    const-string v0, "drain"

    .line 305
    new-instance v1, Lio/socket/engineio/client/Socket$17;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$17;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    invoke-virtual {p1, v0, v1}, Lio/socket/engineio/client/Transport;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    move-result-object p1

    const-string v0, "packet"

    new-instance v1, Lio/socket/engineio/client/Socket$16;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$16;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    .line 310
    invoke-virtual {p1, v0, v1}, Lio/socket/b/a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    move-result-object p1

    const-string v0, "error"

    new-instance v1, Lio/socket/engineio/client/Socket$15;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$15;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    .line 315
    invoke-virtual {p1, v0, v1}, Lio/socket/b/a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    move-result-object p1

    const-string v0, "close"

    new-instance v1, Lio/socket/engineio/client/Socket$14;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$14;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    .line 320
    invoke-virtual {p1, v0, v1}, Lio/socket/b/a;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-void
.end method

.method private a(Lio/socket/engineio/client/a;)V
    .locals 3

    const-string v0, "handshake"

    const/4 v1, 0x1

    .line 520
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 521
    iget-object v0, p1, Lio/socket/engineio/client/a;->xW:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    iget-object v0, v0, Lio/socket/engineio/client/Transport;->yk:Ljava/util/Map;

    const-string v1, "sid"

    iget-object v2, p1, Lio/socket/engineio/client/a;->xW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p1, Lio/socket/engineio/client/a;->xX:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/socket/engineio/client/Socket;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yj:Ljava/util/List;

    .line 524
    iget-wide v0, p1, Lio/socket/engineio/client/a;->xY:J

    iput-wide v0, p0, Lio/socket/engineio/client/Socket;->xY:J

    .line 525
    iget-wide v0, p1, Lio/socket/engineio/client/a;->xZ:J

    iput-wide v0, p0, Lio/socket/engineio/client/Socket;->xZ:J

    .line 526
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eS()V

    .line 528
    sget-object p1, Lio/socket/engineio/client/Socket$ReadyState;->yY:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne p1, v0, :cond_0

    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eT()V

    const-string p1, "heartbeat"

    .line 531
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yu:Lio/socket/b/a$a;

    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string p1, "heartbeat"

    .line 532
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yu:Lio/socket/b/a$a;

    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    return-void
.end method

.method private a(Lio/socket/engineio/parser/b;)V
    .locals 6

    .line 491
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->yV:Lio/socket/engineio/client/Socket$ReadyState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->yW:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    sget-object p1, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v0, "packet received with socket readyState \'%s\'"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 492
    :cond_1
    :goto_0
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "socket received: type \'%s\', data \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p1, Lio/socket/engineio/parser/b;->data:Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v0, "packet"

    .line 494
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    const-string v0, "heartbeat"

    .line 495
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    const-string v0, "open"

    .line 497
    iget-object v1, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    :try_start_0
    new-instance v0, Lio/socket/engineio/client/a;

    iget-object p1, p1, Lio/socket/engineio/parser/b;->data:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lio/socket/engineio/client/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/client/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "error"

    .line 501
    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Lio/socket/engineio/client/EngineIOException;

    invoke-direct {v2, p1}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_1

    :cond_2
    const-string v0, "pong"

    .line 503
    iget-object v1, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eT()V

    const-string p1, "pong"

    .line 505
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_1

    :cond_3
    const-string v0, "error"

    .line 506
    iget-object v1, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    new-instance v0, Lio/socket/engineio/client/EngineIOException;

    const-string v1, "server error"

    invoke-direct {v0, v1}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    .line 508
    iget-object p1, p1, Lio/socket/engineio/parser/b;->data:Ljava/lang/Object;

    iput-object p1, v0, Lio/socket/engineio/client/EngineIOException;->xV:Ljava/lang/Object;

    .line 509
    invoke-direct {p0, v0}, Lio/socket/engineio/client/Socket;->c(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    const-string v0, "message"

    .line 510
    iget-object v1, p1, Lio/socket/engineio/parser/b;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "data"

    .line 511
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lio/socket/engineio/parser/b;->data:Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    const-string v0, "message"

    .line 512
    new-array v1, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lio/socket/engineio/parser/b;->data:Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lio/socket/engineio/parser/b;Ljava/lang/Runnable;)V
    .locals 3

    .line 688
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yX:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_2

    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yY:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "packetCreate"

    const/4 v1, 0x1

    .line 692
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 693
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    const-string p1, "flush"

    .line 695
    new-instance v0, Lio/socket/engineio/client/Socket$11;

    invoke-direct {v0, p0, p2}, Lio/socket/engineio/client/Socket$11;-><init>(Lio/socket/engineio/client/Socket;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 702
    :cond_1
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .line 781
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yV:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yW:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yX:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_4

    .line 782
    :cond_0
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "socket close with reason: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yo:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yo:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 789
    :cond_1
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yn:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yn:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 792
    :cond_2
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yt:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 793
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yt:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 797
    :cond_3
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lio/socket/engineio/client/Transport;->aH(Ljava/lang/String;)Lio/socket/b/a;

    .line 800
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->fb()Lio/socket/engineio/client/Transport;

    .line 803
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->eQ()Lio/socket/b/a;

    .line 806
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yY:Lio/socket/engineio/client/Socket$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    const-string v0, "close"

    const/4 v1, 0x2

    .line 812
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 816
    iget-object p1, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 817
    iput v4, p0, Lio/socket/engineio/client/Socket;->yg:I

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 678
    new-instance v0, Lio/socket/engineio/parser/b;

    invoke-direct {v0, p1, p2}, Lio/socket/engineio/parser/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    invoke-direct {p0, v0, p3}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/parser/b;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;[BLjava/lang/Runnable;)V
    .locals 1

    .line 683
    new-instance v0, Lio/socket/engineio/parser/b;

    invoke-direct {v0, p1, p2}, Lio/socket/engineio/parser/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    invoke-direct {p0, v0, p3}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/parser/b;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lio/socket/engineio/client/Socket;->ye:Z

    return p0
.end method

.method static synthetic a(Lio/socket/engineio/client/Socket;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lio/socket/engineio/client/Socket;->yd:Z

    return p1
.end method

.method private aI(Ljava/lang/String;)Lio/socket/engineio/client/Transport;
    .locals 5

    .line 255
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "creating transport \'%s\'"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->yk:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "EIO"

    const/4 v3, 0x3

    .line 258
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transport"

    .line 259
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "sid"

    .line 261
    iget-object v3, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    new-instance v1, Lio/socket/engineio/client/Transport$a;

    invoke-direct {v1}, Lio/socket/engineio/client/Transport$a;-><init>()V

    .line 265
    iget-object v3, p0, Lio/socket/engineio/client/Socket;->yp:Ljavax/net/ssl/SSLContext;

    iput-object v3, v1, Lio/socket/engineio/client/Transport$a;->yp:Ljavax/net/ssl/SSLContext;

    .line 266
    iget-object v3, p0, Lio/socket/engineio/client/Socket;->hostname:Ljava/lang/String;

    iput-object v3, v1, Lio/socket/engineio/client/Transport$a;->hostname:Ljava/lang/String;

    .line 267
    iget v3, p0, Lio/socket/engineio/client/Socket;->port:I

    iput v3, v1, Lio/socket/engineio/client/Transport$a;->port:I

    .line 268
    iget-boolean v3, p0, Lio/socket/engineio/client/Socket;->secure:Z

    iput-boolean v3, v1, Lio/socket/engineio/client/Transport$a;->secure:Z

    .line 269
    iget-object v3, p0, Lio/socket/engineio/client/Socket;->path:Ljava/lang/String;

    iput-object v3, v1, Lio/socket/engineio/client/Transport$a;->path:Ljava/lang/String;

    .line 270
    iput-object v0, v1, Lio/socket/engineio/client/Transport$a;->yk:Ljava/util/Map;

    .line 271
    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->yc:Z

    iput-boolean v0, v1, Lio/socket/engineio/client/Transport$a;->yc:Z

    .line 272
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yh:Ljava/lang/String;

    iput-object v0, v1, Lio/socket/engineio/client/Transport$a;->yh:Ljava/lang/String;

    .line 273
    iget v0, p0, Lio/socket/engineio/client/Socket;->yf:I

    iput v0, v1, Lio/socket/engineio/client/Transport$a;->yf:I

    .line 274
    iput-object p0, v1, Lio/socket/engineio/client/Transport$a;->zb:Lio/socket/engineio/client/Socket;

    .line 275
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, v1, Lio/socket/engineio/client/Transport$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 276
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->proxy:Ljava/net/Proxy;

    iput-object v0, v1, Lio/socket/engineio/client/Transport$a;->proxy:Ljava/net/Proxy;

    .line 277
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yq:Ljava/lang/String;

    iput-object v0, v1, Lio/socket/engineio/client/Transport$a;->yq:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yr:Ljava/lang/String;

    iput-object v0, v1, Lio/socket/engineio/client/Transport$a;->yr:Ljava/lang/String;

    const-string v0, "websocket"

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    new-instance p1, Lio/socket/engineio/client/a/c;

    invoke-direct {p1, v1}, Lio/socket/engineio/client/a/c;-><init>(Lio/socket/engineio/client/Transport$a;)V

    goto :goto_0

    :cond_1
    const-string v0, "polling"

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 284
    new-instance p1, Lio/socket/engineio/client/a/b;

    invoke-direct {p1, v1}, Lio/socket/engineio/client/a/b;-><init>(Lio/socket/engineio/client/Transport$a;)V

    :goto_0
    const-string v0, "transport"

    .line 289
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-object p1

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private aJ(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v9, p0

    .line 329
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "probing transport \'%s\'"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 330
    new-array v11, v2, [Lio/socket/engineio/client/Transport;

    invoke-direct/range {p0 .. p1}, Lio/socket/engineio/client/Socket;->aI(Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object v0

    aput-object v0, v11, v10

    .line 331
    new-array v8, v2, [Z

    aput-boolean v10, v8, v10

    .line 334
    sput-boolean v10, Lio/socket/engineio/client/Socket;->ya:Z

    .line 336
    new-array v12, v2, [Ljava/lang/Runnable;

    .line 338
    new-instance v13, Lio/socket/engineio/client/Socket$18;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v4, v11

    move-object/from16 v5, p0

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lio/socket/engineio/client/Socket$18;-><init>(Lio/socket/engineio/client/Socket;[ZLjava/lang/String;[Lio/socket/engineio/client/Transport;Lio/socket/engineio/client/Socket;[Ljava/lang/Runnable;)V

    .line 390
    new-instance v6, Lio/socket/engineio/client/Socket$19;

    invoke-direct {v6, v9, v8, v12, v11}, Lio/socket/engineio/client/Socket$19;-><init>(Lio/socket/engineio/client/Socket;[Z[Ljava/lang/Runnable;[Lio/socket/engineio/client/Transport;)V

    .line 405
    new-instance v14, Lio/socket/engineio/client/Socket$20;

    move-object v0, v14

    move-object v2, v11

    move-object v3, v6

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lio/socket/engineio/client/Socket$20;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/b/a$a;Ljava/lang/String;Lio/socket/engineio/client/Socket;)V

    .line 427
    new-instance v15, Lio/socket/engineio/client/Socket$2;

    invoke-direct {v15, v9, v14}, Lio/socket/engineio/client/Socket$2;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/b/a$a;)V

    .line 435
    new-instance v8, Lio/socket/engineio/client/Socket$3;

    invoke-direct {v8, v9, v14}, Lio/socket/engineio/client/Socket$3;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/b/a$a;)V

    .line 443
    new-instance v7, Lio/socket/engineio/client/Socket$4;

    invoke-direct {v7, v9, v11, v6}, Lio/socket/engineio/client/Socket$4;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/b/a$a;)V

    .line 454
    new-instance v16, Lio/socket/engineio/client/Socket$5;

    move-object/from16 v0, v16

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, p0

    move-object/from16 v17, v7

    move-object v7, v8

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lio/socket/engineio/client/Socket$5;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/b/a$a;Lio/socket/b/a$a;Lio/socket/b/a$a;Lio/socket/engineio/client/Socket;Lio/socket/b/a$a;Lio/socket/b/a$a;)V

    aput-object v16, v12, v10

    .line 465
    aget-object v0, v11, v10

    const-string v1, "open"

    invoke-virtual {v0, v1, v13}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 466
    aget-object v0, v11, v10

    const-string v1, "error"

    invoke-virtual {v0, v1, v14}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 467
    aget-object v0, v11, v10

    const-string v1, "close"

    invoke-virtual {v0, v1, v15}, Lio/socket/engineio/client/Transport;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string v0, "close"

    move-object/from16 v1, v18

    .line 469
    invoke-virtual {v9, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string v0, "upgrading"

    move-object/from16 v1, v17

    .line 470
    invoke-virtual {v9, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    .line 472
    aget-object v0, v11, v10

    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->fa()Lio/socket/engineio/client/Transport;

    return-void
.end method

.method private aK(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, p1, v0}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lio/socket/engineio/client/Socket;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/socket/engineio/client/Socket;->yi:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lio/socket/engineio/client/Socket;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->aK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lio/socket/engineio/client/Socket;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eV()V

    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 5

    .line 770
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "socket error %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 771
    sput-boolean v4, Lio/socket/engineio/client/Socket;->ya:Z

    const-string v0, "error"

    .line 772
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    const-string v0, "transport error"

    .line 773
    invoke-direct {p0, v0, p1}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 674
    new-instance v0, Lio/socket/engineio/parser/b;

    invoke-direct {v0, p1}, Lio/socket/engineio/parser/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/socket/engineio/client/Socket;->a(Lio/socket/engineio/parser/b;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    return-object p0
.end method

.method static synthetic e(Lio/socket/engineio/client/Socket;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    return-void
.end method

.method private eS()V
    .locals 2

    .line 476
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "socket open"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 477
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->yW:Lio/socket/engineio/client/Socket$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    const-string v0, "websocket"

    .line 478
    iget-object v1, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    iget-object v1, v1, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/socket/engineio/client/Socket;->ya:Z

    const-string v0, "open"

    const/4 v1, 0x0

    .line 479
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 480
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    .line 482
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->yW:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->yb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    instance-of v0, v0, Lio/socket/engineio/client/a/a;

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "starting upgrade probes"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    invoke-direct {p0, v1}, Lio/socket/engineio/client/Socket;->aJ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private eT()V
    .locals 5

    .line 560
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yo:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yo:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 565
    :cond_0
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eX()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/socket/engineio/client/Socket$7;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$7;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    iget-wide v2, p0, Lio/socket/engineio/client/Socket;->xY:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yo:Ljava/util/concurrent/Future;

    return-void
.end method

.method private eU()V
    .locals 1

    .line 584
    new-instance v0, Lio/socket/engineio/client/Socket$8;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$8;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private eV()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 598
    :goto_0
    iget v2, p0, Lio/socket/engineio/client/Socket;->yg:I

    if-ge v1, v2, :cond_0

    .line 599
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iput v0, p0, Lio/socket/engineio/client/Socket;->yg:I

    .line 603
    iget-object v1, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "drain"

    .line 604
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_1

    .line 606
    :cond_1
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    :goto_1
    return-void
.end method

.method private eX()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 838
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yt:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yt:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->yt:Ljava/util/concurrent/ScheduledExecutorService;

    .line 841
    :cond_1
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yt:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic eY()Z
    .locals 1

    .line 31
    sget-boolean v0, Lio/socket/engineio/client/Socket;->ya:Z

    return v0
.end method

.method static synthetic eZ()Ljava/util/logging/Logger;
    .locals 1

    .line 31
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic f(Lio/socket/engineio/client/Socket;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lio/socket/engineio/client/Socket;->xZ:J

    return-wide v0
.end method

.method private flush()V
    .locals 5

    .line 611
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ys:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->yY:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    iget-boolean v0, v0, Lio/socket/engineio/client/Transport;->za:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->yd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    .line 612
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "flushing %d packets in socket"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lio/socket/engineio/client/Socket;->yg:I

    .line 615
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->ym:Lio/socket/engineio/client/Transport;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    iget-object v2, p0, Lio/socket/engineio/client/Socket;->yl:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Lio/socket/engineio/parser/b;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/socket/engineio/parser/b;

    invoke-virtual {v0, v1}, Lio/socket/engineio/client/Transport;->a([Lio/socket/engineio/parser/b;)V

    const-string v0, "flush"

    .line 616
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    :cond_0
    return-void
.end method

.method static synthetic g(Lio/socket/engineio/client/Socket;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eU()V

    return-void
.end method

.method static synthetic h(Lio/socket/engineio/client/Socket;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lio/socket/engineio/client/Socket;->yd:Z

    return p0
.end method

.method private j(J)V
    .locals 3

    .line 536
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yn:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->yn:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 541
    iget-wide p1, p0, Lio/socket/engineio/client/Socket;->xY:J

    iget-wide v0, p0, Lio/socket/engineio/client/Socket;->xZ:J

    add-long/2addr p1, v0

    .line 545
    :cond_1
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->eX()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/socket/engineio/client/Socket$6;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$6;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/socket/engineio/client/Socket;->yn:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 625
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/Socket;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([BLjava/lang/Runnable;)V
    .locals 0

    .line 633
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/Socket;->b([BLjava/lang/Runnable;)V

    return-void
.end method

.method b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 824
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->yi:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 656
    new-instance v0, Lio/socket/engineio/client/Socket$9;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/engineio/client/Socket$9;-><init>(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b([BLjava/lang/Runnable;)V
    .locals 1

    .line 665
    new-instance v0, Lio/socket/engineio/client/Socket$10;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/engineio/client/Socket$10;-><init>(Lio/socket/engineio/client/Socket;[BLjava/lang/Runnable;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eR()Lio/socket/engineio/client/Socket;
    .locals 1

    .line 226
    new-instance v0, Lio/socket/engineio/client/Socket$12;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$12;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public eW()Lio/socket/engineio/client/Socket;
    .locals 1

    .line 711
    new-instance v0, Lio/socket/engineio/client/Socket$13;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$13;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public write([B)V
    .locals 1

    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->a([BLjava/lang/Runnable;)V

    return-void
.end method
