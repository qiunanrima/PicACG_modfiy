.class public Lcom/just/agentweb/ah;
.super Lcom/just/agentweb/ao;
.source "MiddlewareWebChromeBase.java"


# instance fields
.field private eL:Lcom/just/agentweb/ah;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/just/agentweb/ao;-><init>(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected constructor <init>(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/just/agentweb/ao;-><init>(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/just/agentweb/ao;->a(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method final aq()Lcom/just/agentweb/ah;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/just/agentweb/ah;->eL:Lcom/just/agentweb/ah;

    return-object v0
.end method
