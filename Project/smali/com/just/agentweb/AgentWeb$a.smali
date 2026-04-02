.class public final Lcom/just/agentweb/AgentWeb$a;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private cA:Landroid/webkit/WebViewClient;

.field private cB:Z

.field private cC:Lcom/just/agentweb/s;

.field private cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private cP:Z

.field private cQ:Lcom/just/agentweb/aj;

.field private cR:Z

.field private cW:Landroid/support/v4/app/Fragment;

.field private cX:Lcom/just/agentweb/BaseIndicatorView;

.field private cY:Landroid/view/ViewGroup$LayoutParams;

.field private cZ:Lcom/just/agentweb/q;

.field private cw:Lcom/just/agentweb/ap;

.field private cx:Lcom/just/agentweb/r;

.field private cy:Lcom/just/agentweb/x;

.field private cz:Landroid/webkit/WebChromeClient;

.field private da:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/webkit/WebView;

.field private dc:Lcom/just/agentweb/w;

.field private dd:Lcom/just/agentweb/b;

.field private de:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

.field private df:Lcom/just/agentweb/ai;

.field private dg:Lcom/just/agentweb/ah;

.field private dh:Lcom/just/agentweb/ah;

.field private di:Landroid/view/View;

.field private dj:I

.field private dk:I

.field private mActivity:Landroid/app/Activity;

.field private mHeight:I

.field private mIndex:I

.field private mIndicatorColor:I

.field private mTag:I

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 504
    iput v0, p0, Lcom/just/agentweb/AgentWeb$a;->mIndex:I

    const/4 v1, 0x0

    .line 506
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->cy:Lcom/just/agentweb/x;

    const/4 v2, 0x1

    .line 508
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$a;->cB:Z

    .line 509
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->cY:Landroid/view/ViewGroup$LayoutParams;

    .line 512
    iput v0, p0, Lcom/just/agentweb/AgentWeb$a;->mIndicatorColor:I

    .line 515
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->cZ:Lcom/just/agentweb/q;

    .line 517
    iput v0, p0, Lcom/just/agentweb/AgentWeb$a;->mHeight:I

    .line 519
    sget-object v3, Lcom/just/agentweb/AgentWeb$SecurityType;->dp:Lcom/just/agentweb/AgentWeb$SecurityType;

    iput-object v3, p0, Lcom/just/agentweb/AgentWeb$a;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 521
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$a;->cP:Z

    .line 522
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->dc:Lcom/just/agentweb/w;

    .line 523
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->cQ:Lcom/just/agentweb/aj;

    .line 525
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->de:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    const/4 v3, 0x0

    .line 526
    iput-boolean v3, p0, Lcom/just/agentweb/AgentWeb$a;->cR:Z

    .line 529
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->dg:Lcom/just/agentweb/ah;

    .line 530
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$a;->dh:Lcom/just/agentweb/ah;

    .line 534
    iput v0, p0, Lcom/just/agentweb/AgentWeb$a;->mTag:I

    .line 538
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$a;->mActivity:Landroid/app/Activity;

    .line 539
    iput-object p2, p0, Lcom/just/agentweb/AgentWeb$a;->cW:Landroid/support/v4/app/Fragment;

    .line 540
    iput v2, p0, Lcom/just/agentweb/AgentWeb$a;->mTag:I

    return-void
.end method

.method static synthetic A(Lcom/just/agentweb/AgentWeb$a;)Z
    .locals 0

    .line 499
    iget-boolean p0, p0, Lcom/just/agentweb/AgentWeb$a;->cR:Z

    return p0
.end method

.method static synthetic B(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->de:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-object p0
.end method

.method static synthetic C(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ai;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->df:Lcom/just/agentweb/ai;

    return-object p0
.end method

.method static synthetic D(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ah;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->dg:Lcom/just/agentweb/ah;

    return-object p0
.end method

.method static synthetic E(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/AgentWeb$e;
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb$a;->I()Lcom/just/agentweb/AgentWeb$e;

    move-result-object p0

    return-object p0
.end method

.method private I()Lcom/just/agentweb/AgentWeb$e;
    .locals 3

    .line 564
    iget v0, p0, Lcom/just/agentweb/AgentWeb$a;->mTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$a;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ViewGroup is null,Please check your parameters ."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    :goto_0
    new-instance v0, Lcom/just/agentweb/AgentWeb$e;

    new-instance v1, Lcom/just/agentweb/AgentWeb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/just/agentweb/AgentWeb;-><init>(Lcom/just/agentweb/AgentWeb$a;Lcom/just/agentweb/AgentWeb$1;)V

    invoke-static {v1, p0}, Lcom/just/agentweb/p;->a(Lcom/just/agentweb/AgentWeb;Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/AgentWeb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/just/agentweb/AgentWeb$e;-><init>(Lcom/just/agentweb/AgentWeb;)V

    return-object v0
.end method

.method static synthetic a(Lcom/just/agentweb/AgentWeb$a;)I
    .locals 0

    .line 499
    iget p0, p0, Lcom/just/agentweb/AgentWeb$a;->mTag:I

    return p0
.end method

.method static synthetic a(Lcom/just/agentweb/AgentWeb$a;Landroid/webkit/WebViewClient;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$a;->cA:Landroid/webkit/WebViewClient;

    return-object p1
.end method

.method static synthetic a(Lcom/just/agentweb/AgentWeb$a;Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$a;->de:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-object p1
.end method

.method static synthetic a(Lcom/just/agentweb/AgentWeb$a;Z)Z
    .locals 0

    .line 499
    iput-boolean p1, p0, Lcom/just/agentweb/AgentWeb$a;->cB:Z

    return p1
.end method

.method static synthetic b(Lcom/just/agentweb/AgentWeb$a;)Landroid/app/Activity;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/just/agentweb/AgentWeb$a;)Landroid/view/ViewGroup;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->mViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/s;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cC:Lcom/just/agentweb/s;

    return-object p0
.end method

.method static synthetic e(Lcom/just/agentweb/AgentWeb$a;)Z
    .locals 0

    .line 499
    iget-boolean p0, p0, Lcom/just/agentweb/AgentWeb$a;->cB:Z

    return p0
.end method

.method static synthetic f(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ap;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cw:Lcom/just/agentweb/ap;

    return-object p0
.end method

.method static synthetic g(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/BaseIndicatorView;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cX:Lcom/just/agentweb/BaseIndicatorView;

    return-object p0
.end method

.method static synthetic h(Lcom/just/agentweb/AgentWeb$a;)I
    .locals 0

    .line 499
    iget p0, p0, Lcom/just/agentweb/AgentWeb$a;->mIndex:I

    return p0
.end method

.method static synthetic i(Lcom/just/agentweb/AgentWeb$a;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cY:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic j(Lcom/just/agentweb/AgentWeb$a;)I
    .locals 0

    .line 499
    iget p0, p0, Lcom/just/agentweb/AgentWeb$a;->mIndicatorColor:I

    return p0
.end method

.method static synthetic k(Lcom/just/agentweb/AgentWeb$a;)I
    .locals 0

    .line 499
    iget p0, p0, Lcom/just/agentweb/AgentWeb$a;->mHeight:I

    return p0
.end method

.method static synthetic l(Lcom/just/agentweb/AgentWeb$a;)Landroid/webkit/WebView;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->db:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic m(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/w;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->dc:Lcom/just/agentweb/w;

    return-object p0
.end method

.method static synthetic n(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/x;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cy:Lcom/just/agentweb/x;

    return-object p0
.end method

.method static synthetic o(Lcom/just/agentweb/AgentWeb$a;)Landroid/webkit/WebChromeClient;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cz:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method static synthetic p(Lcom/just/agentweb/AgentWeb$a;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cA:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method static synthetic q(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/r;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cx:Lcom/just/agentweb/r;

    return-object p0
.end method

.method static synthetic r(Lcom/just/agentweb/AgentWeb$a;)Landroid/support/v4/util/ArrayMap;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->da:Landroid/support/v4/util/ArrayMap;

    return-object p0
.end method

.method static synthetic s(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/aj;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cQ:Lcom/just/agentweb/aj;

    return-object p0
.end method

.method static synthetic t(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/AgentWeb$SecurityType;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    return-object p0
.end method

.method static synthetic u(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/q;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->cZ:Lcom/just/agentweb/q;

    return-object p0
.end method

.method static synthetic v(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/b;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->dd:Lcom/just/agentweb/b;

    return-object p0
.end method

.method static synthetic w(Lcom/just/agentweb/AgentWeb$a;)I
    .locals 0

    .line 499
    iget p0, p0, Lcom/just/agentweb/AgentWeb$a;->dj:I

    return p0
.end method

.method static synthetic x(Lcom/just/agentweb/AgentWeb$a;)I
    .locals 0

    .line 499
    iget p0, p0, Lcom/just/agentweb/AgentWeb$a;->dk:I

    return p0
.end method

.method static synthetic y(Lcom/just/agentweb/AgentWeb$a;)Landroid/view/View;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$a;->di:Landroid/view/View;

    return-object p0
.end method

.method static synthetic z(Lcom/just/agentweb/AgentWeb$a;)Z
    .locals 0

    .line 499
    iget-boolean p0, p0, Lcom/just/agentweb/AgentWeb$a;->cP:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$c;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 550
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$a;->mViewGroup:Landroid/view/ViewGroup;

    .line 551
    iput-object p2, p0, Lcom/just/agentweb/AgentWeb$a;->cY:Landroid/view/ViewGroup$LayoutParams;

    .line 552
    new-instance p1, Lcom/just/agentweb/AgentWeb$c;

    invoke-direct {p1, p0}, Lcom/just/agentweb/AgentWeb$c;-><init>(Lcom/just/agentweb/AgentWeb$a;)V

    return-object p1
.end method
