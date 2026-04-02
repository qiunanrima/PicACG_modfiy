.class public Lcom/just/agentweb/ai;
.super Lcom/just/agentweb/aw;
.source "MiddlewareWebClientBase.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private eM:Lcom/just/agentweb/ai;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/just/agentweb/aw;-><init>(Landroid/webkit/WebViewClient;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/ai;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/just/agentweb/aw;-><init>(Landroid/webkit/WebViewClient;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/ai;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final ar()Lcom/just/agentweb/ai;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/just/agentweb/ai;->eM:Lcom/just/agentweb/ai;

    return-object v0
.end method

.method final c(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/just/agentweb/aw;->c(Landroid/webkit/WebViewClient;)V

    return-void
.end method
