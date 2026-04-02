.class public Lcom/just/agentweb/au;
.super Ljava/lang/Object;
.source "WebSecurityControllerImpl.java"

# interfaces
.implements Lcom/just/agentweb/at;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/just/agentweb/at<",
        "Lcom/just/agentweb/as;",
        ">;"
    }
.end annotation


# instance fields
.field private cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private db:Landroid/webkit/WebView;

.field private fk:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/support/v4/util/ArrayMap;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/just/agentweb/AgentWeb$SecurityType;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/just/agentweb/au;->db:Landroid/webkit/WebView;

    .line 35
    iput-object p2, p0, Lcom/just/agentweb/au;->fk:Landroid/support/v4/util/ArrayMap;

    .line 36
    iput-object p3, p0, Lcom/just/agentweb/au;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    return-void
.end method


# virtual methods
.method public a(Lcom/just/agentweb/as;)V
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/just/agentweb/au;->db:Landroid/webkit/WebView;

    invoke-interface {p1, v0}, Lcom/just/agentweb/as;->j(Landroid/webkit/WebView;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/au;->fk:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/au;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    sget-object v1, Lcom/just/agentweb/AgentWeb$SecurityType;->dq:Lcom/just/agentweb/AgentWeb$SecurityType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/au;->fk:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/just/agentweb/au;->fk:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Lcom/just/agentweb/au;->cJ:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-interface {p1, v0, v1}, Lcom/just/agentweb/as;->a(Landroid/support/v4/util/ArrayMap;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    :cond_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/just/agentweb/as;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/au;->a(Lcom/just/agentweb/as;)V

    return-void
.end method
