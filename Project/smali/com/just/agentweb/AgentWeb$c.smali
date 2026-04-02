.class public Lcom/just/agentweb/AgentWeb$c;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private dl:Lcom/just/agentweb/AgentWeb$a;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/AgentWeb$a;)V
    .locals 1

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb$c;->dl:Lcom/just/agentweb/AgentWeb$a;

    .line 591
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$c;->dl:Lcom/just/agentweb/AgentWeb$a;

    return-void
.end method


# virtual methods
.method public K()Lcom/just/agentweb/AgentWeb$b;
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$c;->dl:Lcom/just/agentweb/AgentWeb$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/just/agentweb/AgentWeb$a;->a(Lcom/just/agentweb/AgentWeb$a;Z)Z

    .line 602
    new-instance v0, Lcom/just/agentweb/AgentWeb$b;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb$c;->dl:Lcom/just/agentweb/AgentWeb$a;

    invoke-direct {v0, v1}, Lcom/just/agentweb/AgentWeb$b;-><init>(Lcom/just/agentweb/AgentWeb$a;)V

    return-object v0
.end method
