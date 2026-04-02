.class public Lio/socket/engineio/client/a/b$a;
.super Lio/socket/b/a;
.source "PollingXHR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/a/b$a$a;
    }
.end annotation


# instance fields
.field private data:[B

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private method:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private yp:Ljavax/net/ssl/SSLContext;

.field private zA:Ljava/net/HttpURLConnection;

.field private zz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/socket/engineio/client/a/b$a$a;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lio/socket/b/a;-><init>()V

    .line 152
    iget-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->method:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "GET"

    :goto_0
    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->method:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->zz:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->zz:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->data:[B

    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->data:[B

    .line 155
    iget-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->yp:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->yp:Ljavax/net/ssl/SSLContext;

    .line 156
    iget-object v0, p1, Lio/socket/engineio/client/a/b$a$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 157
    iget-object p1, p1, Lio/socket/engineio/client/a/b$a$a;->proxy:Ljava/net/Proxy;

    iput-object p1, p0, Lio/socket/engineio/client/a/b$a;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/b$a;Ljava/lang/Exception;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lio/socket/engineio/client/a/b$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/b$a;Ljava/util/Map;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lio/socket/engineio/client/a/b$a;->c(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lio/socket/engineio/client/a/b$a;)[B
    .locals 0

    .line 132
    iget-object p0, p0, Lio/socket/engineio/client/a/b$a;->data:[B

    return-object p0
.end method

.method private aL(Ljava/lang/String;)V
    .locals 3

    const-string v0, "data"

    const/4 v1, 0x1

    .line 240
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 241
    invoke-direct {p0}, Lio/socket/engineio/client/a/b$a;->onSuccess()V

    return-void
.end method

.method static synthetic b(Lio/socket/engineio/client/a/b$a;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 132
    iget-object p0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    const/4 v1, 0x1

    .line 254
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method static synthetic c(Lio/socket/engineio/client/a/b$a;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lio/socket/engineio/client/a/b$a;->fk()V

    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "error"

    const/4 v1, 0x1

    .line 250
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "responseHeaders"

    const/4 v1, 0x1

    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method

.method private c([B)V
    .locals 3

    const-string v0, "data"

    const/4 v1, 0x1

    .line 245
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    .line 246
    invoke-direct {p0}, Lio/socket/engineio/client/a/b$a;->onSuccess()V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 262
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private fk()V
    .locals 9

    .line 273
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "application/octet-stream"

    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 277
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x400

    .line 280
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 281
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    .line 282
    new-array v7, v6, [B

    .line 283
    invoke-static {v3, v4, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v6

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 288
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 289
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lio/socket/engineio/client/a/b$a;->c([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    :goto_2
    move-object v0, v8

    goto/16 :goto_8

    :catch_0
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    :goto_3
    move-object v0, v8

    goto :goto_6

    .line 294
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 296
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 299
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/socket/engineio/client/a/b$a;->aL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    move-object v1, v2

    :goto_5
    if-eqz v0, :cond_4

    .line 305
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_4
    if-eqz v1, :cond_6

    .line 308
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v2

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v8, v2

    move-object v2, v0

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_8

    :catch_3
    move-exception v2

    move-object v0, v1

    .line 302
    :goto_6
    :try_start_6
    invoke-direct {p0, v2}, Lio/socket/engineio/client/a/b$a;->c(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_5

    .line 305
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_5
    if-eqz v0, :cond_6

    .line 308
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 310
    :catch_5
    :cond_6
    :goto_7
    invoke-direct {p0}, Lio/socket/engineio/client/a/b$a;->cleanup()V

    return-void

    :catchall_3
    move-exception v2

    :goto_8
    if-eqz v1, :cond_7

    .line 305
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :cond_7
    if-eqz v0, :cond_8

    .line 308
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 310
    :catch_7
    :cond_8
    invoke-direct {p0}, Lio/socket/engineio/client/a/b$a;->cleanup()V

    throw v2
.end method

.method private onSuccess()V
    .locals 2

    const-string v0, "success"

    const/4 v1, 0x0

    .line 236
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/socket/engineio/client/a/b$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/b/a;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 9

    .line 163
    :try_start_0
    invoke-static {}, Lio/socket/engineio/client/a/b;->fj()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "xhr open %s: %s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/socket/engineio/client/a/b$a;->method:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lio/socket/engineio/client/a/b$a;->zz:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->zz:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    iput-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    .line 167
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 175
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->yp:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->yp:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 184
    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const-string v1, "POST"

    .line 186
    iget-object v3, p0, Lio/socket/engineio/client/a/b$a;->method:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-type"

    .line 188
    new-instance v3, Ljava/util/LinkedList;

    new-array v4, v6, [Ljava/lang/String;

    const-string v7, "application/octet-stream"

    aput-object v7, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_3
    invoke-direct {p0, v0}, Lio/socket/engineio/client/a/b$a;->b(Ljava/util/Map;)V

    .line 192
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    iget-object v7, p0, Lio/socket/engineio/client/a/b$a;->zA:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_5
    invoke-static {}, Lio/socket/engineio/client/a/b;->fj()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "sending xhr with url %s | data %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/socket/engineio/client/a/b$a;->zz:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lio/socket/engineio/client/a/b$a;->data:[B

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/socket/engineio/client/a/b$a$1;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/a/b$a$1;-><init>(Lio/socket/engineio/client/a/b$a;Lio/socket/engineio/client/a/b$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    .line 169
    invoke-direct {p0, v0}, Lio/socket/engineio/client/a/b$a;->c(Ljava/lang/Exception;)V

    return-void
.end method
