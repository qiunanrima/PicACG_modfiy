.class public Lcom/picacomic/fregata/holders/CategoryWebViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CategoryWebViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private sn:Lcom/picacomic/fregata/holders/CategoryWebViewHolder;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/holders/CategoryWebViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder_ViewBinding;->sn:Lcom/picacomic/fregata/holders/CategoryWebViewHolder;

    const-string v0, "field \'webview\'"

    .line 22
    const-class v1, Lcom/picacomic/fregata/utils/views/SquareWebview;

    const v2, 0x7f09032a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/utils/views/SquareWebview;

    iput-object v0, p1, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->webview:Lcom/picacomic/fregata/utils/views/SquareWebview;

    const-string v0, "field \'textView_title\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090250

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->textView_title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder_ViewBinding;->sn:Lcom/picacomic/fregata/holders/CategoryWebViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder_ViewBinding;->sn:Lcom/picacomic/fregata/holders/CategoryWebViewHolder;

    .line 33
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->webview:Lcom/picacomic/fregata/utils/views/SquareWebview;

    .line 34
    iput-object v1, v0, Lcom/picacomic/fregata/holders/CategoryWebViewHolder;->textView_title:Landroid/widget/TextView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
