.class Lcom/just/agentweb/m$4;
.super Ljava/lang/Object;
.source "DefaultUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 224
    iput-object p1, p0, Lcom/just/agentweb/m$4;->ea:Lcom/just/agentweb/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/just/agentweb/m$4;->ea:Lcom/just/agentweb/m;

    iget-object p2, p0, Lcom/just/agentweb/m$4;->ea:Lcom/just/agentweb/m;

    invoke-static {p2}, Lcom/just/agentweb/m;->c(Lcom/just/agentweb/m;)Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/m;->a(Landroid/app/Dialog;)V

    .line 228
    iget-object p1, p0, Lcom/just/agentweb/m$4;->ea:Lcom/just/agentweb/m;

    iget-object p2, p0, Lcom/just/agentweb/m$4;->ea:Lcom/just/agentweb/m;

    invoke-static {p2}, Lcom/just/agentweb/m;->b(Lcom/just/agentweb/m;)Landroid/webkit/JsPromptResult;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/just/agentweb/m;->a(Lcom/just/agentweb/m;Landroid/webkit/JsResult;)V

    return-void
.end method
