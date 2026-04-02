.class public final Lcom/just/agentweb/AgentWeb;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/AgentWeb$d;,
        Lcom/just/agentweb/AgentWeb$b;,
        Lcom/just/agentweb/AgentWeb$c;,
        Lcom/just/agentweb/AgentWeb$a;,
        Lcom/just/agentweb/AgentWeb$SecurityType;,
        Lcom/just/agentweb/AgentWeb$e;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentWeb"


# instance fields
.field private cA:Landroid/webkit/WebViewClient;

.field private cB:Z

.field private cC:Lcom/just/agentweb/s;

.field private cD:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cE:I

.field private cF:Lcom/just/agentweb/ar;

.field private cG:Lcom/just/agentweb/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/just/agentweb/at<",
            "Lcom/just/agentweb/as;",
            ">;"
        }
    .end annotation
.end field

.field private cH:Lcom/just/agentweb/as;

.field private cI:Landroid/webkit/WebChromeClient;

.field private cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private cK:Lcom/just/agentweb/d;

.field private cL:Lcom/just/agentweb/z;

.field private cM:Lcom/just/agentweb/t;

.field private cN:Lcom/just/agentweb/aq;

.field private cO:Lcom/just/agentweb/u;

.field private cP:Z

.field private cQ:Lcom/just/agentweb/aj;

.field private cR:Z

.field private cS:I

.field private cT:Lcom/just/agentweb/ai;

.field private cU:Lcom/just/agentweb/ah;

.field private cV:Lcom/just/agentweb/ae;

.field private cw:Lcom/just/agentweb/ap;

.field private cx:Lcom/just/agentweb/r;

.field private cy:Lcom/just/agentweb/x;

.field private cz:Landroid/webkit/WebChromeClient;

.field private mActivity:Landroid/app/Activity;

.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/just/agentweb/AgentWeb$a;)V
    .locals 10

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 91
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/just/agentweb/AgentWeb;->cE:I

    .line 103
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cG:Lcom/just/agentweb/at;

    .line 107
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cH:Lcom/just/agentweb/as;

    .line 115
    sget-object v2, Lcom/just/agentweb/AgentWeb$SecurityType;->dp:Lcom/just/agentweb/AgentWeb$SecurityType;

    iput-object v2, p0, Lcom/just/agentweb/AgentWeb;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 127
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cK:Lcom/just/agentweb/d;

    .line 131
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cL:Lcom/just/agentweb/z;

    .line 135
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cM:Lcom/just/agentweb/t;

    .line 143
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cO:Lcom/just/agentweb/u;

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb;->cP:Z

    .line 155
    iput-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->cR:Z

    const/4 v1, -0x1

    .line 159
    iput v1, p0, Lcom/just/agentweb/AgentWeb;->cS:I

    .line 174
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cV:Lcom/just/agentweb/ae;

    .line 178
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->a(Lcom/just/agentweb/AgentWeb$a;)I

    move-result v1

    iput v1, p0, Lcom/just/agentweb/AgentWeb;->cE:I

    .line 179
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->b(Lcom/just/agentweb/AgentWeb$a;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    .line 180
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->c(Lcom/just/agentweb/AgentWeb$a;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    .line 181
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->d(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/s;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cC:Lcom/just/agentweb/s;

    .line 182
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->e(Lcom/just/agentweb/AgentWeb$a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->cB:Z

    .line 183
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->f(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->g(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/BaseIndicatorView;

    move-result-object v3

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->h(Lcom/just/agentweb/AgentWeb$a;)I

    move-result v4

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->i(Lcom/just/agentweb/AgentWeb$a;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->j(Lcom/just/agentweb/AgentWeb$a;)I

    move-result v6

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->k(Lcom/just/agentweb/AgentWeb$a;)I

    move-result v7

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->l(Lcom/just/agentweb/AgentWeb$a;)Landroid/webkit/WebView;

    move-result-object v8

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->m(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/w;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/just/agentweb/AgentWeb;->a(Lcom/just/agentweb/BaseIndicatorView;ILandroid/view/ViewGroup$LayoutParams;IILandroid/webkit/WebView;Lcom/just/agentweb/w;)Lcom/just/agentweb/ap;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->f(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ap;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    .line 184
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->n(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/x;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cy:Lcom/just/agentweb/x;

    .line 185
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->o(Lcom/just/agentweb/AgentWeb$a;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cz:Landroid/webkit/WebChromeClient;

    .line 186
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->p(Lcom/just/agentweb/AgentWeb$a;)Landroid/webkit/WebViewClient;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cA:Landroid/webkit/WebViewClient;

    .line 187
    iput-object p0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 188
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->q(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/r;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cx:Lcom/just/agentweb/r;

    .line 190
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->r(Lcom/just/agentweb/AgentWeb$a;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->r(Lcom/just/agentweb/AgentWeb$a;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->r(Lcom/just/agentweb/AgentWeb$a;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 192
    sget-object v1, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mJavaObject size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->s(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/aj;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/just/agentweb/AgentWeb$d;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->s(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/aj;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/just/agentweb/AgentWeb$d;-><init>(Lcom/just/agentweb/aj;Lcom/just/agentweb/AgentWeb$1;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cQ:Lcom/just/agentweb/aj;

    .line 196
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->t(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/AgentWeb$SecurityType;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 197
    new-instance v0, Lcom/just/agentweb/am;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->ah()Lcom/just/agentweb/ap;

    move-result-object v1

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->u(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/just/agentweb/am;-><init>(Landroid/webkit/WebView;Lcom/just/agentweb/q;)V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cM:Lcom/just/agentweb/t;

    .line 198
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v0}, Lcom/just/agentweb/ap;->ac()Landroid/widget/FrameLayout;

    move-result-object v0

    instance-of v0, v0, Lcom/just/agentweb/WebParentLayout;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v0}, Lcom/just/agentweb/ap;->ac()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/WebParentLayout;

    .line 200
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->v(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/b;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/just/agentweb/g;->M()Lcom/just/agentweb/b;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->v(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/b;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/just/agentweb/WebParentLayout;->a(Lcom/just/agentweb/b;)V

    .line 201
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->w(Lcom/just/agentweb/AgentWeb$a;)I

    move-result v1

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->x(Lcom/just/agentweb/AgentWeb$a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/WebParentLayout;->e(II)V

    .line 202
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->y(Lcom/just/agentweb/AgentWeb$a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/WebParentLayout;->setErrorView(Landroid/view/View;)V

    .line 204
    :cond_4
    new-instance v0, Lcom/just/agentweb/o;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/just/agentweb/o;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cN:Lcom/just/agentweb/aq;

    .line 205
    new-instance v0, Lcom/just/agentweb/au;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    iget-object v2, v2, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-direct {v0, v1, v2, v3}, Lcom/just/agentweb/au;-><init>(Landroid/webkit/WebView;Landroid/support/v4/util/ArrayMap;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cG:Lcom/just/agentweb/at;

    .line 206
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->z(Lcom/just/agentweb/AgentWeb$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb;->cP:Z

    .line 207
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->A(Lcom/just/agentweb/AgentWeb$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb;->cR:Z

    .line 208
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->B(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 209
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->B(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    move-result-object v0

    iget v0, v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->code:I

    iput v0, p0, Lcom/just/agentweb/AgentWeb;->cS:I

    .line 211
    :cond_5
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->C(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cT:Lcom/just/agentweb/ai;

    .line 212
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$a;->D(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/ah;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb;->cU:Lcom/just/agentweb/ah;

    .line 213
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/AgentWeb$a;Lcom/just/agentweb/AgentWeb$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWeb;-><init>(Lcom/just/agentweb/AgentWeb$a;)V

    return-void
.end method

.method private D()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cH:Lcom/just/agentweb/as;

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Lcom/just/agentweb/av;->ax()Lcom/just/agentweb/av;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cH:Lcom/just/agentweb/as;

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cG:Lcom/just/agentweb/at;

    invoke-interface {v1, v0}, Lcom/just/agentweb/at;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private E()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    const-string v1, "agentWeb"

    new-instance v2, Lcom/just/agentweb/d;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/just/agentweb/d;-><init>(Lcom/just/agentweb/AgentWeb;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/just/agentweb/AgentWeb;->cK:Lcom/just/agentweb/d;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private F()Lcom/just/agentweb/u;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cO:Lcom/just/agentweb/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/just/agentweb/an;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v2}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/just/agentweb/an;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cO:Lcom/just/agentweb/u;

    :goto_0
    return-object v0
.end method

.method private G()Lcom/just/agentweb/AgentWeb;
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/c;->b(Landroid/content/Context;)V

    .line 434
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cx:Lcom/just/agentweb/r;

    if-nez v0, :cond_0

    .line 436
    invoke-static {}, Lcom/just/agentweb/f;->m()Lcom/just/agentweb/a;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cx:Lcom/just/agentweb/r;

    .line 439
    :cond_0
    instance-of v1, v0, Lcom/just/agentweb/a;

    if-eqz v1, :cond_1

    .line 440
    move-object v2, v0

    check-cast v2, Lcom/just/agentweb/a;

    invoke-virtual {v2, p0}, Lcom/just/agentweb/a;->a(Lcom/just/agentweb/AgentWeb;)V

    .line 442
    :cond_1
    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->cF:Lcom/just/agentweb/ar;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 443
    move-object v1, v0

    check-cast v1, Lcom/just/agentweb/ar;

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cF:Lcom/just/agentweb/ar;

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/just/agentweb/r;->a(Landroid/webkit/WebView;)Lcom/just/agentweb/r;

    .line 446
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cV:Lcom/just/agentweb/ae;

    if-nez v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v0}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-static {v0, v1}, Lcom/just/agentweb/af;->a(Landroid/webkit/WebView;Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/af;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cV:Lcom/just/agentweb/ae;

    .line 449
    :cond_3
    sget-object v0, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mJavaObjects:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cV:Lcom/just/agentweb/ae;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cD:Landroid/support/v4/util/ArrayMap;

    invoke-interface {v0, v1}, Lcom/just/agentweb/ae;->a(Ljava/util/Map;)Lcom/just/agentweb/ae;

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cF:Lcom/just/agentweb/ar;

    if-eqz v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cF:Lcom/just/agentweb/ar;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/just/agentweb/ar;->a(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/ar;

    .line 456
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cF:Lcom/just/agentweb/ar;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->H()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/just/agentweb/ar;->a(Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)Lcom/just/agentweb/ar;

    .line 457
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cF:Lcom/just/agentweb/ar;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/just/agentweb/ar;->a(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lcom/just/agentweb/ar;

    :cond_5
    return-object p0
.end method

.method private H()Landroid/webkit/WebChromeClient;
    .locals 8

    .line 464
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cy:Lcom/just/agentweb/x;

    if-nez v0, :cond_0

    .line 466
    invoke-static {}, Lcom/just/agentweb/y;->am()Lcom/just/agentweb/y;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v1}, Lcom/just/agentweb/ap;->ag()Lcom/just/agentweb/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/y;->a(Lcom/just/agentweb/i;)Lcom/just/agentweb/y;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cy:Lcom/just/agentweb/x;

    goto :goto_0

    .line 469
    :goto_1
    new-instance v0, Lcom/just/agentweb/k;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iput-object v3, p0, Lcom/just/agentweb/AgentWeb;->cy:Lcom/just/agentweb/x;

    iget-object v4, p0, Lcom/just/agentweb/AgentWeb;->cz:Landroid/webkit/WebChromeClient;

    .line 472
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->F()Lcom/just/agentweb/u;

    move-result-object v5

    iput-object v5, p0, Lcom/just/agentweb/AgentWeb;->cO:Lcom/just/agentweb/u;

    iget-object v6, p0, Lcom/just/agentweb/AgentWeb;->cQ:Lcom/just/agentweb/aj;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    .line 473
    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/just/agentweb/k;-><init>(Landroid/app/Activity;Lcom/just/agentweb/x;Landroid/webkit/WebChromeClient;Lcom/just/agentweb/u;Lcom/just/agentweb/aj;Landroid/webkit/WebView;)V

    .line 475
    sget-object v1, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebChromeClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->cz:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cU:Lcom/just/agentweb/ah;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    move-object v2, v1

    const/4 v3, 0x1

    .line 481
    :goto_2
    invoke-virtual {v2}, Lcom/just/agentweb/ah;->aq()Lcom/just/agentweb/ah;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 482
    invoke-virtual {v2}, Lcom/just/agentweb/ah;->aq()Lcom/just/agentweb/ah;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 485
    :cond_1
    sget-object v4, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiddlewareWebClientBase middleware count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, v0}, Lcom/just/agentweb/ah;->a(Landroid/webkit/WebChromeClient;)V

    .line 487
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->cI:Landroid/webkit/WebChromeClient;

    return-object v1

    .line 489
    :cond_2
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cI:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/just/agentweb/AgentWeb$a;
    .locals 2
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Lcom/just/agentweb/AgentWeb$a;

    invoke-direct {v1, v0, p0}, Lcom/just/agentweb/AgentWeb$a;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "activity can not be null ."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/just/agentweb/AgentWeb;Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWeb;->a(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->C()Lcom/just/agentweb/t;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/just/agentweb/t;->loadUrl(Ljava/lang/String;)V

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->B()Lcom/just/agentweb/x;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/just/agentweb/x;->ak()Lcom/just/agentweb/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->B()Lcom/just/agentweb/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/just/agentweb/x;->ak()Lcom/just/agentweb/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/just/agentweb/i;->show()V

    :cond_0
    return-object p0
.end method

.method private a(Lcom/just/agentweb/BaseIndicatorView;ILandroid/view/ViewGroup$LayoutParams;IILandroid/webkit/WebView;Lcom/just/agentweb/w;)Lcom/just/agentweb/ap;
    .locals 12

    move-object v0, p0

    if-eqz p1, :cond_0

    .line 358
    iget-boolean v1, v0, Lcom/just/agentweb/AgentWeb;->cB:Z

    if-eqz v1, :cond_0

    .line 359
    new-instance v9, Lcom/just/agentweb/n;

    iget-object v2, v0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    move-object v1, v9

    move-object v4, p3

    move v5, p2

    move-object v6, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/just/agentweb/n;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILcom/just/agentweb/BaseIndicatorView;Landroid/webkit/WebView;Lcom/just/agentweb/w;)V

    return-object v9

    .line 361
    :cond_0
    iget-boolean v1, v0, Lcom/just/agentweb/AgentWeb;->cB:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/just/agentweb/n;

    iget-object v3, v0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    move-object v2, v1

    move-object v5, p3

    move v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/just/agentweb/n;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IIILandroid/webkit/WebView;Lcom/just/agentweb/w;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/just/agentweb/n;

    iget-object v6, v0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v7, v0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    move-object v5, v1

    move-object v8, p3

    move v9, p2

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Lcom/just/agentweb/n;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILandroid/webkit/WebView;Lcom/just/agentweb/w;)V

    :goto_0
    return-object v1
.end method

.method static synthetic c(Lcom/just/agentweb/AgentWeb;)Lcom/just/agentweb/AgentWeb;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->G()Lcom/just/agentweb/AgentWeb;

    move-result-object p0

    return-object p0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 7

    .line 401
    sget-object v0, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDelegate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->cT:Lcom/just/agentweb/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/just/agentweb/DefaultWebClient;->Z()Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    .line 404
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->a(Landroid/app/Activity;)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cA:Landroid/webkit/WebViewClient;

    .line 405
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->b(Landroid/webkit/WebViewClient;)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->cP:Z

    .line 406
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->a(Z)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cQ:Lcom/just/agentweb/aj;

    .line 407
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->a(Lcom/just/agentweb/aj;)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    .line 408
    invoke-interface {v1}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->g(Landroid/webkit/WebView;)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->cR:Z

    .line 409
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->b(Z)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    iget v1, p0, Lcom/just/agentweb/AgentWeb;->cS:I

    .line 410
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$a;->e(I)Lcom/just/agentweb/DefaultWebClient$a;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/just/agentweb/DefaultWebClient$a;->aa()Lcom/just/agentweb/DefaultWebClient;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->cT:Lcom/just/agentweb/ai;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    move-object v2, v1

    const/4 v3, 0x1

    .line 417
    :goto_0
    invoke-virtual {v2}, Lcom/just/agentweb/ai;->ar()Lcom/just/agentweb/ai;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {v2}, Lcom/just/agentweb/ai;->ar()Lcom/just/agentweb/ai;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_0
    sget-object v4, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiddlewareWebClientBase middleware count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/just/agentweb/ag;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2, v0}, Lcom/just/agentweb/ai;->c(Landroid/webkit/WebViewClient;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method private init()V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->E()V

    .line 392
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->D()V

    return-void
.end method


# virtual methods
.method public A()Lcom/just/agentweb/r;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cx:Lcom/just/agentweb/r;

    return-object v0
.end method

.method public B()Lcom/just/agentweb/x;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cy:Lcom/just/agentweb/x;

    return-object v0
.end method

.method public C()Lcom/just/agentweb/t;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cM:Lcom/just/agentweb/t;

    return-object v0
.end method

.method public w()Lcom/just/agentweb/aj;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cQ:Lcom/just/agentweb/aj;

    return-object v0
.end method

.method public x()Lcom/just/agentweb/aq;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cN:Lcom/just/agentweb/aq;

    return-object v0
.end method

.method public y()Lcom/just/agentweb/z;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cL:Lcom/just/agentweb/z;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    invoke-interface {v0}, Lcom/just/agentweb/ap;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/aa;->h(Landroid/webkit/WebView;)Lcom/just/agentweb/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->cL:Lcom/just/agentweb/z;

    :cond_0
    return-object v0
.end method

.method public z()Lcom/just/agentweb/ap;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->cw:Lcom/just/agentweb/ap;

    return-object v0
.end method
