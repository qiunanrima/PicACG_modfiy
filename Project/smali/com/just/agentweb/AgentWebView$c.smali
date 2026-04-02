.class Lcom/just/agentweb/AgentWebView$c;
.super Ljava/lang/Object;
.source "AgentWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private cz:Landroid/webkit/WebChromeClient;

.field private dM:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/AgentWebView$1;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Lcom/just/agentweb/AgentWebView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public W()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/just/agentweb/AgentWebView$c;->dM:Z

    return-void
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/just/agentweb/AgentWebView$c;->dM:Z

    return-void
.end method

.method public f(Landroid/webkit/WebView;)V
    .locals 3

    .line 364
    iget-boolean v0, p0, Lcom/just/agentweb/AgentWebView$c;->dM:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/AgentWebView$c;->cz:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 368
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 370
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-lez v1, :cond_1

    .line 376
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 377
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/just/agentweb/AgentWebView$c;->cz:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/just/agentweb/AgentWebView$c;->cz:Landroid/webkit/WebChromeClient;

    return-void
.end method
