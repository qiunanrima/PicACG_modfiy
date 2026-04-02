.class public Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdvertisementListViewHolder.java"


# instance fields
.field public webView_ads:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090324
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 23
    iget-object p1, p0, Lcom/picacomic/fregata/holders/AdvertisementListViewHolder;->webView_ads:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    return-void
.end method
