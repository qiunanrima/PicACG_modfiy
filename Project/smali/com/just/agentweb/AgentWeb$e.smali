.class public Lcom/just/agentweb/AgentWeb$e;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private do:Z

.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method constructor <init>(Lcom/just/agentweb/AgentWeb;)V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb$e;->do:Z

    .line 319
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$e;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-void
.end method


# virtual methods
.method public L()Lcom/just/agentweb/AgentWeb$e;
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/just/agentweb/AgentWeb$e;->do:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$e;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb;->c(Lcom/just/agentweb/AgentWeb;)Lcom/just/agentweb/AgentWeb;

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb$e;->do:Z

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 332
    iget-boolean v0, p0, Lcom/just/agentweb/AgentWeb$e;->do:Z

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb$e;->L()Lcom/just/agentweb/AgentWeb$e;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$e;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb;->a(Lcom/just/agentweb/AgentWeb;Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p1

    return-object p1
.end method
