.class public Lcom/just/agentweb/am;
.super Ljava/lang/Object;
.source "UrlLoaderImpl.java"

# interfaces
.implements Lcom/just/agentweb/t;


# instance fields
.field private cZ:Lcom/just/agentweb/q;

.field private db:Landroid/webkit/WebView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/just/agentweb/q;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/just/agentweb/am;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/just/agentweb/am;->db:Landroid/webkit/WebView;

    .line 35
    iget-object p1, p0, Lcom/just/agentweb/am;->db:Landroid/webkit/WebView;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "webview cannot be null ."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/just/agentweb/am;->cZ:Lcom/just/agentweb/q;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/just/agentweb/am;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/just/agentweb/am;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/just/agentweb/am$1;

    invoke-direct {v1, p0, p1}, Lcom/just/agentweb/am$1;-><init>(Lcom/just/agentweb/am;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/just/agentweb/h;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/just/agentweb/am;->q(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/am;->cZ:Lcom/just/agentweb/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/just/agentweb/am;->cZ:Lcom/just/agentweb/q;

    invoke-virtual {v0}, Lcom/just/agentweb/q;->ai()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/am;->db:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/just/agentweb/am;->cZ:Lcom/just/agentweb/q;

    invoke-virtual {v1}, Lcom/just/agentweb/q;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/just/agentweb/am;->db:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
