.class public Lio/socket/client/b;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/b$a;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final wA:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/socket/client/Manager;",
            ">;"
        }
    .end annotation
.end field

.field public static wB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lio/socket/client/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/b;->logger:Ljava/util/logging/Logger;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/socket/client/b;->wA:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    sget v0, Lio/socket/f/c;->wB:I

    sput v0, Lio/socket/client/b;->wB:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lio/socket/client/b$a;)Lio/socket/client/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/socket/client/b;->a(Ljava/net/URI;Lio/socket/client/b$a;)Lio/socket/client/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/URI;Lio/socket/client/b$a;)Lio/socket/client/d;
    .locals 6

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Lio/socket/client/b$a;

    invoke-direct {p1}, Lio/socket/client/b$a;-><init>()V

    .line 60
    :cond_0
    invoke-static {p0}, Lio/socket/client/e;->a(Ljava/net/URI;)Ljava/net/URL;

    move-result-object p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-static {p0}, Lio/socket/client/e;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 69
    sget-object v3, Lio/socket/client/b;->wA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Lio/socket/client/b;->wA:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/socket/client/Manager;

    iget-object v3, v3, Lio/socket/client/Manager;->xa:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 71
    :goto_0
    iget-boolean v3, p1, Lio/socket/client/b$a;->wC:Z

    if-nez v3, :cond_3

    iget-boolean v3, p1, Lio/socket/client/b$a;->wD:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    .line 75
    sget-object v1, Lio/socket/client/b;->logger:Ljava/util/logging/Logger;

    const-string v2, "ignoring socket cache for %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lio/socket/client/Manager;

    invoke-direct {v1, v0, p1}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$c;)V

    goto :goto_3

    .line 78
    :cond_4
    sget-object v2, Lio/socket/client/b;->wA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 79
    sget-object v2, Lio/socket/client/b;->logger:Ljava/util/logging/Logger;

    const-string v3, "new io instance for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 80
    sget-object v2, Lio/socket/client/b;->wA:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lio/socket/client/Manager;

    invoke-direct {v3, v0, p1}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$c;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_5
    sget-object p1, Lio/socket/client/b;->wA:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/socket/client/Manager;

    .line 85
    :goto_3
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/socket/client/Manager;->aE(Ljava/lang/String;)Lio/socket/client/d;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static aE(Ljava/lang/String;)Lio/socket/client/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, v0}, Lio/socket/client/b;->a(Ljava/lang/String;Lio/socket/client/b$a;)Lio/socket/client/d;

    move-result-object p0

    return-object p0
.end method
