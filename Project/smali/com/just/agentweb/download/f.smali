.class public Lcom/just/agentweb/download/f;
.super Landroid/os/AsyncTask;
.source "Downloader.java"

# interfaces
.implements Lcom/just/agentweb/download/AgentWebDownloader;
.implements Lcom/just/agentweb/download/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/download/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/just/agentweb/download/AgentWebDownloader<",
        "Lcom/just/agentweb/download/DownloadTask;",
        ">;",
        "Lcom/just/agentweb/download/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "f"

.field private static final gh:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile fT:Lcom/just/agentweb/download/DownloadTask;

.field private volatile fU:J

.field private volatile fV:J

.field private fW:J

.field private fX:J

.field private fY:J

.field private volatile fZ:J

.field private volatile ga:J

.field private volatile gb:Ljava/lang/Throwable;

.field private gc:J

.field private gd:I

.field private ge:Lcom/just/agentweb/download/e;

.field private gf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private gg:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    .line 141
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Network connection error . "

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Response code non-200 or non-206 . "

    const/16 v2, 0x401

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Insufficient memory space . "

    const/16 v2, 0x402

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Shutdown . "

    const/16 v2, 0x405

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Download time is overtime . "

    const/16 v2, 0x403

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "The user canceled the download . "

    const/16 v2, 0x404

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "IO Error . "

    const/16 v2, 0x407

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Service Unavailable . "

    const/16 v2, 0x503

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Too many redirects . "

    const/16 v2, 0x406

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    const-string v1, "Download successful . "

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 153
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fU:J

    const-wide/16 v2, -0x1

    .line 69
    iput-wide v2, p0, Lcom/just/agentweb/download/f;->fV:J

    .line 73
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fW:J

    .line 77
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fX:J

    .line 81
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fY:J

    .line 85
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fZ:J

    .line 89
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->ga:J

    const-wide v0, 0x7fffffffffffffffL

    .line 97
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->gc:J

    const/16 v0, 0x2710

    .line 101
    iput v0, p0, Lcom/just/agentweb/download/f;->gd:I

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/just/agentweb/download/f;->gf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/just/agentweb/download/f;->gg:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 471
    new-array v1, v0, [B

    .line 473
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    if-eqz p3, :cond_0

    .line 478
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :catchall_0
    move-exception p3

    goto :goto_2

    :cond_0
    const-wide/16 v3, 0x0

    .line 480
    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 481
    iput-wide v3, p0, Lcom/just/agentweb/download/f;->fW:J

    .line 485
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/just/agentweb/download/f;->gf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/just/agentweb/download/f;->gg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x0

    .line 486
    invoke-virtual {v2, v1, p3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 490
    :cond_2
    invoke-virtual {p2, v1, p3, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/just/agentweb/download/f;->fZ:J

    const/4 p3, 0x0

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/just/agentweb/download/f;->gc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p3, v3, v5

    if-lez p3, :cond_1

    const/16 p3, 0x403

    .line 506
    invoke-static {p2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 507
    invoke-static {v2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 508
    invoke-static {p1}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    return p3

    .line 498
    :cond_3
    :goto_1
    :try_start_1
    iget-object p3, p0, Lcom/just/agentweb/download/f;->gf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_4

    const/16 p3, 0x404

    .line 506
    invoke-static {p2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 507
    invoke-static {v2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 508
    invoke-static {p1}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    return p3

    .line 501
    :cond_4
    :try_start_2
    iget-object p3, p0, Lcom/just/agentweb/download/f;->gg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_5

    const/16 p3, 0x405

    .line 506
    invoke-static {p2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 507
    invoke-static {v2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 508
    invoke-static {p1}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    return p3

    :cond_5
    const/16 p3, 0x200

    .line 506
    invoke-static {p2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 507
    invoke-static {v2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 508
    invoke-static {p1}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    return p3

    .line 506
    :goto_2
    invoke-static {p2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 507
    invoke-static {v2}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    .line 508
    invoke-static {p1}, Lcom/just/agentweb/h;->a(Ljava/io/Closeable;)V

    throw p3
.end method

.method static synthetic a(Lcom/just/agentweb/download/f;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/just/agentweb/download/f;->fU:J

    return-wide v0
.end method

.method static synthetic a(Lcom/just/agentweb/download/f;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/just/agentweb/download/f;->fU:J

    return-wide p1
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/lang/String;)J
    .locals 2

    .line 283
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    .line 285
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 287
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 288
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    return-wide v0
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 319
    iget v1, p0, Lcom/just/agentweb/download/f;->gd:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 321
    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->ay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Accept"

    const-string v2, "application/*"

    .line 322
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    .line 323
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "close"

    .line 324
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cookie"

    .line 325
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/just/agentweb/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aT()Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExtraServiceImpl;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    .line 339
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->getEtag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 340
    sget-object v1, Lcom/just/agentweb/download/f;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Etag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "If-Match"

    .line 341
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "Range"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v2}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/just/agentweb/download/f;->fW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method static synthetic a(Lcom/just/agentweb/download/f;[Ljava/lang/Object;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/just/agentweb/download/f;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "ETag"

    .line 295
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    sget-object v0, Lcom/just/agentweb/download/f;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save etag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AgentWeb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private aY()Z
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getLength()J

    move-result-wide v0

    iget-object v2, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v2}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/just/agentweb/h;->N()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 179
    sget-object v0, Lcom/just/agentweb/download/f;->TAG:Ljava/lang/String;

    const-string v1, " \u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private aZ()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/h;->g(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/h;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/just/agentweb/download/DownloadTask;)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/Integer;)Z
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    sget-object p1, Lcom/just/agentweb/download/f;->TAG:Ljava/lang/String;

    const-string v0, "DownloadListener has been death"

    invoke-static {p1, v0}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->aN()Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    move-result-object p1

    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 449
    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 453
    invoke-virtual {v2}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/just/agentweb/download/f;->gb:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download failed \uff0c cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    .line 455
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/download/f;->gb:Ljava/lang/Throwable;

    .line 452
    :goto_0
    invoke-interface {v0, v1, v2, p1}, Lcom/just/agentweb/download/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private ba()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x7

    if-gt v0, v5, :cond_11

    if-eqz v2, :cond_0

    .line 226
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_5

    .line 228
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/just/agentweb/download/f;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const-string v2, "chunked"

    const-string v5, "Transfer-Encoding"

    .line 232
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "Content-Length"

    .line 234
    invoke-direct {p0, v0, v5}, Lcom/just/agentweb/download/f;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-nez v10, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v2, :cond_3

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v8, 0x1

    :goto_4
    const/16 v10, 0x407

    if-eqz v8, :cond_5

    .line 238
    sget-object v1, Lcom/just/agentweb/download/f;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t know size of download, giving up ,  EncodingChunked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  hasLength:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return v10

    .line 244
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_e

    const/16 v7, 0xce

    if-eq v2, v7, :cond_a

    const/16 v5, 0x133

    if-eq v2, v5, :cond_9

    const/16 v5, 0x1f4

    if-eq v2, v5, :cond_7

    const/16 v5, 0x1f7

    if-eq v2, v5, :cond_7

    packed-switch v2, :pswitch_data_0

    const/16 v1, 0x401

    if-eqz v0, :cond_6

    .line 277
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return v1

    :cond_7
    const/16 v1, 0x503

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    return v1

    :cond_9
    :pswitch_0
    :try_start_3
    const-string v2, "Location"

    .line 264
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v2, v0

    move v0, v4

    move-object v3, v5

    goto/16 :goto_0

    .line 254
    :cond_a
    iget-object v2, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v2}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v4, 0x0

    add-long/2addr v5, v2

    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fV:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v4, v5, v2

    if-eqz v4, :cond_c

    if-eqz v0, :cond_b

    .line 277
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return v10

    .line 257
    :cond_c
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lcom/just/agentweb/download/f$a;

    iget-object v4, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 258
    invoke-virtual {v4}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/just/agentweb/download/f$a;-><init>(Lcom/just/agentweb/download/f;Ljava/io/File;)V

    .line 257
    invoke-direct {p0, v2, v3, v1}, Lcom/just/agentweb/download/f;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Z)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_d

    .line 277
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return v1

    .line 248
    :cond_e
    :try_start_5
    invoke-direct {p0, v0}, Lcom/just/agentweb/download/f;->a(Ljava/net/HttpURLConnection;)V

    .line 249
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/just/agentweb/download/f$a;

    iget-object v3, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 250
    invoke-virtual {v3}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/just/agentweb/download/f$a;-><init>(Lcom/just/agentweb/download/f;Ljava/io/File;)V

    .line 249
    invoke-direct {p0, v1, v2, v9}, Lcom/just/agentweb/download/f;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Z)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_f

    .line 277
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    return v1

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v1

    :cond_11
    const/16 v0, 0x406

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bb()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->aA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    new-instance v1, Lcom/just/agentweb/download/e;

    iget-object v2, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v2}, Lcom/just/agentweb/download/DownloadTask;->getId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/just/agentweb/download/e;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    .line 465
    iget-object v0, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/just/agentweb/download/e;->a(Lcom/just/agentweb/download/DownloadTask;)V

    :cond_0
    return-void
.end method

.method private final cancel()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/just/agentweb/download/f;->gf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final d(Lcom/just/agentweb/download/DownloadTask;)V
    .locals 2

    .line 546
    invoke-direct {p0, p1}, Lcom/just/agentweb/download/f;->b(Lcom/just/agentweb/download/DownloadTask;)V

    .line 547
    iput-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 548
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fV:J

    .line 549
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/just/agentweb/download/f;->gc:J

    .line 550
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aC()I

    move-result v0

    iput v0, p0, Lcom/just/agentweb/download/f;->gd:I

    .line 552
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aD()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    invoke-static {}, Lcom/just/agentweb/download/i;->bd()Lcom/just/agentweb/download/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/just/agentweb/download/i;->be()Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lcom/just/agentweb/download/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 555
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/download/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private getEtag()Ljava/lang/String;
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AgentWeb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .line 198
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fZ:J

    .line 199
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->aY()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x402

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->aZ()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x400

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->ba()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    iput-object p1, p0, Lcom/just/agentweb/download/f;->gb:Ljava/lang/Throwable;

    .line 208
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/16 p1, 0x407

    .line 213
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 9

    .line 386
    :try_start_0
    invoke-static {}, Lcom/just/agentweb/download/a;->aG()Lcom/just/agentweb/download/a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/download/a;->s(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 390
    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v1

    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 391
    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/just/agentweb/download/f;->fW:J

    iget-wide v5, p0, Lcom/just/agentweb/download/f;->fU:J

    const/4 v0, 0x0

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/just/agentweb/download/f;->fV:J

    iget-wide v7, p0, Lcom/just/agentweb/download/f;->fX:J

    invoke-virtual/range {v1 .. v8}, Lcom/just/agentweb/download/d;->a(Ljava/lang/String;JJJ)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/just/agentweb/download/d;->b(Ljava/lang/String;Lcom/just/agentweb/download/h;)V

    .line 398
    :cond_1
    sget-object v0, Lcom/just/agentweb/download/f;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/just/agentweb/download/f;->gh:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/just/agentweb/download/f;->b(Ljava/lang/Integer;)Z

    move-result v0

    .line 401
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x200

    if-le p1, v1, :cond_4

    .line 403
    iget-object p1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    if-eqz p1, :cond_2

    .line 404
    iget-object p1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    invoke-virtual {p1}, Lcom/just/agentweb/download/e;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz p1, :cond_3

    .line 438
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->destroy()V

    :cond_3
    return-void

    .line 409
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aA()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    .line 411
    iget-object p1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    invoke-virtual {p1}, Lcom/just/agentweb/download/e;->cancel()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz p1, :cond_5

    .line 438
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->destroy()V

    :cond_5
    return-void

    .line 415
    :cond_6
    :try_start_2
    iget-object p1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    if-eqz p1, :cond_7

    .line 416
    iget-object p1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    invoke-virtual {p1}, Lcom/just/agentweb/download/e;->aS()V

    .line 421
    :cond_7
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aF()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_9

    .line 437
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz p1, :cond_8

    .line 438
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->destroy()V

    :cond_8
    return-void

    .line 424
    :cond_9
    :try_start_3
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aV()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/just/agentweb/h;->c(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_b

    .line 437
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz p1, :cond_a

    .line 438
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->destroy()V

    :cond_a
    return-void

    .line 428
    :cond_b
    :try_start_4
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const/high16 v0, 0x10000000

    .line 429
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 437
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz p1, :cond_e

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 433
    :try_start_5
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 437
    :cond_d
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz p1, :cond_e

    .line 438
    :goto_0
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->destroy()V

    :cond_e
    return-void

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    if-eqz v0, :cond_f

    .line 438
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->destroy()V

    :cond_f
    throw p1
.end method

.method protected varargs declared-synchronized a([Ljava/lang/Integer;)V
    .locals 8

    monitor-enter p0

    .line 354
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 355
    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fZ:J

    const/4 p1, 0x0

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/just/agentweb/download/f;->fX:J

    .line 356
    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fX:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 357
    iput-wide v4, p0, Lcom/just/agentweb/download/f;->ga:J

    goto :goto_0

    .line 359
    :cond_0
    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fU:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/just/agentweb/download/f;->fX:J

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/just/agentweb/download/f;->ga:J

    .line 362
    :goto_0
    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fY:J
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    .line 363
    monitor-exit p0

    return-void

    .line 365
    :cond_1
    :try_start_1
    iput-wide v0, p0, Lcom/just/agentweb/download/f;->fY:J

    .line 366
    iget-object p1, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    if-eqz p1, :cond_2

    .line 367
    iget-wide v0, p0, Lcom/just/agentweb/download/f;->fW:J

    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fU:J

    const/4 p1, 0x0

    add-long/2addr v0, v2

    long-to-float p1, v0

    iget-wide v0, p0, Lcom/just/agentweb/download/f;->fV:J

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 368
    iget-object v0, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    invoke-virtual {v0, p1}, Lcom/just/agentweb/download/e;->f(I)V

    .line 370
    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 371
    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 372
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    iget-object p1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    .line 373
    invoke-virtual {p1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/just/agentweb/download/f;->fW:J

    iget-wide v4, p0, Lcom/just/agentweb/download/f;->fU:J

    const/4 p1, 0x0

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/just/agentweb/download/f;->fV:J

    iget-wide v6, p0, Lcom/just/agentweb/download/f;->fX:J

    invoke-virtual/range {v0 .. v7}, Lcom/just/agentweb/download/d;->a(Ljava/lang/String;JJJ)V
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 376
    :try_start_2
    invoke-virtual {p1}, Ljava/util/UnknownFormatConversionException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 353
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public aI()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->cancel()V

    return-void
.end method

.method public c(Lcom/just/agentweb/download/DownloadTask;)V
    .locals 0

    .line 542
    invoke-direct {p0, p1}, Lcom/just/agentweb/download/f;->d(Lcom/just/agentweb/download/DownloadTask;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/download/f;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/download/f;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 165
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v0}, Lcom/just/agentweb/download/DownloadTask;->aX()Lcom/just/agentweb/download/d;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/just/agentweb/download/d;->a(Ljava/lang/String;Lcom/just/agentweb/download/h;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/just/agentweb/download/a;->aG()Lcom/just/agentweb/download/a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/download/f;->fT:Lcom/just/agentweb/download/DownloadTask;

    invoke-virtual {v1}, Lcom/just/agentweb/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/just/agentweb/download/a;->a(Ljava/lang/String;Lcom/just/agentweb/download/b;)V

    .line 170
    invoke-direct {p0}, Lcom/just/agentweb/download/f;->bb()V

    .line 171
    iget-object v0, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/just/agentweb/download/f;->ge:Lcom/just/agentweb/download/e;

    invoke-virtual {v0}, Lcom/just/agentweb/download/e;->aR()V

    :cond_1
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/download/f;->a([Ljava/lang/Integer;)V

    return-void
.end method
