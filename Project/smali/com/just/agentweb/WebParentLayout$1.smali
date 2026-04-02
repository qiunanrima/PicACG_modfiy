.class Lcom/just/agentweb/WebParentLayout$1;
.super Ljava/lang/Object;
.source "WebParentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/WebParentLayout;->au()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fh:Landroid/view/View;

.field final synthetic fi:Lcom/just/agentweb/WebParentLayout;


# direct methods
.method constructor <init>(Lcom/just/agentweb/WebParentLayout;Landroid/view/View;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout$1;->fi:Lcom/just/agentweb/WebParentLayout;

    iput-object p2, p0, Lcom/just/agentweb/WebParentLayout$1;->fh:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/just/agentweb/WebParentLayout$1;->fi:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p1}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/just/agentweb/WebParentLayout$1;->fh:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 121
    iget-object p1, p0, Lcom/just/agentweb/WebParentLayout$1;->fi:Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {p1}, Lcom/just/agentweb/WebParentLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method
