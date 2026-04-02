.class public final Lcom/qiniu/android/dns/a;
.super Ljava/lang/Object;
.source "DnsManager.java"


# instance fields
.field private volatile index:I

.field private final uS:[Lcom/qiniu/android/dns/b;

.field private final uT:Lcom/qiniu/android/dns/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/dns/util/LruCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uU:Lcom/qiniu/android/dns/NetworkInfo;


# direct methods
.method private clearCache()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/qiniu/android/dns/a;->uT:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/dns/a;->uT:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v1}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    .line 269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/qiniu/android/dns/NetworkInfo;)V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/qiniu/android/dns/a;->clearCache()V

    if-nez p1, :cond_0

    .line 260
    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->uW:Lcom/qiniu/android/dns/NetworkInfo;

    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/dns/a;->uU:Lcom/qiniu/android/dns/NetworkInfo;

    .line 261
    iget-object p1, p0, Lcom/qiniu/android/dns/a;->uS:[Lcom/qiniu/android/dns/b;

    monitor-enter p1

    const/4 v0, 0x0

    .line 262
    :try_start_0
    iput v0, p0, Lcom/qiniu/android/dns/a;->index:I

    .line 263
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
