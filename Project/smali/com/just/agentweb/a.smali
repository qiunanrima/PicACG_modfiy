.class public abstract Lcom/just/agentweb/a;
.super Ljava/lang/Object;
.source "AbsAgentWebSettings.java"

# interfaces
.implements Lcom/just/agentweb/ar;
.implements Lcom/just/agentweb/r;


# static fields
.field private static final TAG:Ljava/lang/String; = "a"


# instance fields
.field private ck:Landroid/webkit/WebSettings;

.field protected mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/webkit/WebView;)V
    .locals 7

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    .line 71
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 73
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 74
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/h;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 83
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/16 v5, 0x13

    const/4 v6, 0x0

    if-lt v0, v3, :cond_1

    .line 85
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 86
    invoke-virtual {p1, v4, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 87
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 88
    invoke-virtual {p1, v4, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 89
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_3

    .line 90
    invoke-virtual {p1, v1, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 94
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 97
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 99
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 101
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    .line 104
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 106
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_5

    .line 111
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_2

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 116
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 117
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 119
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 121
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 122
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/just/agentweb/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   appcache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/just/agentweb/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 135
    iget-object p1, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Lcom/just/agentweb/a;->n()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " agentweb/4.0.2 "

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " UCBrowser/11.6.4.950 "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 142
    sget-object p1, Lcom/just/agentweb/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgentString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m()Lcom/just/agentweb/a;
    .locals 1

    .line 45
    new-instance v0, Lcom/just/agentweb/f;

    invoke-direct {v0}, Lcom/just/agentweb/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/ar;
    .locals 0

    .line 167
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-object p0
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)Lcom/just/agentweb/ar;
    .locals 0

    .line 154
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object p0
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lcom/just/agentweb/ar;
    .locals 0

    .line 161
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object p0
.end method

.method public a(Landroid/webkit/WebView;)Lcom/just/agentweb/r;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/just/agentweb/a;->b(Landroid/webkit/WebView;)V

    return-object p0
.end method

.method final a(Lcom/just/agentweb/AgentWeb;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/just/agentweb/a;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 55
    invoke-virtual {p0, p1}, Lcom/just/agentweb/a;->b(Lcom/just/agentweb/AgentWeb;)V

    return-void
.end method

.method protected abstract b(Lcom/just/agentweb/AgentWeb;)V
.end method

.method public n()Landroid/webkit/WebSettings;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/just/agentweb/a;->ck:Landroid/webkit/WebSettings;

    return-object v0
.end method
