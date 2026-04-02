.class Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "DefaultDownloadImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/download/DefaultDownloadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecuteTasksMap"
.end annotation


# static fields
.field private static volatile fJ:Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;


# instance fields
.field private fI:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    .line 445
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    return-void
.end method

.method static aN()Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;
    .locals 2

    .line 451
    sget-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fJ:Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    if-nez v0, :cond_1

    .line 452
    const-class v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    monitor-enter v0

    .line 453
    :try_start_0
    sget-object v1, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fJ:Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    if-nez v1, :cond_0

    .line 454
    new-instance v1, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    invoke-direct {v1}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;-><init>()V

    sput-object v1, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fJ:Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    .line 456
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 458
    :cond_1
    :goto_0
    sget-object v0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fJ:Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;

    return-object v0
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .locals 1

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 493
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 481
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object p1, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method u(Ljava/lang/String;)V
    .locals 1

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 466
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 469
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->fI:Ljava/util/LinkedList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/just/agentweb/download/DefaultDownloadImpl$ExecuteTasksMap;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method
