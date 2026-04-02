.class public Lio/socket/engineio/client/Socket$a;
.super Lio/socket/engineio/client/Transport$a;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public yT:[Ljava/lang/String;

.field public yU:Ljava/lang/String;

.field public yb:Z

.field public ye:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 844
    invoke-direct {p0}, Lio/socket/engineio/client/Transport$a;-><init>()V

    const/4 v0, 0x1

    .line 854
    iput-boolean v0, p0, Lio/socket/engineio/client/Socket$a;->yb:Z

    return-void
.end method

.method private static a(Ljava/net/URI;Lio/socket/engineio/client/Socket$a;)Lio/socket/engineio/client/Socket$a;
    .locals 2

    if-nez p1, :cond_0

    .line 863
    new-instance p1, Lio/socket/engineio/client/Socket$a;

    invoke-direct {p1}, Lio/socket/engineio/client/Socket$a;-><init>()V

    .line 866
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/socket/engineio/client/Socket$a;->host:Ljava/lang/String;

    const-string v0, "https"

    .line 867
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "wss"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lio/socket/engineio/client/Socket$a;->secure:Z

    .line 868
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p1, Lio/socket/engineio/client/Socket$a;->port:I

    .line 870
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 872
    iput-object p0, p1, Lio/socket/engineio/client/Socket$a;->yU:Ljava/lang/String;

    :cond_3
    return-object p1
.end method

.method static synthetic b(Ljava/net/URI;Lio/socket/engineio/client/Socket$a;)Lio/socket/engineio/client/Socket$a;
    .locals 0

    .line 844
    invoke-static {p0, p1}, Lio/socket/engineio/client/Socket$a;->a(Ljava/net/URI;Lio/socket/engineio/client/Socket$a;)Lio/socket/engineio/client/Socket$a;

    move-result-object p0

    return-object p0
.end method
