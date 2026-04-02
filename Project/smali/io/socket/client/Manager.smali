.class public Lio/socket/client/Manager;
.super Lio/socket/b/a;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/Manager$c;,
        Lio/socket/client/Manager$a;,
        Lio/socket/client/Manager$b;,
        Lio/socket/client/Manager$ReadyState;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field static wE:Ljavax/net/ssl/SSLContext;

.field static wF:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field wG:Lio/socket/client/Manager$ReadyState;

.field private wH:Z

.field private wI:Z

.field private wJ:Z

.field private wK:Z

.field private wL:I

.field private wM:J

.field private wN:J

.field private wO:D

.field private wP:Lio/socket/a/a;

.field private wQ:J

.field private wR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/socket/client/d;",
            ">;"
        }
    .end annotation
.end field

.field private wS:Ljava/util/Date;

.field private wT:Ljava/net/URI;

.field private wU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/socket/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private wV:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/socket/client/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private wW:Lio/socket/client/Manager$c;

.field wX:Lio/socket/engineio/client/Socket;

.field private wY:Lio/socket/f/c$c;

.field private wZ:Lio/socket/f/c$b;

.field xa:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/socket/client/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lio/socket/client/Manager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, v0}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/socket/client/Manager$c;)V
    .locals 5

    .line 119
    invoke-direct {p0}, Lio/socket/b/a;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->wR:Ljava/util/Set;

    if-nez p2, :cond_0

    .line 121
    new-instance p2, Lio/socket/client/Manager$c;

    invoke-direct {p2}, Lio/socket/client/Manager$c;-><init>()V

    .line 123
    :cond_0
    iget-object v0, p2, Lio/socket/client/Manager$c;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "/socket.io"

    .line 124
    iput-object v0, p2, Lio/socket/client/Manager$c;->path:Ljava/lang/String;

    .line 126
    :cond_1
    iget-object v0, p2, Lio/socket/client/Manager$c;->yp:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_2

    .line 127
    sget-object v0, Lio/socket/client/Manager;->wE:Ljavax/net/ssl/SSLContext;

    iput-object v0, p2, Lio/socket/client/Manager$c;->yp:Ljavax/net/ssl/SSLContext;

    .line 129
    :cond_2
    iget-object v0, p2, Lio/socket/client/Manager$c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_3

    .line 130
    sget-object v0, Lio/socket/client/Manager;->wF:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p2, Lio/socket/client/Manager$c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 132
    :cond_3
    iput-object p2, p0, Lio/socket/client/Manager;->wW:Lio/socket/client/Manager$c;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->xa:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    .line 135
    iget-boolean v0, p2, Lio/socket/client/Manager$c;->xn:Z

    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->H(Z)Lio/socket/client/Manager;

    .line 136
    iget v0, p2, Lio/socket/client/Manager$c;->xo:I

    if-eqz v0, :cond_4

    iget v0, p2, Lio/socket/client/Manager$c;->xo:I

    goto :goto_0

    :cond_4
    const v0, 0x7fffffff

    :goto_0
    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->ah(I)Lio/socket/client/Manager;

    .line 137
    iget-wide v0, p2, Lio/socket/client/Manager$c;->xp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget-wide v0, p2, Lio/socket/client/Manager$c;->xp:J

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x3e8

    :goto_1
    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->g(J)Lio/socket/client/Manager;

    .line 138
    iget-wide v0, p2, Lio/socket/client/Manager$c;->xq:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iget-wide v0, p2, Lio/socket/client/Manager$c;->xq:J

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x1388

    :goto_2
    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->h(J)Lio/socket/client/Manager;

    .line 139
    iget-wide v0, p2, Lio/socket/client/Manager$c;->xr:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_7

    iget-wide v0, p2, Lio/socket/client/Manager$c;->xr:D

    goto :goto_3

    :cond_7
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    :goto_3
    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->b(D)Lio/socket/client/Manager;

    .line 140
    new-instance v0, Lio/socket/a/a;

    invoke-direct {v0}, Lio/socket/a/a;-><init>()V

    .line 141
    invoke-virtual {p0}, Lio/socket/client/Manager;->ew()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/socket/a/a;->e(J)Lio/socket/a/a;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lio/socket/client/Manager;->ey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/socket/a/a;->f(J)Lio/socket/a/a;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lio/socket/client/Manager;->ex()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/socket/a/a;->a(D)Lio/socket/a/a;

    move-result-object v0

    iput-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    .line 144
    iget-wide v0, p2, Lio/socket/client/Manager$c;->xs:J

    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->i(J)Lio/socket/client/Manager;

    .line 145
    sget-object p2, Lio/socket/client/Manager$ReadyState;->xt:Lio/socket/client/Manager$ReadyState;

    iput-object p2, p0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    .line 146
    iput-object p1, p0, Lio/socket/client/Manager;->wT:Ljava/net/URI;

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lio/socket/client/Manager;->wK:Z

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/socket/client/Manager;->wU:Ljava/util/List;

    .line 149
    new-instance p1, Lio/socket/f/c$c;

    invoke-direct {p1}, Lio/socket/f/c$c;-><init>()V

    iput-object p1, p0, Lio/socket/client/Manager;->wY:Lio/socket/f/c$c;

    .line 150
    new-instance p1, Lio/socket/f/c$b;

    invoke-direct {p1}, Lio/socket/f/c$b;-><init>()V

    iput-object p1, p0, Lio/socket/client/Manager;->wZ:Lio/socket/f/c$b;

    return-void
.end method

.method static synthetic a(Lio/socket/client/Manager;)Ljava/net/URI;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/socket/client/Manager;->wT:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic a(Lio/socket/client/Manager;Lio/socket/f/b;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->a(Lio/socket/f/b;)V

    return-void
.end method

.method static synthetic a(Lio/socket/client/Manager;Ljava/lang/Exception;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lio/socket/client/Manager;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->aF(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lio/socket/client/Manager;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lio/socket/client/Manager;[B)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->b([B)V

    return-void
.end method

.method private a(Lio/socket/f/b;)V
    .locals 3

    const-string v0, "packet"

    const/4 v1, 0x1

    .line 407
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .line 411
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "error"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "error"

    const/4 v1, 0x1

    .line 412
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lio/socket/client/Manager;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 154
    invoke-virtual {p0, p1, p2}, Lio/socket/client/Manager;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 155
    iget-object v0, p0, Lio/socket/client/Manager;->xa:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/socket/client/d;

    .line 156
    invoke-virtual {v1, p1, p2}, Lio/socket/client/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lio/socket/client/Manager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lio/socket/client/Manager;->wI:Z

    return p1
.end method

.method private aF(Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lio/socket/client/Manager;->wZ:Lio/socket/f/c$b;

    invoke-virtual {v0, p1}, Lio/socket/f/c$b;->add(Ljava/lang/String;)V

    return-void
.end method

.method private aG(Ljava/lang/String;)V
    .locals 3

    .line 517
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "onclose"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    .line 519
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->reset()V

    .line 520
    sget-object v0, Lio/socket/client/Manager$ReadyState;->xt:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    const-string v0, "close"

    const/4 v1, 0x1

    .line 521
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 523
    iget-boolean p1, p0, Lio/socket/client/Manager;->wH:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lio/socket/client/Manager;->wI:Z

    if-nez p1, :cond_0

    .line 524
    invoke-direct {p0}, Lio/socket/client/Manager;->reconnect()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lio/socket/client/Manager;)Lio/socket/client/Manager$c;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/socket/client/Manager;->wW:Lio/socket/client/Manager$c;

    return-object p0
.end method

.method static synthetic b(Lio/socket/client/Manager;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->aG(Ljava/lang/String;)V

    return-void
.end method

.method private b([B)V
    .locals 1

    .line 403
    iget-object v0, p0, Lio/socket/client/Manager;->wZ:Lio/socket/f/c$b;

    invoke-virtual {v0, p1}, Lio/socket/f/c$b;->h([B)V

    return-void
.end method

.method static synthetic b(Lio/socket/client/Manager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lio/socket/client/Manager;->wK:Z

    return p1
.end method

.method static synthetic c(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->eB()V

    return-void
.end method

.method static synthetic c(Lio/socket/client/Manager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lio/socket/client/Manager;->wJ:Z

    return p1
.end method

.method private cleanup()V
    .locals 2

    .line 488
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "cleanup"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 491
    :goto_0
    iget-object v0, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/socket/client/c$a;->destroy()V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lio/socket/client/Manager;->wU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lio/socket/client/Manager;->wK:Z

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lio/socket/client/Manager;->wS:Ljava/util/Date;

    .line 497
    iget-object v0, p0, Lio/socket/client/Manager;->wZ:Lio/socket/f/c$b;

    invoke-virtual {v0}, Lio/socket/f/c$b;->destroy()V

    return-void
.end method

.method static synthetic d(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    return-void
.end method

.method static synthetic e(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->ez()V

    return-void
.end method

.method private eB()V
    .locals 4

    .line 337
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    .line 341
    sget-object v0, Lio/socket/client/Manager$ReadyState;->xv:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    const-string v0, "open"

    const/4 v1, 0x0

    .line 342
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 344
    iget-object v0, p0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    .line 345
    iget-object v1, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    const-string v2, "data"

    new-instance v3, Lio/socket/client/Manager$5;

    invoke-direct {v3, p0}, Lio/socket/client/Manager$5;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v0, v2, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    const-string v2, "ping"

    new-instance v3, Lio/socket/client/Manager$6;

    invoke-direct {v3, p0}, Lio/socket/client/Manager$6;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v0, v2, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v1, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    const-string v2, "pong"

    new-instance v3, Lio/socket/client/Manager$7;

    invoke-direct {v3, p0}, Lio/socket/client/Manager$7;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v0, v2, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    const-string v2, "error"

    new-instance v3, Lio/socket/client/Manager$8;

    invoke-direct {v3, p0}, Lio/socket/client/Manager$8;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v0, v2, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    const-string v2, "close"

    new-instance v3, Lio/socket/client/Manager$9;

    invoke-direct {v3, p0}, Lio/socket/client/Manager$9;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v0, v2, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    iget-object v1, p0, Lio/socket/client/Manager;->wZ:Lio/socket/f/c$b;

    sget-object v2, Lio/socket/f/c$b;->zY:Ljava/lang/String;

    new-instance v3, Lio/socket/client/Manager$10;

    invoke-direct {v3, p0}, Lio/socket/client/Manager$10;-><init>(Lio/socket/client/Manager;)V

    invoke-static {v1, v2, v3}, Lio/socket/client/c;->a(Lio/socket/b/a;Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/client/c$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private eC()V
    .locals 2

    .line 389
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->wS:Ljava/util/Date;

    const-string v0, "ping"

    const/4 v1, 0x0

    .line 390
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/socket/client/Manager;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private eD()V
    .locals 6

    const-string v0, "pong"

    const/4 v1, 0x1

    .line 394
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/socket/client/Manager;->wS:Ljava/util/Date;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 395
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lio/socket/client/Manager;->wS:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 394
    invoke-direct {p0, v0, v1}, Lio/socket/client/Manager;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private eE()V
    .locals 2

    .line 481
    iget-object v0, p0, Lio/socket/client/Manager;->wU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/socket/client/Manager;->wK:Z

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lio/socket/client/Manager;->wU:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/f/b;

    .line 483
    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->b(Lio/socket/f/b;)V

    :cond_0
    return-void
.end method

.method private eF()V
    .locals 4

    .line 589
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->eu()I

    move-result v0

    const/4 v1, 0x0

    .line 590
    iput-boolean v1, p0, Lio/socket/client/Manager;->wJ:Z

    .line 591
    iget-object v2, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v2}, Lio/socket/a/a;->reset()V

    .line 592
    invoke-direct {p0}, Lio/socket/client/Manager;->ev()V

    const-string v2, "reconnect"

    const/4 v3, 0x1

    .line 593
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-direct {p0, v2, v3}, Lio/socket/client/Manager;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic eG()Ljava/util/logging/Logger;
    .locals 1

    .line 20
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private ev()V
    .locals 3

    .line 164
    iget-object v0, p0, Lio/socket/client/Manager;->xa:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/socket/client/d;

    .line 165
    iget-object v2, p0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    invoke-virtual {v2}, Lio/socket/engineio/client/Socket;->id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/socket/client/d;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ez()V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lio/socket/client/Manager;->wJ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/socket/client/Manager;->wH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->eu()I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lio/socket/client/Manager;->reconnect()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lio/socket/client/Manager;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lio/socket/client/Manager;->wQ:J

    return-wide v0
.end method

.method static synthetic g(Lio/socket/client/Manager;)Ljava/util/Queue;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic h(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->eC()V

    return-void
.end method

.method static synthetic i(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->eD()V

    return-void
.end method

.method static synthetic j(Lio/socket/client/Manager;)Ljava/util/Set;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/socket/client/Manager;->wR:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic k(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->eE()V

    return-void
.end method

.method static synthetic l(Lio/socket/client/Manager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lio/socket/client/Manager;->wI:Z

    return p0
.end method

.method static synthetic m(Lio/socket/client/Manager;)Lio/socket/a/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    return-object p0
.end method

.method static synthetic n(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->reconnect()V

    return-void
.end method

.method static synthetic o(Lio/socket/client/Manager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/socket/client/Manager;->eF()V

    return-void
.end method

.method private reconnect()V
    .locals 8

    .line 529
    iget-boolean v0, p0, Lio/socket/client/Manager;->wJ:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/socket/client/Manager;->wI:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 533
    :cond_0
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->eu()I

    move-result v0

    iget v1, p0, Lio/socket/client/Manager;->wL:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 534
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "reconnect failed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->reset()V

    const-string v0, "reconnect_failed"

    .line 536
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/socket/client/Manager;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iput-boolean v2, p0, Lio/socket/client/Manager;->wJ:Z

    goto :goto_0

    .line 539
    :cond_1
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->et()J

    move-result-wide v0

    .line 540
    sget-object v3, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v4, "will wait %dms before reconnect attempt"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 542
    iput-boolean v5, p0, Lio/socket/client/Manager;->wJ:Z

    .line 543
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 544
    new-instance v3, Lio/socket/client/Manager$3;

    invoke-direct {v3, p0, p0}, Lio/socket/client/Manager$3;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 579
    iget-object v0, p0, Lio/socket/client/Manager;->wV:Ljava/util/Queue;

    new-instance v1, Lio/socket/client/Manager$4;

    invoke-direct {v1, p0, v2}, Lio/socket/client/Manager$4;-><init>(Lio/socket/client/Manager;Ljava/util/Timer;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public H(Z)Lio/socket/client/Manager;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lio/socket/client/Manager;->wH:Z

    return-object p0
.end method

.method public a(Lio/socket/client/Manager$b;)Lio/socket/client/Manager;
    .locals 1

    .line 250
    new-instance v0, Lio/socket/client/Manager$1;

    invoke-direct {v0, p0, p1}, Lio/socket/client/Manager$1;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager$b;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method a(Lio/socket/client/d;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lio/socket/client/Manager;->wR:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    iget-object p1, p0, Lio/socket/client/Manager;->wR:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lio/socket/client/Manager;->close()V

    return-void
.end method

.method public aE(Ljava/lang/String;)Lio/socket/client/d;
    .locals 2

    .line 422
    iget-object v0, p0, Lio/socket/client/Manager;->xa:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/d;

    if-nez v0, :cond_1

    .line 424
    new-instance v0, Lio/socket/client/d;

    invoke-direct {v0, p0, p1}, Lio/socket/client/d;-><init>(Lio/socket/client/Manager;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lio/socket/client/Manager;->xa:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/socket/client/d;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "connecting"

    .line 431
    new-instance v1, Lio/socket/client/Manager$11;

    invoke-direct {v1, p0, p0, v0}, Lio/socket/client/Manager$11;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;Lio/socket/client/d;)V

    invoke-virtual {v0, p1, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    const-string p1, "connect"

    .line 437
    new-instance v1, Lio/socket/client/Manager$12;

    invoke-direct {v1, p0, v0, p0}, Lio/socket/client/Manager$12;-><init>(Lio/socket/client/Manager;Lio/socket/client/d;Lio/socket/client/Manager;)V

    invoke-virtual {v0, p1, v1}, Lio/socket/client/d;->a(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public ah(I)Lio/socket/client/Manager;
    .locals 0

    .line 183
    iput p1, p0, Lio/socket/client/Manager;->wL:I

    return-object p0
.end method

.method public b(D)Lio/socket/client/Manager;
    .locals 1

    .line 204
    iput-wide p1, p0, Lio/socket/client/Manager;->wO:D

    .line 205
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0, p1, p2}, Lio/socket/a/a;->a(D)Lio/socket/a/a;

    :cond_0
    return-object p0
.end method

.method b(Lio/socket/f/b;)V
    .locals 5

    .line 456
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "writing packet %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 459
    iget-boolean v0, p0, Lio/socket/client/Manager;->wK:Z

    if-nez v0, :cond_0

    .line 460
    iput-boolean v2, p0, Lio/socket/client/Manager;->wK:Z

    .line 461
    iget-object v0, p0, Lio/socket/client/Manager;->wY:Lio/socket/f/c$c;

    new-instance v1, Lio/socket/client/Manager$2;

    invoke-direct {v1, p0, p0}, Lio/socket/client/Manager$2;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V

    invoke-virtual {v0, p1, v1}, Lio/socket/f/c$c;->a(Lio/socket/f/b;Lio/socket/f/c$c$a;)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lio/socket/client/Manager;->wU:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method close()V
    .locals 2

    .line 501
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lio/socket/client/Manager;->wI:Z

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lio/socket/client/Manager;->wJ:Z

    .line 504
    iget-object v0, p0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    sget-object v1, Lio/socket/client/Manager$ReadyState;->xv:Lio/socket/client/Manager$ReadyState;

    if-eq v0, v1, :cond_0

    .line 507
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    .line 509
    :cond_0
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0}, Lio/socket/a/a;->reset()V

    .line 510
    sget-object v0, Lio/socket/client/Manager$ReadyState;->xt:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->wG:Lio/socket/client/Manager$ReadyState;

    .line 511
    iget-object v0, p0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lio/socket/client/Manager;->wX:Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->eW()Lio/socket/engineio/client/Socket;

    :cond_1
    return-void
.end method

.method public eA()Lio/socket/client/Manager;
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->a(Lio/socket/client/Manager$b;)Lio/socket/client/Manager;

    move-result-object v0

    return-object v0
.end method

.method public final ew()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lio/socket/client/Manager;->wM:J

    return-wide v0
.end method

.method public final ex()D
    .locals 2

    .line 200
    iget-wide v0, p0, Lio/socket/client/Manager;->wO:D

    return-wide v0
.end method

.method public final ey()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lio/socket/client/Manager;->wN:J

    return-wide v0
.end method

.method public g(J)Lio/socket/client/Manager;
    .locals 1

    .line 192
    iput-wide p1, p0, Lio/socket/client/Manager;->wM:J

    .line 193
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0, p1, p2}, Lio/socket/a/a;->e(J)Lio/socket/a/a;

    :cond_0
    return-object p0
.end method

.method public h(J)Lio/socket/client/Manager;
    .locals 1

    .line 216
    iput-wide p1, p0, Lio/socket/client/Manager;->wN:J

    .line 217
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lio/socket/client/Manager;->wP:Lio/socket/a/a;

    invoke-virtual {v0, p1, p2}, Lio/socket/a/a;->f(J)Lio/socket/a/a;

    :cond_0
    return-object p0
.end method

.method public i(J)Lio/socket/client/Manager;
    .locals 0

    .line 228
    iput-wide p1, p0, Lio/socket/client/Manager;->wQ:J

    return-object p0
.end method
