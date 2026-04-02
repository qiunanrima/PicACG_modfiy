.class Lcom/just/agentweb/d$1;
.super Ljava/lang/Object;
.source "AgentWebJsInterfaceCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/d;->uploadFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dA:Lcom/just/agentweb/d;


# direct methods
.method constructor <init>(Lcom/just/agentweb/d;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/just/agentweb/d$1;->dA:Lcom/just/agentweb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/just/agentweb/d$1;->dA:Lcom/just/agentweb/d;

    invoke-static {v0}, Lcom/just/agentweb/d;->a(Lcom/just/agentweb/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/just/agentweb/d$1;->dA:Lcom/just/agentweb/d;

    invoke-static {v0}, Lcom/just/agentweb/d;->a(Lcom/just/agentweb/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->y()Lcom/just/agentweb/z;

    move-result-object v0

    const-string v2, "uploadFileResult"

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-object p1, v3, v4

    .line 64
    invoke-interface {v0, v2, v3}, Lcom/just/agentweb/z;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return v1
.end method
