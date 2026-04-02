.class public Lcom/just/agentweb/aa;
.super Lcom/just/agentweb/j;
.source "JsAccessEntraceImpl.java"


# instance fields
.field private db:Landroid/webkit/WebView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/just/agentweb/j;-><init>(Landroid/webkit/WebView;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/just/agentweb/aa;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/just/agentweb/aa;->db:Landroid/webkit/WebView;

    return-void
.end method

.method private c(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/just/agentweb/aa;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/just/agentweb/aa$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/just/agentweb/aa$1;-><init>(Lcom/just/agentweb/aa;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static h(Landroid/webkit/WebView;)Lcom/just/agentweb/aa;
    .locals 1

    .line 37
    new-instance v0, Lcom/just/agentweb/aa;

    invoke-direct {v0, p0}, Lcom/just/agentweb/aa;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/aa;->c(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/j;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
