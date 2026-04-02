.class public Lcom/picacomic/fregata/utils/views/ChatroomWebview;
.super Landroid/widget/RelativeLayout;
.source "ChatroomWebview.java"


# instance fields
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
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->webView_banner:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b00a4

    .line 63
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 66
    invoke-static {}, Lcom/picacomic/fregata/utils/a;->dT()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->defaultUrl:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    .line 69
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->webView_banner:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->imageButton_close:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 58
    invoke-virtual {p0}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->getMeasuredWidth()I

    move-result p1

    .line 59
    div-int/lit8 p2, p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->webView_banner:Landroid/webkit/WebView;

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

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->setBannerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/ChatroomWebview;->setBannerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
