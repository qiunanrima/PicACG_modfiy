.class Lcom/just/agentweb/j$1;
.super Ljava/lang/Object;
.source "BaseJsAccessEntrace.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/j;->b(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dN:Landroid/webkit/ValueCallback;

.field final synthetic dO:Lcom/just/agentweb/j;


# direct methods
.method constructor <init>(Lcom/just/agentweb/j;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/just/agentweb/j$1;->dO:Lcom/just/agentweb/j;

    iput-object p2, p0, Lcom/just/agentweb/j$1;->dN:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/just/agentweb/j$1;->dN:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/just/agentweb/j$1;->dN:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/j$1;->g(Ljava/lang/String;)V

    return-void
.end method
