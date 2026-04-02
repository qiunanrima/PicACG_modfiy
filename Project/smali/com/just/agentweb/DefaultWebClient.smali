.class public Lcom/just/agentweb/DefaultWebClient;
.super Lcom/just/agentweb/ai;
.source "DefaultWebClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;,
        Lcom/just/agentweb/DefaultWebClient$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWebClient"

.field private static final ed:Z


# instance fields
.field private cA:Landroid/webkit/WebViewClient;

.field private cR:Z

.field private cS:I

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

.field private dm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private ec:Z

.field private ee:Landroid/os/Handler$Callback;

.field private ef:Ljava/lang/reflect/Method;

.field private eg:Ljava/lang/Object;

.field private eh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ei:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.alipay.sdk.app.PayTask"

    .line 160
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    sput-boolean v0, Lcom/just/agentweb/DefaultWebClient;->ed:Z

    .line 166
    sget-object v0, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAS_ALIPAY_LIB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/just/agentweb/DefaultWebClient;->ed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/just/agentweb/DefaultWebClient$a;)V
    .locals 3

    .line 171
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->a(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/just/agentweb/ai;-><init>(Landroid/webkit/WebViewClient;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    const/16 v2, 0xfa

    .line 119
    iput v2, p0, Lcom/just/agentweb/DefaultWebClient;->cS:I

    .line 123
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebClient;->cR:Z

    .line 127
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    .line 135
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ee:Landroid/os/Handler$Callback;

    .line 139
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ef:Ljava/lang/reflect/Method;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->eh:Ljava/util/Set;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ei:Ljava/util/Set;

    .line 172
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->b(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->db:Landroid/webkit/WebView;

    .line 173
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->a(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/webkit/WebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->c(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    .line 175
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->d(Lcom/just/agentweb/DefaultWebClient$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->b(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Lcom/just/agentweb/h;->d(Landroid/webkit/WebView;)Lcom/just/agentweb/b;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    .line 177
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->e(Lcom/just/agentweb/DefaultWebClient$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient;->cR:Z

    .line 179
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->f(Lcom/just/agentweb/DefaultWebClient$a;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 180
    iput v2, p0, Lcom/just/agentweb/DefaultWebClient;->cS:I

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p1}, Lcom/just/agentweb/DefaultWebClient$a;->f(Lcom/just/agentweb/DefaultWebClient$a;)I

    move-result p1

    iput p1, p0, Lcom/just/agentweb/DefaultWebClient;->cS:I

    :goto_0
    return-void
.end method

.method public static Z()Lcom/just/agentweb/DefaultWebClient$a;
    .locals 1

    .line 622
    new-instance v0, Lcom/just/agentweb/DefaultWebClient$a;

    invoke-direct {v0}, Lcom/just/agentweb/DefaultWebClient$a;-><init>()V

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 507
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->eh:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ef:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    const-string v7, "onMainFrameError"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Lcom/just/agentweb/b;

    aput-object v9, v8, v5

    const-class v9, Landroid/webkit/WebView;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-static {v0, v7, v8}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ef:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 513
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    aput-object p1, v6, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    aput-object p3, v6, v2

    aput-object p4, v6, v1

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 515
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 516
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/DefaultWebClient;Ljava/lang/String;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/just/agentweb/DefaultWebClient;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    return v0

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/just/agentweb/DefaultWebClient;->eg:Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "com.alipay.sdk.app.PayTask"

    .line 405
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 406
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 407
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/DefaultWebClient;->eg:Ljava/lang/Object;

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebClient;->eg:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/sdk/app/PayTask;

    .line 410
    new-instance v2, Lcom/just/agentweb/DefaultWebClient$1;

    invoke-direct {v2, p0, p1}, Lcom/just/agentweb/DefaultWebClient$1;-><init>(Lcom/just/agentweb/DefaultWebClient;Landroid/webkit/WebView;)V

    invoke-virtual {v1, p2, v3, v2}, Lcom/alipay/sdk/app/PayTask;->payInterceptorWithUrl(Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 425
    sget-object v1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alipay-isIntercepted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 429
    sget-boolean p2, Lcom/just/agentweb/c;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 430
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 4

    .line 252
    iget v0, p0, Lcom/just/agentweb/DefaultWebClient;->cS:I

    const/16 v1, 0xfa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/just/agentweb/DefaultWebClient;->k(Ljava/lang/String;)Z

    return v2

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    iget-object v1, p0, Lcom/just/agentweb/DefaultWebClient;->db:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/just/agentweb/DefaultWebClient;->db:Landroid/webkit/WebView;

    .line 262
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-direct {p0, p1}, Lcom/just/agentweb/DefaultWebClient;->n(Ljava/lang/String;)Landroid/os/Handler$Callback;

    move-result-object p1

    .line 261
    invoke-virtual {v0, v1, v3, p1}, Lcom/just/agentweb/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    :cond_2
    return v2
.end method

.method private i(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 337
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 338
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 339
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 340
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 342
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_2
    return v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    .line 353
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "intent://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0, p1}, Lcom/just/agentweb/DefaultWebClient;->k(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-void

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 361
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private k(Ljava/lang/String;)Z
    .locals 4

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 376
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 377
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v3, 0x10000

    .line 378
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 385
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private l(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "tel:"

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "sms:"

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mailto:"

    .line 440
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "geo:0,0?q="

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 444
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    return v1

    .line 447
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 449
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 451
    sget-boolean v0, Lcom/just/agentweb/c;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private m(Ljava/lang/String;)V
    .locals 2

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 567
    iget-object p1, p0, Lcom/just/agentweb/DefaultWebClient;->dm:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 570
    invoke-static {}, Lcom/just/agentweb/ag;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private n(Ljava/lang/String;)Landroid/os/Handler$Callback;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ee:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 603
    iget-object p1, p0, Lcom/just/agentweb/DefaultWebClient;->ee:Landroid/os/Handler$Callback;

    return-object p1

    .line 605
    :cond_0
    new-instance v0, Lcom/just/agentweb/DefaultWebClient$2;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/DefaultWebClient$2;-><init>(Lcom/just/agentweb/DefaultWebClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ee:Landroid/os/Handler$Callback;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->eh:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ei:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->dS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/b;

    invoke-virtual {v0}, Lcom/just/agentweb/b;->q()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 539
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ei:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ei:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->eh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->eh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 545
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ei:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->ei:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/ai;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 482
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    const-string v1, "onReceivedError"

    const-string v2, "android.webkit.WebViewClient.onReceivedError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/ai;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    sget-object v0, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  CODE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/just/agentweb/DefaultWebClient;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    const-string v1, "onReceivedError"

    const-string v2, "android.webkit.WebViewClient.onReceivedError"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebResourceRequest;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebResourceError;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/ai;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 498
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/just/agentweb/DefaultWebClient;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_1
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Lcom/just/agentweb/ai;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/ai;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 6

    .line 588
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    const-string v1, "onScaleChanged"

    const-string v2, "android.webkit.WebViewClient.onScaleChanged"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-super {p0, p1, p2, p3}, Lcom/just/agentweb/ai;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void

    .line 593
    :cond_0
    sget-object v0, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    sub-float v0, p3, p2

    const/high16 v1, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 595
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 274
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 242
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 552
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    const-string v1, "shouldOverrideUrlLoading"

    const-string v2, "android.webkit.WebViewClient.shouldOverrideUrlLoading"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/webkit/WebResourceRequest;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 194
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 200
    :cond_2
    iget-boolean v2, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    if-nez v2, :cond_3

    return v5

    .line 203
    :cond_3
    invoke-direct {p0, v1}, Lcom/just/agentweb/DefaultWebClient;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v6

    :cond_4
    const-string v2, "intent://"

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    invoke-direct {p0, v1}, Lcom/just/agentweb/DefaultWebClient;->j(Ljava/lang/String;)V

    .line 210
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    const-string p2, "intent url "

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    const-string v2, "weixin://wap/pay?"

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 215
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    const-string p2, "lookup wechat to pay ~~"

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v1}, Lcom/just/agentweb/DefaultWebClient;->m(Ljava/lang/String;)V

    return v6

    :cond_6
    const-string v2, "alipays://"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/just/agentweb/DefaultWebClient;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 221
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    const-string p2, "alipays url lookup alipay ~~ "

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 225
    :cond_7
    invoke-direct {p0, v1}, Lcom/just/agentweb/DefaultWebClient;->i(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    invoke-direct {p0, v1}, Lcom/just/agentweb/DefaultWebClient;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 226
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intercept url:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 229
    :cond_8
    iget-boolean v1, p0, Lcom/just/agentweb/DefaultWebClient;->cR:Z

    if-eqz v1, :cond_9

    .line 230
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intercept mIsInterceptUnkownUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_9
    if-lez v0, :cond_a

    return v5

    .line 237
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 197
    :cond_b
    :goto_1
    iget-boolean p2, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    if-eqz p2, :cond_c

    sget-boolean p2, Lcom/just/agentweb/DefaultWebClient;->ed:Z

    if-eqz p2, :cond_c

    invoke-direct {p0, p1, v1}, Lcom/just/agentweb/DefaultWebClient;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v5, 0x1

    :cond_c
    return v5
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebClient;->cA:Landroid/webkit/WebViewClient;

    const-string v1, "shouldOverrideUrlLoading"

    const-string v2, "android.webkit.WebViewClient.shouldOverrideUrlLoading"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/just/agentweb/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const-string v1, "http://"

    .line 287
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 291
    :cond_2
    iget-boolean v1, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    if-nez v1, :cond_3

    return v5

    .line 295
    :cond_3
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultWebClient;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v6

    :cond_4
    const-string v1, "intent://"

    .line 299
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultWebClient;->j(Ljava/lang/String;)V

    return v6

    :cond_5
    const-string v1, "weixin://wap/pay?"

    .line 304
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 305
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultWebClient;->m(Ljava/lang/String;)V

    return v6

    :cond_6
    const-string v1, "alipays://"

    .line 309
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultWebClient;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v6

    .line 313
    :cond_7
    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultWebClient;->i(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    invoke-direct {p0, p2}, Lcom/just/agentweb/DefaultWebClient;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 314
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    const-string p2, "intercept OtherAppScheme"

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 318
    :cond_8
    iget-boolean v1, p0, Lcom/just/agentweb/DefaultWebClient;->cR:Z

    if-eqz v1, :cond_9

    .line 319
    sget-object p1, Lcom/just/agentweb/DefaultWebClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intercept InterceptUnkownScheme : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_9
    if-lez v0, :cond_a

    return v5

    .line 327
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/just/agentweb/ai;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 288
    :cond_b
    :goto_1
    iget-boolean v0, p0, Lcom/just/agentweb/DefaultWebClient;->ec:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/just/agentweb/DefaultWebClient;->ed:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/DefaultWebClient;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 v5, 0x1

    :cond_c
    return v5
.end method
