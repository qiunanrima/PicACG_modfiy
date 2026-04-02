.class Lcom/just/agentweb/DefaultWebClient$1;
.super Ljava/lang/Object;
.source "DefaultWebClient.java"

# interfaces
.implements Lcom/alipay/sdk/app/H5PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultWebClient;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ej:Landroid/webkit/WebView;

.field final synthetic ek:Lcom/just/agentweb/DefaultWebClient;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultWebClient;Landroid/webkit/WebView;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebClient$1;->ek:Lcom/just/agentweb/DefaultWebClient;

    iput-object p2, p0, Lcom/just/agentweb/DefaultWebClient$1;->ej:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
