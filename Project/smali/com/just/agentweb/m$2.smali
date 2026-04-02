.class Lcom/just/agentweb/m$2;
.super Ljava/lang/Object;
.source "DefaultUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ea:Lcom/just/agentweb/m;


# direct methods
.method constructor <init>(Lcom/just/agentweb/m;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/just/agentweb/m$2;->ea:Lcom/just/agentweb/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 245
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    iget-object p1, p0, Lcom/just/agentweb/m$2;->ea:Lcom/just/agentweb/m;

    iget-object v0, p0, Lcom/just/agentweb/m$2;->ea:Lcom/just/agentweb/m;

    invoke-static {v0}, Lcom/just/agentweb/m;->b(Lcom/just/agentweb/m;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/just/agentweb/m;->a(Lcom/just/agentweb/m;Landroid/webkit/JsResult;)V

    return-void
.end method
