.class Lcom/just/agentweb/m$9;
.super Ljava/lang/Object;
.source "DefaultUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/m;->a(Ljava/lang/String;Landroid/webkit/JsResult;)V
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

    .line 185
    iput-object p1, p0, Lcom/just/agentweb/m$9;->ea:Lcom/just/agentweb/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/just/agentweb/m$9;->ea:Lcom/just/agentweb/m;

    iget-object p2, p0, Lcom/just/agentweb/m$9;->ea:Lcom/just/agentweb/m;

    iget-object p2, p2, Lcom/just/agentweb/m;->dU:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1, p2}, Lcom/just/agentweb/m;->a(Landroid/app/Dialog;)V

    .line 189
    iget-object p1, p0, Lcom/just/agentweb/m$9;->ea:Lcom/just/agentweb/m;

    invoke-static {p1}, Lcom/just/agentweb/m;->a(Lcom/just/agentweb/m;)Landroid/webkit/JsResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/just/agentweb/m$9;->ea:Lcom/just/agentweb/m;

    invoke-static {p1}, Lcom/just/agentweb/m;->a(Lcom/just/agentweb/m;)Landroid/webkit/JsResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method
