.class public Lcom/picacomic/fregata/utils/views/PopupWebview;
.super Landroid/widget/RelativeLayout;
.source "PopupWebview.java"


# instance fields
.field countDownTimer:Landroid/os/CountDownTimer;

.field defaultUrl:Ljava/lang/String;

.field imageButton_close:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090138
    .end annotation
.end field

.field linearLayout_web:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901be
    .end annotation
.end field

.field mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field mContext:Landroid/content/Context;

.field relativeLayout_container:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090209
    .end annotation
.end field

.field textView_text:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c7
    .end annotation
.end field

.field webView_banner:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09032b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->af(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->defaultUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/g;->af(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->defaultUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-static {p1}, Lcom/picacomic/fregata/utils/e;->al(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/g;->af(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->defaultUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/utils/e;->b(Landroid/content/Context;J)Z

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->mContext:Landroid/content/Context;

    const v0, 0x7f0b00af

    .line 86
    invoke-static {p1, v0, p0}, Lcom/picacomic/fregata/utils/views/PopupWebview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 89
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    .line 90
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->imageButton_close:Landroid/widget/ImageButton;

    new-instance v0, Lcom/picacomic/fregata/utils/views/PopupWebview$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/utils/views/PopupWebview$1;-><init>(Lcom/picacomic/fregata/utils/views/PopupWebview;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

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

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->webView_banner:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->defaultUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/utils/views/PopupWebview;->setBannerUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->relativeLayout_container:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->imageButton_close:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->setBannerUrl(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->textView_text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez p1, :cond_1

    .line 148
    new-instance p1, Lcom/picacomic/fregata/utils/views/PopupWebview$2;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/PopupWebview$2;-><init>(Lcom/picacomic/fregata/utils/views/PopupWebview;JJ)V

    .line 165
    invoke-virtual {p1}, Lcom/picacomic/fregata/utils/views/PopupWebview$2;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->countDownTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/utils/views/PopupWebview;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_2
    :goto_0
    return-void
.end method
