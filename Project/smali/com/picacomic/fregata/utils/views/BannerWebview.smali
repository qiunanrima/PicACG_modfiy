.class public Lcom/picacomic/fregata/utils/views/BannerWebview;
.super Landroid/widget/RelativeLayout;
.source "BannerWebview.java"


# instance fields
.field countDownTimer:Landroid/os/CountDownTimer;

.field defaultUrl:Ljava/lang/String;

.field imageButton_close:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011d
    .end annotation
.end field

.field relativeLayout_container:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090203
    .end annotation
.end field

.field webView_banner:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090329
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->ag(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->defaultUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/g;->ag(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->defaultUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/g;->ag(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->defaultUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b00a4

    .line 68
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/utils/views/BannerWebview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 71
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    .line 72
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->imageButton_close:Landroid/widget/ImageButton;

    new-instance v0, Lcom/picacomic/fregata/utils/views/BannerWebview$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/utils/views/BannerWebview$1;-><init>(Lcom/picacomic/fregata/utils/views/BannerWebview;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 63
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/BannerWebview;->getMeasuredWidth()I

    move-result p1

    .line 64
    div-int/lit8 p2, p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/utils/views/BannerWebview;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/BannerWebview;->setBannerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/BannerWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->setBannerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
