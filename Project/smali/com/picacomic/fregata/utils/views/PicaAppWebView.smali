.class public Lcom/picacomic/fregata/utils/views/PicaAppWebView;
.super Landroid/webkit/WebView;
.source "PicaAppWebView.java"


# instance fields
.field context:Landroid/content/Context;

.field picaAppInterface:Lcom/picacomic/fregata/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public backButton()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->picaAppInterface:Lcom/picacomic/fregata/a/j;

    invoke-interface {v0}, Lcom/picacomic/fregata/a/j;->backButton()V

    return-void
.end method

.method public fullScreen()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->picaAppInterface:Lcom/picacomic/fregata/a/j;

    invoke-interface {v0}, Lcom/picacomic/fregata/a/j;->fullScreen()V

    return-void
.end method

.method public init(Lcom/picacomic/fregata/a/j;)V
    .locals 3

    .line 47
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 48
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const-string v0, "PicaApp"

    .line 55
    invoke-virtual {p0, p0, v0}, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->picaAppInterface:Lcom/picacomic/fregata/a/j;

    return-void
.end method

.method public rotation()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PicaAppWebView;->picaAppInterface:Lcom/picacomic/fregata/a/j;

    invoke-interface {v0}, Lcom/picacomic/fregata/a/j;->rotation()V

    return-void
.end method
