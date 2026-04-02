.class public Lcom/just/agentweb/k;
.super Lcom/just/agentweb/ah;
.source "DefaultChromeClient.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private cO:Lcom/just/agentweb/u;

.field private cQ:Lcom/just/agentweb/aj;

.field private ct:Lcom/just/agentweb/ActionActivity$b;

.field private cy:Lcom/just/agentweb/x;

.field private cz:Landroid/webkit/WebChromeClient;

.field private dP:Z

.field private dQ:Ljava/lang/String;

.field private dR:Landroid/webkit/GeolocationPermissions$Callback;

.field private dS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/just/agentweb/b;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/webkit/WebView;

.field private dz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/just/agentweb/x;Landroid/webkit/WebChromeClient;Lcom/just/agentweb/u;Lcom/just/agentweb/aj;Landroid/webkit/WebView;)V
    .locals 2
    .param p4    # Lcom/just/agentweb/u;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    invoke-direct {p0, p3}, Lcom/just/agentweb/ah;-><init>(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/just/agentweb/k;->dz:Ljava/lang/ref/WeakReference;

    .line 58
    const-class v1, Lcom/just/agentweb/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/k;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/just/agentweb/k;->dP:Z

    .line 86
    iput-object v0, p0, Lcom/just/agentweb/k;->dQ:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/just/agentweb/k;->dR:Landroid/webkit/GeolocationPermissions$Callback;

    .line 102
    iput-object v0, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    .line 218
    new-instance v0, Lcom/just/agentweb/k$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/k$1;-><init>(Lcom/just/agentweb/k;)V

    iput-object v0, p0, Lcom/just/agentweb/k;->ct:Lcom/just/agentweb/ActionActivity$b;

    .line 118
    iput-object p2, p0, Lcom/just/agentweb/k;->cy:Lcom/just/agentweb/x;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 119
    :cond_0
    iput-boolean v1, p0, Lcom/just/agentweb/k;->dP:Z

    .line 120
    iput-object p3, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    .line 121
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/just/agentweb/k;->dz:Ljava/lang/ref/WeakReference;

    .line 122
    iput-object p4, p0, Lcom/just/agentweb/k;->cO:Lcom/just/agentweb/u;

    .line 123
    iput-object p5, p0, Lcom/just/agentweb/k;->cQ:Lcom/just/agentweb/aj;

    .line 124
    iput-object p6, p0, Lcom/just/agentweb/k;->db:Landroid/webkit/WebView;

    .line 125
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-static {p6}, Lcom/just/agentweb/h;->d(Landroid/webkit/WebView;)Lcom/just/agentweb/b;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/k;Landroid/webkit/GeolocationPermissions$Callback;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/just/agentweb/k;->dR:Landroid/webkit/GeolocationPermissions$Callback;

    return-object p1
.end method

.method static synthetic a(Lcom/just/agentweb/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/just/agentweb/k;->dQ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/just/agentweb/k;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/just/agentweb/k;->dz:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/just/agentweb/k;->cQ:Lcom/just/agentweb/aj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/just/agentweb/k;->cQ:Lcom/just/agentweb/aj;

    iget-object v2, p0, Lcom/just/agentweb/k;->db:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/just/agentweb/e;->dC:[Ljava/lang/String;

    const-string v4, "location"

    invoke-interface {v0, v2, v3, v4}, Lcom/just/agentweb/aj;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/k;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 197
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void

    .line 202
    :cond_1
    sget-object v2, Lcom/just/agentweb/e;->dC:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/just/agentweb/h;->a(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v0, p0, Lcom/just/agentweb/k;->TAG:Ljava/lang/String;

    const-string v2, "onGeolocationPermissionsShowPromptInternal:true"

    invoke-static {v0, v2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 207
    :cond_2
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/just/agentweb/Action;->a([Ljava/lang/String;)Lcom/just/agentweb/Action;

    move-result-object v1

    const/16 v2, 0x60

    .line 208
    invoke-virtual {v1, v2}, Lcom/just/agentweb/Action;->c(I)Lcom/just/agentweb/Action;

    .line 209
    iget-object v2, p0, Lcom/just/agentweb/k;->ct:Lcom/just/agentweb/ActionActivity$b;

    invoke-static {v2}, Lcom/just/agentweb/ActionActivity;->a(Lcom/just/agentweb/ActionActivity$b;)V

    .line 210
    iput-object p2, p0, Lcom/just/agentweb/k;->dR:Landroid/webkit/GeolocationPermissions$Callback;

    .line 211
    iput-object p1, p0, Lcom/just/agentweb/k;->dQ:Ljava/lang/String;

    .line 212
    invoke-static {v0, v1}, Lcom/just/agentweb/ActionActivity;->a(Landroid/app/Activity;Lcom/just/agentweb/Action;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 324
    iget-object p1, p0, Lcom/just/agentweb/k;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileChooserParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  getTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/just/agentweb/k;->dz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/just/agentweb/k;->db:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/just/agentweb/k;->cQ:Lcom/just/agentweb/aj;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/just/agentweb/h;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/just/agentweb/aj;Landroid/webkit/ValueCallback;Ljava/lang/String;Landroid/os/Handler$Callback;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/just/agentweb/k;)Landroid/webkit/GeolocationPermissions$Callback;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/just/agentweb/k;->dR:Landroid/webkit/GeolocationPermissions$Callback;

    return-object p0
.end method

.method static synthetic c(Lcom/just/agentweb/k;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/just/agentweb/k;->dQ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/just/agentweb/k;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    .line 408
    invoke-super {p0, p1}, Lcom/just/agentweb/ah;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onExceededDatabaseQuota"

    const-string v2, "android.webkit.WebChromeClient.onExceededDatabaseQuota"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebStorage$QuotaUpdater;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-super/range {p0 .. p9}, Lcom/just/agentweb/ah;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void

    :cond_0
    const-wide/16 p1, 0x2

    mul-long p7, p7, p1

    .line 293
    invoke-interface {p9, p7, p8}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .line 171
    invoke-super {p0}, Lcom/just/agentweb/ah;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    const-string v2, "public void android.webkit.WebChromeClient.onGeolocationPermissionsShowPrompt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/GeolocationPermissions$Callback;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ah;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/k;->a(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onHideCustomView"

    const-string v2, "android.webkit.WebChromeClient.onHideCustomView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-super {p0}, Lcom/just/agentweb/ah;->onHideCustomView()V

    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/k;->cO:Lcom/just/agentweb/u;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/just/agentweb/k;->cO:Lcom/just/agentweb/u;

    invoke-interface {v0}, Lcom/just/agentweb/u;->onHideCustomView()V

    :cond_1
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onJsAlert"

    const-string v2, "public boolean android.webkit.WebChromeClient.onJsAlert"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/JsResult;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/ah;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    return v5
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7

    .line 273
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onJsConfirm"

    const-string v2, "public boolean android.webkit.WebChromeClient.onJsConfirm"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/JsResult;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/ah;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    :cond_1
    return v5
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    const/4 v0, 0x1

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v2, "onJsPrompt"

    const-string v3, "public boolean android.webkit.WebChromeClient.onJsPrompt"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Landroid/webkit/JsPromptResult;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-super/range {p0 .. p5}, Lcom/just/agentweb/ah;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/just/agentweb/k;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/just/agentweb/b;

    iget-object v2, p0, Lcom/just/agentweb/k;->db:Landroid/webkit/WebView;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 131
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ah;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 133
    iget-object v0, p0, Lcom/just/agentweb/k;->cy:Lcom/just/agentweb/x;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/just/agentweb/k;->cy:Lcom/just/agentweb/x;

    invoke-interface {v0, p1, p2}, Lcom/just/agentweb/x;->a(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onReachedMaxAppCacheSize"

    const-string v2, "android.webkit.WebChromeClient.onReachedMaxAppCacheSize"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebStorage$QuotaUpdater;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-super/range {p0 .. p5}, Lcom/just/agentweb/ah;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void

    :cond_0
    const-wide/16 p3, 0x2

    mul-long p1, p1, p3

    .line 305
    invoke-interface {p5, p1, p2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ah;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/just/agentweb/k;->dP:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ah;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onShowCustomView"

    const-string v2, "android.webkit.WebChromeClient.onShowCustomView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ah;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/k;->cO:Lcom/just/agentweb/u;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/just/agentweb/k;->cO:Lcom/just/agentweb/u;

    invoke-interface {v0, p1, p2}, Lcom/just/agentweb/u;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/just/agentweb/k;->TAG:Ljava/lang/String;

    const-string v1, "openFileChooser>=5.0"

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/just/agentweb/k;->cz:Landroid/webkit/WebChromeClient;

    const-string v1, "onShowFileChooser"

    const-string v2, "android.webkit.WebChromeClient.onShowFileChooser"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebChromeClient$FileChooserParams;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/ah;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 318
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/k;->a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
