.class public Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "SupportUsAdsGameFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SupportUsAdsGameFragment"


# instance fields
.field imageView_game:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090176
    .end annotation
.end field

.field webView_ads:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090327
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 72
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;->webView_ads:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    .line 74
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;->webView_ads:Landroid/webkit/WebView;

    invoke-static {}, Lcom/picacomic/fregata/utils/a;->dS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 55
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;->imageView_game:Landroid/widget/ImageView;

    new-instance v1, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment$1;-><init>(Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006a

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
