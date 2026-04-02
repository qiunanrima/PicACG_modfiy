.class public Lcom/just/agentweb/AgentWeb$b;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private dl:Lcom/just/agentweb/AgentWeb$a;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/AgentWeb$a;)V
    .locals 0

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$b;->dl:Lcom/just/agentweb/AgentWeb$a;

    return-void
.end method


# virtual methods
.method public J()Lcom/just/agentweb/AgentWeb$e;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$b;->dl:Lcom/just/agentweb/AgentWeb$a;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb$a;->E(Lcom/just/agentweb/AgentWeb$a;)Lcom/just/agentweb/AgentWeb$e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/webkit/WebViewClient;)Lcom/just/agentweb/AgentWeb$b;
    .locals 1
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 659
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$b;->dl:Lcom/just/agentweb/AgentWeb$a;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$a;->a(Lcom/just/agentweb/AgentWeb$a;Landroid/webkit/WebViewClient;)Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public a(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$b;
    .locals 1
    .param p1    # Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 747
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$b;->dl:Lcom/just/agentweb/AgentWeb$a;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb$a;->a(Lcom/just/agentweb/AgentWeb$a;Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-object p0
.end method
