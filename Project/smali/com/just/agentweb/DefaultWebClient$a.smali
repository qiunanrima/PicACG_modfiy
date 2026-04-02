.class public Lcom/just/agentweb/DefaultWebClient$a;
.super Ljava/lang/Object;
.source "DefaultWebClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/DefaultWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private cP:Z

.field private cQ:Lcom/just/agentweb/aj;

.field private cS:I

.field private db:Landroid/webkit/WebView;

.field private em:Landroid/webkit/WebViewClient;

.field private en:Z

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/just/agentweb/DefaultWebClient$a;->em:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method static synthetic b(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/webkit/WebView;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/just/agentweb/DefaultWebClient$a;->db:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcom/just/agentweb/DefaultWebClient$a;)Landroid/app/Activity;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/just/agentweb/DefaultWebClient$a;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/just/agentweb/DefaultWebClient$a;)Z
    .locals 0

    .line 625
    iget-boolean p0, p0, Lcom/just/agentweb/DefaultWebClient$a;->cP:Z

    return p0
.end method

.method static synthetic e(Lcom/just/agentweb/DefaultWebClient$a;)Z
    .locals 0

    .line 625
    iget-boolean p0, p0, Lcom/just/agentweb/DefaultWebClient$a;->en:Z

    return p0
.end method

.method static synthetic f(Lcom/just/agentweb/DefaultWebClient$a;)I
    .locals 0

    .line 625
    iget p0, p0, Lcom/just/agentweb/DefaultWebClient$a;->cS:I

    return p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public a(Lcom/just/agentweb/aj;)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->cQ:Lcom/just/agentweb/aj;

    return-object p0
.end method

.method public a(Z)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 646
    iput-boolean p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->cP:Z

    return-object p0
.end method

.method public aa()Lcom/just/agentweb/DefaultWebClient;
    .locals 1

    .line 671
    new-instance v0, Lcom/just/agentweb/DefaultWebClient;

    invoke-direct {v0, p0}, Lcom/just/agentweb/DefaultWebClient;-><init>(Lcom/just/agentweb/DefaultWebClient$a;)V

    return-object v0
.end method

.method public b(Landroid/webkit/WebViewClient;)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->em:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public b(Z)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 661
    iput-boolean p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->en:Z

    return-object p0
.end method

.method public e(I)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 666
    iput p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->cS:I

    return-object p0
.end method

.method public g(Landroid/webkit/WebView;)Lcom/just/agentweb/DefaultWebClient$a;
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$a;->db:Landroid/webkit/WebView;

    return-object p0
.end method
