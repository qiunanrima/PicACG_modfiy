.class Lcom/just/agentweb/am$1;
.super Ljava/lang/Object;
.source "UrlLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/am;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eN:Lcom/just/agentweb/am;

.field final synthetic el:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/just/agentweb/am;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/just/agentweb/am$1;->eN:Lcom/just/agentweb/am;

    iput-object p2, p0, Lcom/just/agentweb/am$1;->el:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/just/agentweb/am$1;->eN:Lcom/just/agentweb/am;

    iget-object v1, p0, Lcom/just/agentweb/am$1;->el:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/just/agentweb/am;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
