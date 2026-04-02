.class public Lcom/just/agentweb/o;
.super Ljava/lang/Object;
.source "DefaultWebLifeCycleImpl.java"

# interfaces
.implements Lcom/just/agentweb/aq;


# instance fields
.field private db:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/just/agentweb/h;->c(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/o;->db:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_1
    return-void
.end method
