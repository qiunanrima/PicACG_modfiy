.class public Lcom/just/agentweb/f;
.super Lcom/just/agentweb/a;
.source "AgentWebSettingsImpl.java"


# instance fields
.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/just/agentweb/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/ar;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.just.agentweb.download.DefaultDownloadImpl"

    .line 42
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "create"

    const/4 v3, 0x5

    .line 43
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/webkit/WebView;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "com.just.agentweb.download.c"

    .line 45
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "com.just.agentweb.download.g"

    .line 46
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Lcom/just/agentweb/aj;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    .line 44
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    aput-object v0, v2, v8

    aput-object v0, v2, v9

    iget-object v3, p0, Lcom/just/agentweb/f;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 49
    invoke-virtual {v3}, Lcom/just/agentweb/AgentWeb;->w()Lcom/just/agentweb/aj;

    move-result-object v3

    aput-object v3, v2, v10

    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 52
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    move-object p2, v0

    check-cast p2, Landroid/webkit/DownloadListener;

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/a;->a(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/ar;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/just/agentweb/AgentWeb;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/just/agentweb/f;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-void
.end method
