.class Lcom/just/agentweb/aa$1;
.super Ljava/lang/Object;
.source "JsAccessEntraceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/aa;->c(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eA:Ljava/lang/String;

.field final synthetic eB:Landroid/webkit/ValueCallback;

.field final synthetic eC:Lcom/just/agentweb/aa;


# direct methods
.method constructor <init>(Lcom/just/agentweb/aa;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/just/agentweb/aa$1;->eC:Lcom/just/agentweb/aa;

    iput-object p2, p0, Lcom/just/agentweb/aa$1;->eA:Ljava/lang/String;

    iput-object p3, p0, Lcom/just/agentweb/aa$1;->eB:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/just/agentweb/aa$1;->eC:Lcom/just/agentweb/aa;

    iget-object v1, p0, Lcom/just/agentweb/aa$1;->eA:Ljava/lang/String;

    iget-object v2, p0, Lcom/just/agentweb/aa$1;->eB:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/aa;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
