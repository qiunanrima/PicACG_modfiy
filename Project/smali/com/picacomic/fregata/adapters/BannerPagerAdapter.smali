.class public Lcom/picacomic/fregata/adapters/BannerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerPagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BannerPagerAdapter"


# instance fields
.field context:Landroid/content/Context;

.field ja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;"
        }
    .end annotation
.end field

.field jc:Landroid/view/LayoutInflater;

.field jd:Landroid/widget/RelativeLayout$LayoutParams;

.field je:Lcom/picacomic/fregata/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;",
            "Lcom/picacomic/fregata/a/k;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->context:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->jc:Landroid/view/LayoutInflater;

    .line 38
    iput-object p2, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->jd:Landroid/widget/RelativeLayout$LayoutParams;

    .line 40
    iput-object p3, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->je:Lcom/picacomic/fregata/a/k;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->jd:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->k(Landroid/webkit/WebView;)V

    .line 61
    iget-object v2, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/BannerObject;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->jd:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v2, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/BannerObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getFileServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/static/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->ja:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/BannerObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ThumbnailObject;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 85
    new-instance v1, Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/picacomic/fregata/adapters/BannerPagerAdapter$1;-><init>(Lcom/picacomic/fregata/adapters/BannerPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
