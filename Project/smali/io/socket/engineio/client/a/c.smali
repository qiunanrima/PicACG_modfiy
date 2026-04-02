.class public Lio/socket/engineio/client/a/c;
.super Lio/socket/engineio/client/Transport;
.source "WebSocket.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private zD:Lokhttp3/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lio/socket/engineio/client/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/a/c;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$a;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Transport;-><init>(Lio/socket/engineio/client/Transport$a;)V

    const-string p1, "websocket"

    .line 34
    iput-object p1, p0, Lio/socket/engineio/client/a/c;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/c;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/a/c;->b(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/socket/engineio/client/a/c;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lio/socket/engineio/client/a/c;->eS()V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/c;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/socket/engineio/client/a/c;->aL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/c;[B)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/socket/engineio/client/a/c;->c([B)V

    return-void
.end method

.method static synthetic b(Lio/socket/engineio/client/a/c;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lio/socket/engineio/client/a/c;->onClose()V

    return-void
.end method

.method static synthetic c(Lio/socket/engineio/client/a/c;)Lokhttp3/WebSocket;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/socket/engineio/client/a/c;->zD:Lokhttp3/WebSocket;

    return-object p0
.end method

.method static synthetic fl()Ljava/util/logging/Logger;
    .locals 1

    .line 24
    sget-object v0, Lio/socket/engineio/client/a/c;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected b([Lio/socket/engineio/parser/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lio/socket/engineio/client/a/c;->za:Z

    .line 147
    new-instance v1, Lio/socket/engineio/client/a/c$3;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/a/c$3;-><init>(Lio/socket/engineio/client/a/c;Lio/socket/engineio/client/a/c;)V

    const/4 v2, 0x1

    .line 162
    new-array v2, v2, [I

    array-length v3, p1

    aput v3, v2, v0

    .line 163
    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 164
    iget-object v5, p0, Lio/socket/engineio/client/a/c;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v6, Lio/socket/engineio/client/Transport$ReadyState;->zf:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lio/socket/engineio/client/a/c;->zc:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v6, Lio/socket/engineio/client/Transport$ReadyState;->zg:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    new-instance v5, Lio/socket/engineio/client/a/c$4;

    invoke-direct {v5, p0, p0, v2, v1}, Lio/socket/engineio/client/a/c$4;-><init>(Lio/socket/engineio/client/a/c;Lio/socket/engineio/client/a/c;[ILjava/lang/Runnable;)V

    invoke-static {v4, v5}, Lio/socket/engineio/parser/c;->a(Lio/socket/engineio/parser/b;Lio/socket/engineio/parser/c$b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected fc()V
    .locals 7

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const-string v1, "requestHeaders"

    const/4 v2, 0x1

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lio/socket/engineio/client/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 42
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    .line 44
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->yp:Ljavax/net/ssl/SSLContext;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->yp:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    :cond_0
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 55
    :cond_1
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2

    .line 56
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    :cond_2
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->yq:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/socket/engineio/client/a/c;->yq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    iget-object v2, p0, Lio/socket/engineio/client/a/c;->yq:Ljava/lang/String;

    iget-object v3, p0, Lio/socket/engineio/client/a/c;->yr:Ljava/lang/String;

    invoke-static {v2, v3}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Lio/socket/engineio/client/a/c$1;

    invoke-direct {v3, p0, v2}, Lio/socket/engineio/client/a/c$1;-><init>(Lio/socket/engineio/client/a/c;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 70
    :cond_3
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lio/socket/engineio/client/a/c;->ff()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 78
    new-instance v2, Lio/socket/engineio/client/a/c$2;

    invoke-direct {v2, p0, p0}, Lio/socket/engineio/client/a/c$2;-><init>(Lio/socket/engineio/client/a/c;Lio/socket/engineio/client/a/c;)V

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/a/c;->zD:Lokhttp3/WebSocket;

    .line 140
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method protected fd()V
    .locals 3

    .line 189
    iget-object v0, p0, Lio/socket/engineio/client/a/c;->zD:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    iget-object v0, p0, Lio/socket/engineio/client/a/c;->zD:Lokhttp3/WebSocket;

    const/16 v1, 0x3e8

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/socket/engineio/client/a/c;->zD:Lokhttp3/WebSocket;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lio/socket/engineio/client/a/c;->zD:Lokhttp3/WebSocket;

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    :cond_1
    return-void
.end method

.method protected ff()Ljava/lang/String;
    .locals 5

    .line 202
    iget-object v0, p0, Lio/socket/engineio/client/a/c;->yk:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    :cond_0
    iget-boolean v1, p0, Lio/socket/engineio/client/a/c;->secure:Z

    if-eqz v1, :cond_1

    const-string v1, "wss"

    goto :goto_0

    :cond_1
    const-string v1, "ws"

    :goto_0
    const-string v2, ""

    .line 209
    iget v3, p0, Lio/socket/engineio/client/a/c;->port:I

    if-lez v3, :cond_4

    const-string v3, "wss"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lio/socket/engineio/client/a/c;->port:I

    const/16 v4, 0x1bb

    if-ne v3, v4, :cond_3

    :cond_2
    const-string v3, "ws"

    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lio/socket/engineio/client/a/c;->port:I

    const/16 v4, 0x50

    if-eq v3, v4, :cond_4

    .line 211
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/socket/engineio/client/a/c;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_4
    iget-boolean v3, p0, Lio/socket/engineio/client/a/c;->yc:Z

    if-eqz v3, :cond_5

    .line 215
    iget-object v3, p0, Lio/socket/engineio/client/a/c;->yh:Ljava/lang/String;

    invoke-static {}, Lio/socket/h/a;->fw()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_5
    invoke-static {v0}, Lio/socket/e/a;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_6
    iget-object v3, p0, Lio/socket/engineio/client/a/c;->hostname:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 224
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

    iget-object v3, p0, Lio/socket/engineio/client/a/c;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lio/socket/engineio/client/a/c;->hostname:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/socket/engineio/client/a/c;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
