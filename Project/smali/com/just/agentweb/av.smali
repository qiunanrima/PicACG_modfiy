.class public Lcom/just/agentweb/av;
.super Ljava/lang/Object;
.source "WebSecurityLogicImpl.java"

# interfaces
.implements Lcom/just/agentweb/as;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/av;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static ax()Lcom/just/agentweb/av;
    .locals 1

    .line 31
    new-instance v0, Lcom/just/agentweb/av;

    invoke-direct {v0}, Lcom/just/agentweb/av;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/util/ArrayMap;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/just/agentweb/AgentWeb$SecurityType;",
            ")V"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->dq:Lcom/just/agentweb/AgentWeb$SecurityType;

    if-ne p2, v0, :cond_0

    sget p2, Lcom/just/agentweb/c;->dv:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p2, v0, :cond_0

    .line 53
    iget-object p2, p0, Lcom/just/agentweb/av;->TAG:Ljava/lang/String;

    const-string v0, "Give up all inject objects"

    invoke-static {p2, v0}, Lcom/just/agentweb/ag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 56
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-void
.end method

.method public j(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "searchBoxJavaBridge_"

    .line 42
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 43
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 44
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
