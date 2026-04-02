.class public Lcom/just/agentweb/download/i;
.super Ljava/lang/Object;
.source "ExecutorProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/download/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CORE_POOL_SIZE:I

.field private final MAXIMUM_POOL_SIZE:I

.field public TAG:Ljava/lang/String;

.field private final gj:I

.field private final gk:I

.field private gl:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/just/agentweb/download/i;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lcom/just/agentweb/download/i;->gj:I

    .line 21
    iget v0, p0, Lcom/just/agentweb/download/i;->gj:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/just/agentweb/download/i;->CORE_POOL_SIZE:I

    .line 22
    iget v0, p0, Lcom/just/agentweb/download/i;->gj:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/just/agentweb/download/i;->MAXIMUM_POOL_SIZE:I

    const/16 v0, 0xf

    .line 23
    iput v0, p0, Lcom/just/agentweb/download/i;->gk:I

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/download/i;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/just/agentweb/download/i$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/download/i$1;-><init>(Lcom/just/agentweb/download/i;)V

    iput-object v0, p0, Lcom/just/agentweb/download/i;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 47
    invoke-direct {p0}, Lcom/just/agentweb/download/i;->bc()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/download/i$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/just/agentweb/download/i;-><init>()V

    return-void
.end method

.method private bc()V
    .locals 9

    .line 51
    iget-object v0, p0, Lcom/just/agentweb/download/i;->gl:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/download/i;->gl:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/just/agentweb/download/i;->gl:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 54
    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/just/agentweb/download/i;->CORE_POOL_SIZE:I

    iget v3, p0, Lcom/just/agentweb/download/i;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/just/agentweb/download/i;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/just/agentweb/download/i;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/just/agentweb/download/i;->gl:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    iget-object v0, p0, Lcom/just/agentweb/download/i;->gl:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method static bd()Lcom/just/agentweb/download/i;
    .locals 1

    .line 62
    invoke-static {}, Lcom/just/agentweb/download/i$a;->bf()Lcom/just/agentweb/download/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public be()Ljava/util/concurrent/Executor;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/just/agentweb/download/i;->gl:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
