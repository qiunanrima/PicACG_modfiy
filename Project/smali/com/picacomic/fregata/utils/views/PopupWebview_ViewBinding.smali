.class public Lcom/picacomic/fregata/utils/views/PopupWebview_ViewBinding;
.super Ljava/lang/Object;
.source "PopupWebview_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/picacomic/fregata/utils/views/PopupWebview;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/utils/views/PopupWebview;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0, p1, p1}, Lcom/picacomic/fregata/utils/views/PopupWebview_ViewBinding;-><init>(Lcom/picacomic/fregata/utils/views/PopupWebview;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/utils/views/PopupWebview;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview_ViewBinding;->target:Lcom/picacomic/fregata/utils/views/PopupWebview;

    const-string v0, "field \'relativeLayout_container\'"

    .line 30
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090209

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const-string v0, "field \'webView_banner\'"

    .line 31
    const-class v1, Landroid/webkit/WebView;

    const v2, 0x7f09032b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    const-string v0, "field \'linearLayout_web\'"

    .line 32
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/utils/views/PopupWebview;->linearLayout_web:Landroid/widget/LinearLayout;

    const-string v0, "field \'imageButton_close\'"

    .line 33
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f090138

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/utils/views/PopupWebview;->imageButton_close:Landroid/widget/ImageButton;

    const-string v0, "field \'textView_text\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview_ViewBinding;->target:Lcom/picacomic/fregata/utils/views/PopupWebview;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview_ViewBinding;->target:Lcom/picacomic/fregata/utils/views/PopupWebview;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->linearLayout_web:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->imageButton_close:Landroid/widget/ImageButton;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
