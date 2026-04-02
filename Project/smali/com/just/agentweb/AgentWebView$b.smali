.class public Lcom/just/agentweb/AgentWebView$b;
.super Lcom/just/agentweb/ai;
.source "AgentWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private dL:Lcom/just/agentweb/AgentWebView;


# direct methods
.method private constructor <init>(Lcom/just/agentweb/AgentWebView;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/just/agentweb/ai;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/AgentWebView;Lcom/just/agentweb/AgentWebView$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWebView$b;-><init>(Lcom/just/agentweb/AgentWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 287
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 288
    iget-object p2, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-static {p2}, Lcom/just/agentweb/AgentWebView;->e(Lcom/just/agentweb/AgentWebView;)Lcom/just/agentweb/AgentWebView$c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/just/agentweb/AgentWebView$c;->f(Landroid/webkit/WebView;)V

    .line 289
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 290
    invoke-static {}, Lcom/just/agentweb/AgentWebView;->V()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished.url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/ai;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 272
    iget-object p3, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-static {p3}, Lcom/just/agentweb/AgentWebView;->a(Lcom/just/agentweb/AgentWebView;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 273
    iget-object p3, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-static {p3}, Lcom/just/agentweb/AgentWebView;->b(Lcom/just/agentweb/AgentWebView;)V

    .line 274
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 275
    invoke-static {}, Lcom/just/agentweb/AgentWebView;->V()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectJavaScript, onPageStarted.url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-static {p1}, Lcom/just/agentweb/AgentWebView;->c(Lcom/just/agentweb/AgentWebView;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-static {p1}, Lcom/just/agentweb/AgentWebView;->d(Lcom/just/agentweb/AgentWebView;)V

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-static {p1}, Lcom/just/agentweb/AgentWebView;->e(Lcom/just/agentweb/AgentWebView;)Lcom/just/agentweb/AgentWebView$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/just/agentweb/AgentWebView$c;->W()V

    .line 282
    iget-object p1, p0, Lcom/just/agentweb/AgentWebView$b;->dL:Lcom/just/agentweb/AgentWebView;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AgentWebView;->e(Ljava/lang/String;)V

    return-void
.end method
