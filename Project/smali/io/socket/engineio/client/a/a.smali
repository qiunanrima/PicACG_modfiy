.class public abstract Lio/socket/engineio/client/a/a;
.super Lio/socket/engineio/client/Transport;
.source "Polling.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private zk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lio/socket/engineio/client/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$a;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Transport;-><init>(Lio/socket/engineio/client/Transport$a;)V

    const-string p1, "polling"

    .line 31
    iput-object p1, p0, Lio/socket/engineio/client/a/a;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    return-object p1
.end method

.method static synthetic a(Lio/socket/engineio/client/a/a;Lio/socket/engineio/parser/b;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lio/socket/engineio/client/a/a;->a(Lio/socket/engineio/parser/b;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/a;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lio/socket/engineio/client/a/a;->zk:Z

    return p0
.end method

.method static synthetic b(Lio/socket/engineio/client/a/a;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    return-object p0
.end method

.method static synthetic b(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    return-object p1
.end method

.method static synthetic c(Lio/socket/engineio/client/a/a;)V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lio/socket/engineio/client/a/a;->eS()V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 5

    .line 111
    sget-object v0, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    const-string v1, "polling got data %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lio/socket/engineio/client/a/a$2;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/a/a$2;-><init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;)V

    .line 129
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lio/socket/engineio/parser/c;->a(Ljava/lang/String;Lio/socket/engineio/parser/c$a;)V

    goto :goto_0

    .line 133
    :cond_0
    instance-of v1, p1, [B

    if-eqz v1, :cond_1

    .line 134
    check-cast p1, [B

    invoke-static {p1, v0}, Lio/socket/engineio/parser/c;->a([BLio/socket/engineio/parser/c$a;)V

    .line 137
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->zh:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq p1, v0, :cond_3

    .line 138
    iput-boolean v4, p0, Lio/socket/engineio/client/a/a;->zk:Z

    const-string p1, "pollComplete"

    .line 139
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 141
    iget-object p1, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v0, Lio/socket/engineio/client/Transport$ReadyState;->zg:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne p1, v0, :cond_2

    .line 142
    invoke-direct {p0}, Lio/socket/engineio/client/a/a;->fe()V

    goto :goto_1

    .line 144
    :cond_2
    sget-object p1, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    const-string v0, "ignoring poll - transport state \'%s\'"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic d(Lio/socket/engineio/client/a/a;)V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lio/socket/engineio/client/a/a;->onClose()V

    return-void
.end method

.method private fe()V
    .locals 2

    .line 93
    sget-object v0, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    const-string v1, "polling"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lio/socket/engineio/client/a/a;->zk:Z

    .line 95
    invoke-virtual {p0}, Lio/socket/engineio/client/a/a;->fg()V

    const-string v0, "poll"

    const/4 v1, 0x0

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method static synthetic fh()Ljava/util/logging/Logger;
    .locals 1

    .line 17
    sget-object v0, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    new-instance v0, Lio/socket/engineio/client/a/a$1;

    invoke-direct {v0, p0, p1}, Lio/socket/engineio/client/a/a$1;-><init>(Lio/socket/engineio/client/a/a;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/socket/g/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected aL(Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lio/socket/engineio/client/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected b([Lio/socket/engineio/parser/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lio/socket/engineio/client/a/a;->za:Z

    .line 178
    new-instance v0, Lio/socket/engineio/client/a/a$4;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/a/a$4;-><init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;)V

    .line 186
    new-instance v1, Lio/socket/engineio/client/a/a$5;

    invoke-direct {v1, p0, p0, v0}, Lio/socket/engineio/client/a/a$5;-><init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;Ljava/lang/Runnable;)V

    invoke-static {p1, v1}, Lio/socket/engineio/parser/c;->a([Lio/socket/engineio/parser/b;Lio/socket/engineio/parser/c$b;)V

    return-void
.end method

.method protected c([B)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lio/socket/engineio/client/a/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract c([BLjava/lang/Runnable;)V
.end method

.method protected fc()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/socket/engineio/client/a/a;->fe()V

    return-void
.end method

.method protected fd()V
    .locals 3

    .line 152
    new-instance v0, Lio/socket/engineio/client/a/a$3;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/a/a$3;-><init>(Lio/socket/engineio/client/a/a;Lio/socket/engineio/client/a/a;)V

    .line 164
    iget-object v1, p0, Lio/socket/engineio/client/a/a;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->zg:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v1, v2, :cond_0

    .line 165
    sget-object v1, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    const-string v2, "transport open - closing"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/socket/b/a$a;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_0
    sget-object v1, Lio/socket/engineio/client/a/a;->logger:Ljava/util/logging/Logger;

    const-string v2, "transport not open - deferring close"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v1, "open"

    .line 171
    invoke-virtual {p0, v1, v0}, Lio/socket/engineio/client/a/a;->b(Ljava/lang/String;Lio/socket/b/a$a;)Lio/socket/b/a;

    :goto_0
    return-void
.end method

.method protected ff()Ljava/lang/String;
    .locals 5

    .line 195
    iget-object v0, p0, Lio/socket/engineio/client/a/a;->yk:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    :cond_0
    iget-boolean v1, p0, Lio/socket/engineio/client/a/a;->secure:Z

    if-eqz v1, :cond_1

    const-string v1, "https"

    goto :goto_0

    :cond_1
    const-string v1, "http"

    :goto_0
    const-string v2, ""

    .line 202
    iget-boolean v3, p0, Lio/socket/engineio/client/a/a;->yc:Z

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lio/socket/engineio/client/a/a;->yh:Ljava/lang/String;

    invoke-static {}, Lio/socket/h/a;->fw()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    invoke-static {v0}, Lio/socket/e/a;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget v3, p0, Lio/socket/engineio/client/a/a;->port:I

    if-lez v3, :cond_5

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lio/socket/engineio/client/a/a;->port:I

    const/16 v4, 0x1bb

    if-ne v3, v4, :cond_4

    :cond_3
    const-string v3, "http"

    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lio/socket/engineio/client/a/a;->port:I

    const/16 v4, 0x50

    if-eq v3, v4, :cond_5

    .line 210
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/socket/engineio/client/a/a;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_6
    iget-object v3, p0, Lio/socket/engineio/client/a/a;->hostname:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/socket/engineio/client/a/a;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lio/socket/engineio/client/a/a;->hostname:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/socket/engineio/client/a/a;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract fg()V
.end method
