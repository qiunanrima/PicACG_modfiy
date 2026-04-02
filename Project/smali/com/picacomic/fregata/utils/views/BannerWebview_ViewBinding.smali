.class public Lcom/picacomic/fregata/utils/views/BannerWebview_ViewBinding;
.super Ljava/lang/Object;
.source "BannerWebview_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/picacomic/fregata/utils/views/BannerWebview;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/utils/views/BannerWebview;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0, p1, p1}, Lcom/picacomic/fregata/utils/views/BannerWebview_ViewBinding;-><init>(Lcom/picacomic/fregata/utils/views/BannerWebview;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/picacomic/fregata/utils/views/BannerWebview;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview_ViewBinding;->target:Lcom/picacomic/fregata/utils/views/BannerWebview;

    const-string v0, "field \'relativeLayout_container\'"

    .line 28
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090203

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const-string v0, "field \'webView_banner\'"

    .line 29
    const-class v1, Landroid/webkit/WebView;

    const v2, 0x7f090329

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    const-string v0, "field \'imageButton_close\'"

    .line 30
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09011d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p1, Lcom/picacomic/fregata/utils/views/BannerWebview;->imageButton_close:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview_ViewBinding;->target:Lcom/picacomic/fregata/utils/views/BannerWebview;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview_ViewBinding;->target:Lcom/picacomic/fregata/utils/views/BannerWebview;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/utils/views/BannerWebview;->imageButton_close:Landroid/widget/ImageButton;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
