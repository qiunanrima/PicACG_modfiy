.class public Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;
.super Ljava/lang/Object;
.source "AdvertisementListSimpleViewHolder.java"


# instance fields
.field public webView_ads:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090324
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 22
    iget-object p1, p0, Lcom/picacomic/fregata/holders/AdvertisementListSimpleViewHolder;->webView_ads:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    return-void
.end method
