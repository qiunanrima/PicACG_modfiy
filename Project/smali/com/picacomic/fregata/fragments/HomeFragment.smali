.class public Lcom/picacomic/fregata/fragments/HomeFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "HomeFragment"


# instance fields
.field jP:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/AnnouncementsResponse/AnnouncementsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field linearLayout_announcements:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901aa
    .end annotation
.end field

.field linearLayout_collection_1:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ac
    .end annotation
.end field

.field linearLayout_collection_2:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ad
    .end annotation
.end field

.field linearLayout_collection_3:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ae
    .end annotation
.end field

.field linearLayout_collection_4:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901af
    .end annotation
.end field

.field linearLayout_collection_5:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b0
    .end annotation
.end field

.field linearLayout_pagerIndicators:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ab
    .end annotation
.end field

.field menu:Landroid/view/Menu;

.field page:I

.field pn:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/BannersResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field po:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/CollectionsResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

.field pq:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

.field pr:Landroid/os/CountDownTimer;

.field ps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/BannerObject;",
            ">;"
        }
    .end annotation
.end field

.field pt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/AnnouncementObject;",
            ">;"
        }
    .end annotation
.end field

.field pu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/CollectionObject;",
            ">;"
        }
    .end annotation
.end field

.field pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

.field pw:I

.field px:Ljava/lang/String;

.field textView_bannerTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b4
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field

.field viewPager_banner:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031e
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)V
    .locals 7

    .line 735
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 736
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f010027

    const v2, 0x7f010026

    const v3, 0x7f010025

    const v4, 0x7f010024

    const v5, 0x7f0900ab

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getGameId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 738
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 740
    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/BannerObject;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->ad(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/GameDetailFragment;

    move-result-object p1

    sget-object v1, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v5, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->TAG:Ljava/lang/String;

    .line 742
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 743
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v6, "comic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getComicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 749
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/BannerObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 751
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 752
    invoke-virtual {p1, v4, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 753
    :cond_2
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v5, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 754
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/BannerObject;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 760
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/BannerObject;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/picacomic/fregata/utils/g;->A(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bH()V
    .locals 8

    .line 301
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 303
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 306
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getAnnouncementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getAnnouncementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->px:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getContent()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/picacomic/fregata/fragments/HomeFragment$5;

    invoke-direct {v7, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$5;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->bI()V

    .line 317
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dk()V

    .line 318
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dj()V

    .line 319
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dl()V

    .line 321
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 325
    new-instance v3, Lcom/picacomic/fregata/fragments/HomeFragment$6;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$6;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-virtual {v3}, Lcom/picacomic/fregata/fragments/HomeFragment$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setSize(I)V

    .line 329
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->textView_bannerTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/BannerObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/BannerObject;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pq:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dj()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dj()V

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dj()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bI()V
    .locals 8

    .line 361
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 362
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->dL()V

    .line 364
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->b(Ljava/util/ArrayList;)V

    .line 365
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getAnnouncementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->px:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->px:Ljava/lang/String;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getAnnouncementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getContent()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/picacomic/fregata/fragments/HomeFragment$7;

    invoke-direct {v7, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$7;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->ak(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->menu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0800f4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public ca()V
    .locals 3

    .line 272
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 274
    new-instance v0, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/BannerPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pq:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    .line 275
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pq:Lcom/picacomic/fregata/adapters/BannerPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 276
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/picacomic/fregata/fragments/HomeFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$4;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public dj()V
    .locals 2

    .line 410
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 412
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->as(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pn:Lretrofit2/Call;

    .line 414
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pn:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/HomeFragment$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$8;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dk()V
    .locals 3

    .line 464
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 466
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->page:I

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->f(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->jP:Lretrofit2/Call;

    .line 468
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->jP:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/HomeFragment$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$9;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dl()V
    .locals 2

    .line 525
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 527
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->aq(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->po:Lretrofit2/Call;

    .line 529
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->po:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/HomeFragment$10;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$10;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dm()V
    .locals 7

    .line 591
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 594
    :cond_0
    new-instance v0, Lcom/picacomic/fregata/fragments/HomeFragment$2;

    const-wide/16 v3, 0xfa0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/fragments/HomeFragment$2;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;JJ)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    .line 621
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public dn()V
    .locals 8

    .line 653
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pu:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 655
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    mul-int/lit8 v1, v0, 0xa

    add-int/lit16 v5, v1, 0x2710

    .line 659
    :try_start_0
    new-instance v1, Lcom/picacomic/fregata/holders/ComicCollectionView;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pu:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CollectionObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CollectionObject;->getComics()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/picacomic/fregata/holders/ComicCollectionView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 660
    invoke-virtual {v1}, Lcom/picacomic/fregata/holders/ComicCollectionView;->getTextView_title()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pu:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/CollectionObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/CollectionObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    .line 662
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 667
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_3:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 669
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_4:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 670
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_1:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 671
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_collection_5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 676
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public init()V
    .locals 28

    move-object/from16 v6, p0

    .line 191
    invoke-super/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 192
    iget-object v0, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f9

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Lcom/picacomic/fregata/fragments/HomeFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 195
    :cond_0
    iget-object v0, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 197
    iput v2, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->pw:I

    const/4 v0, 0x1

    .line 198
    iput v0, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->page:I

    .line 200
    iget-object v1, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/g;->as(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    new-instance v1, Lcom/picacomic/fregata/utils/views/PagerIndicator;

    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_pagerIndicators:Landroid/widget/LinearLayout;

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/picacomic/fregata/utils/views/PagerIndicator;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iput-object v1, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    const-string v1, "https://storage1.picacomic.com"

    const/4 v3, 0x4

    .line 205
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "dd3a46f9-1fe0-45e4-8fe9-c84950b73083.jpg"

    aput-object v5, v4, v2

    const-string v5, "184ad860-e20f-4517-a07b-d81c17d9620a.jpg"

    aput-object v5, v4, v0

    const-string v5, "b2afb775-5e89-4d1f-a8c8-9cc56873af61.jpg"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "d75914f5-e0ca-4914-9ed3-afc272b3067c.jpg"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 211
    new-array v5, v3, [Ljava/lang/String;

    const-string v9, "cover.jpg"

    aput-object v9, v5, v2

    const-string v9, "cover.jpg"

    aput-object v9, v5, v0

    const-string v9, "cover.jpg"

    aput-object v9, v5, v7

    const-string v9, "cover.jpg"

    aput-object v9, v5, v8

    .line 217
    new-array v9, v3, [Lcom/picacomic/fregata/objects/ThumbnailObject;

    const/4 v10, 0x0

    .line 218
    :goto_0
    array-length v11, v9

    if-ge v10, v11, :cond_1

    .line 219
    new-instance v11, Lcom/picacomic/fregata/objects/ThumbnailObject;

    aget-object v12, v4, v10

    aget-object v13, v5, v10

    invoke-direct {v11, v1, v12, v13}, Lcom/picacomic/fregata/objects/ThumbnailObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 240
    :cond_1
    new-array v1, v3, [Lcom/picacomic/fregata/objects/BannerObject;

    .line 241
    new-instance v3, Lcom/picacomic/fregata/objects/BannerObject;

    const-string v11, "banner1"

    const-string v12, "\u55f6\u54942.0\u516c\u6e2c\u6b63\u5f0f\u958b\u653e\uff01"

    const-string v13, "web"

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "https://picacomic.com"

    const/16 v18, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v18}, Lcom/picacomic/fregata/objects/BannerObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V

    aput-object v3, v1, v2

    .line 242
    new-instance v3, Lcom/picacomic/fregata/objects/BannerObject;

    const-string v20, "banner2"

    const-string v21, "\u73a9\u6a5f\u52d5\u6230\u968a\u9001\u591a\u9e97\u7d72\uff0f\u6559\u7687\u62b1\u6795"

    const-string v22, "game"

    const-string v23, ""

    const-string v24, "58296dee1cc00b5d50b1b5fe"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Lcom/picacomic/fregata/objects/BannerObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V

    aput-object v3, v1, v0

    .line 243
    new-instance v0, Lcom/picacomic/fregata/objects/BannerObject;

    const-string v11, "banner3"

    const-string v12, "\u4e00\u9ede\u6c92\u9732\u537b\u8272\u6c23\u6eff\u6eff\u30fb\u5948\u5948\u8207\u85ab\u7684SM\u65e5\u8a18"

    const-string v13, "comic"

    const-string v14, ""

    const-string v16, "5822a5bcad7ede6546963762"

    const/16 v17, 0x0

    aget-object v18, v9, v2

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/picacomic/fregata/objects/BannerObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V

    aput-object v0, v1, v7

    .line 244
    new-instance v0, Lcom/picacomic/fregata/objects/BannerObject;

    const-string v20, "banner4"

    const-string v21, "\u62ef\u6551\u55f6\u5494\u30fb\u9ede\u64ca\u5ee3\u544a"

    const-string v22, "ads"

    const-string v23, ""

    const/16 v24, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v27}, Lcom/picacomic/fregata/objects/BannerObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/ThumbnailObject;)V

    aput-object v0, v1, v8

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    .line 254
    new-instance v7, Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    invoke-virtual/range {p0 .. p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    new-instance v5, Lcom/picacomic/fregata/fragments/HomeFragment$3;

    invoke-direct {v5, v6}, Lcom/picacomic/fregata/fragments/HomeFragment$3;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    move-object v0, v7

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v7, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    .line 265
    iget-object v0, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/holders/AnnouncementContainerView;->getTextView_title()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f01f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v0, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->linearLayout_announcements:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/picacomic/fregata/fragments/HomeFragment;->pv:Lcom/picacomic/fregata/holders/AnnouncementContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 388
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 389
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dm()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/AnnouncementObject;

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getThumb()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/AnnouncementObject;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showAnnouncementAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 636
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x2710

    if-ne v0, v1, :cond_1

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit16 p1, p1, -0x2710

    .line 640
    new-instance v0, Lcom/picacomic/fregata/objects/ComicListObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pu:Ljava/util/ArrayList;

    div-int/lit8 v3, p1, 0xa

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/CollectionObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/CollectionObject;->getComics()Ljava/util/ArrayList;

    move-result-object v2

    rem-int/lit8 p1, p1, 0xa

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/ComicListObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/picacomic/fregata/objects/ComicListObject;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 642
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0900ab

    .line 643
    invoke-static {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->a(Lcom/picacomic/fregata/objects/ComicListObject;)Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    move-result-object v0

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 644
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 645
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0007

    .line 146
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->menu:Landroid/view/Menu;

    .line 150
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0056

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/e;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/picacomic/fregata/utils/e;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 132
    :cond_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/picacomic/fregata/utils/e;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/picacomic/fregata/fragments/HomeFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/HomeFragment$1;-><init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V

    .line 134
    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/HomeFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 133
    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    :cond_1
    const/4 p2, 0x1

    .line 139
    invoke-virtual {p0, p2}, Lcom/picacomic/fregata/fragments/HomeFragment;->setHasOptionsMenu(Z)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/HomeFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pr:Landroid/os/CountDownTimer;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->jP:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->jP:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pn:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pn:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 404
    :cond_2
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09001c

    if-ne v0, v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 159
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f0900ab

    .line 160
    new-instance v2, Lcom/picacomic/fregata/fragments/NotificationFragment;

    invoke-direct {v2}, Lcom/picacomic/fregata/fragments/NotificationFragment;-><init>()V

    sget-object v3, Lcom/picacomic/fregata/fragments/NotificationFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/ComicListFragment;->TAG:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 165
    :cond_1
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 170
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment;->pt:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/picacomic/fregata/utils/e;->l(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
