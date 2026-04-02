.class public Lcom/just/agentweb/g;
.super Lcom/just/agentweb/b;
.source "AgentWebUIControllerImplBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/just/agentweb/b;-><init>()V

    return-void
.end method

.method public static M()Lcom/just/agentweb/b;
    .locals 1

    .line 35
    new-instance v0, Lcom/just/agentweb/g;

    invoke-direct {v0}, Lcom/just/agentweb/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .locals 6

    .line 65
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/b;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/just/agentweb/b;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/b;->b(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/just/agentweb/g;->p()Lcom/just/agentweb/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/just/agentweb/b;->q()V

    return-void
.end method
