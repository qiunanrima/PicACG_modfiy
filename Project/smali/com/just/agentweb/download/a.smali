.class public final Lcom/just/agentweb/download/a;
.super Ljava/lang/Object;
.source "CancelDownloadInformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/download/a$a;
    }
.end annotation


# instance fields
.field private fv:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/just/agentweb/download/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/just/agentweb/download/a;->fv:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/download/a;->fv:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/download/a$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/just/agentweb/download/a;-><init>()V

    return-void
.end method

.method static aG()Lcom/just/agentweb/download/a;
    .locals 1

    .line 37
    invoke-static {}, Lcom/just/agentweb/download/a$a;->aH()Lcom/just/agentweb/download/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/just/agentweb/download/b;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/just/agentweb/download/a;->fv:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method r(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/just/agentweb/download/a;->fv:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/download/b;

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Lcom/just/agentweb/download/b;->aI()V

    :cond_0
    return-void
.end method

.method s(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/just/agentweb/download/a;->fv:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
