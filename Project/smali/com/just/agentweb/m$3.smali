.class Lcom/just/agentweb/m$3;
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

.field final synthetic eb:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/just/agentweb/m;Landroid/widget/EditText;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/just/agentweb/m$3;->ea:Lcom/just/agentweb/m;

    iput-object p2, p0, Lcom/just/agentweb/m$3;->eb:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/just/agentweb/m$3;->ea:Lcom/just/agentweb/m;

    iget-object p2, p0, Lcom/just/agentweb/m$3;->ea:Lcom/just/agentweb/m;

    invoke-static {p2}, Lcom/just/agentweb/m;->c(Lcom/just/agentweb/m;)Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/m;->a(Landroid/app/Dialog;)V

    .line 236
    iget-object p1, p0, Lcom/just/agentweb/m$3;->ea:Lcom/just/agentweb/m;

    invoke-static {p1}, Lcom/just/agentweb/m;->b(Lcom/just/agentweb/m;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/just/agentweb/m$3;->ea:Lcom/just/agentweb/m;

    invoke-static {p1}, Lcom/just/agentweb/m;->b(Lcom/just/agentweb/m;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/m$3;->eb:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
