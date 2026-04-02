.class public Lcom/picacomic/fregata/fragments/GameDetailFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "GameDetailFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/k;


# static fields
.field public static final TAG:Ljava/lang/String; = "GameDetailFragment"


# instance fields
.field appBarLayout:Landroid/support/design/widget/AppBarLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090029
    .end annotation
.end field

.field button_download:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090078
    .end annotation
.end field

.field collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900aa
    .end annotation
.end field

.field frameLayout_banner:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010f
    .end annotation
.end field

.field private gameId:Ljava/lang/String;

.field imageButton_closePopup:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090130
    .end annotation
.end field

.field imageButton_comment:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090131
    .end annotation
.end field

.field imageButton_descriptionHeightControl:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090132
    .end annotation
.end field

.field imageButton_gift:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090133
    .end annotation
.end field

.field imageButton_like:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090134
    .end annotation
.end field

.field imageButton_playVideo:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090135
    .end annotation
.end field

.field imageButton_versionDescriptionHeightControl:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090136
    .end annotation
.end field

.field imageView_adult:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field imageView_android:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field

.field imageView_banner:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015a
    .end annotation
.end field

.field imageView_icon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015b
    .end annotation
.end field

.field imageView_ios:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015c
    .end annotation
.end field

.field imageView_recommend:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015d
    .end annotation
.end field

.field isLiked:Z

.field mT:Landroid/graphics/drawable/TransitionDrawable;

.field mU:Landroid/view/animation/Animation;

.field mV:Landroid/view/animation/Animation;

.field nestedScrollView:Landroid/support/v4/widget/NestedScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d2
    .end annotation
.end field

.field nh:Z

.field oS:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/GameDetailResponse/GameDetailResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field oT:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ActionResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field oU:Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

.field oV:Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;

.field oW:Landroid/widget/MediaController;

.field oX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ThumbnailObject;",
            ">;"
        }
    .end annotation
.end field

.field oY:Lcom/picacomic/fregata/objects/ThumbnailObject;

.field private oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

.field pa:Z

.field pb:Z

.field recyclerView_screenShots:Lcom/picacomic/fregata/utils/views/SnapRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fc
    .end annotation
.end field

.field relativeLayout_popup:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090207
    .end annotation
.end field

.field screenWidth:I

.field textView_commentCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a9
    .end annotation
.end field

.field textView_description:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902aa
    .end annotation
.end field

.field textView_download:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field textView_gameSize:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ae
    .end annotation
.end field

.field textView_likeCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ac
    .end annotation
.end field

.field textView_publisher:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ad
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902af
    .end annotation
.end field

.field textView_version:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b1
    .end annotation
.end field

.field textView_versionDescription:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field

.field videoView:Landroid/widget/VideoView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031a
    .end annotation
.end field

.field viewPager_screenShots:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->isLiked:Z

    .line 186
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->pa:Z

    .line 188
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->nh:Z

    .line 190
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->pb:Z

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Lcom/picacomic/fregata/objects/GameDetailObject;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    return-object p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/GameDetailFragment;Lcom/picacomic/fregata/objects/GameDetailObject;)Lcom/picacomic/fregata/objects/GameDetailObject;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    return-object p1
.end method

.method public static ad(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/GameDetailFragment;
    .locals 3

    .line 197
    new-instance v0, Lcom/picacomic/fregata/fragments/GameDetailFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;-><init>()V

    .line 198
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_GAME_ID"

    .line 199
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/GameDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->gameId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public C(I)V
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->c(IZ)V

    .line 609
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->viewPager_screenShots:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public bH()V
    .locals 3

    .line 386
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 388
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01f7

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 390
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->dg()V

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bI()V

    :goto_0
    return-void
.end method

.method public bI()V
    .locals 5

    .line 398
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 399
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->isAdult()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_adult:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_adult:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->isSuggest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_recommend:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_recommend:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_android:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_android:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    :goto_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->isIos()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_ios:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_ios:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    :goto_3
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->isLiked:Z

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/GameDetailObject;->isLiked()Z

    move-result v3

    if-eq v0, v3, :cond_4

    .line 423
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->isLiked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->isLiked:Z

    .line 424
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->isLiked:Z

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->z(Z)V

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->getVideoLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/GameDetailObject;->getVideoLink()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/GameDetailObject;->getVideoLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 430
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oW:Landroid/widget/MediaController;

    .line 431
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oW:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oW:Landroid/widget/MediaController;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->pa:Z

    .line 434
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_playVideo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    iput-boolean v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->pa:Z

    .line 438
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_playVideo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 441
    :cond_5
    iput-boolean v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->pa:Z

    .line 442
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_playVideo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 445
    :goto_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_publisher:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getPublisher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_gameSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getAndroidSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_commentCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getCommentsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_likeCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getLikesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_download:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getDownloadsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_version:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_versionDescription:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getUpdateContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->textView_description:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/GameDetailObject;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oZ:Lcom/picacomic/fregata/objects/GameDetailObject;

    .line 456
    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/GameDetailObject;->getIcon()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_icon:Landroid/widget/ImageView;

    .line 457
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 460
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oY:Lcom/picacomic/fregata/objects/ThumbnailObject;

    if-eqz v0, :cond_6

    .line 461
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oY:Lcom/picacomic/fregata/objects/ThumbnailObject;

    .line 462
    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageView_banner:Landroid/widget/ImageView;

    .line 463
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oU:Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 467
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oV:Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public c(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 614
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 615
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 617
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->viewPager_screenShots:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 618
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 619
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 620
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_2

    .line 625
    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->pa:Z

    if-eqz p1, :cond_3

    .line 626
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 632
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->viewPager_screenShots:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 633
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 637
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setVisibility(I)V

    .line 638
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->relativeLayout_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public ca()V
    .locals 4

    .line 267
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 269
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$1;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 295
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->button_download:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$4;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_gift:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$5;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_playVideo:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$6;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_closePopup:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$7;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$8;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_comment:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$9;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_descriptionHeightControl:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$10;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_versionDescriptionHeightControl:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$11;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->recyclerView_screenShots:Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 375
    new-instance v0, Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oX:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oU:Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

    .line 376
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->recyclerView_screenShots:Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oU:Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 378
    new-instance v0, Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oX:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oV:Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;

    .line 379
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->viewPager_screenShots:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oV:Lcom/picacomic/fregata/adapters/GameScreenShotViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 645
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 646
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mU:Landroid/view/animation/Animation;

    .line 649
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mU:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public dg()V
    .locals 3

    .line 472
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 473
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->gameId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->z(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oS:Lretrofit2/Call;

    .line 479
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oS:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$2;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dh()V
    .locals 3

    .line 550
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->bA()V

    .line 554
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 556
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->gameId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->A(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oT:Lretrofit2/Call;

    .line 558
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oT:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment$3;-><init>(Lcom/picacomic/fregata/fragments/GameDetailFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 654
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 655
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mV:Landroid/view/animation/Animation;

    .line 658
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mV:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public init()V
    .locals 6

    .line 227
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 229
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mU:Landroid/view/animation/Animation;

    .line 230
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mV:Landroid/view/animation/Animation;

    .line 232
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 240
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->screenWidth:I

    .line 244
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->recyclerView_screenShots:Lcom/picacomic/fregata/utils/views/SnapRecyclerView;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/views/SnapRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->screenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->frameLayout_banner:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->screenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d6

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800d7

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    .line 251
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->imageButton_like:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oX:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oX:Ljava/util/ArrayList;

    .line 261
    :cond_1
    new-instance v0, Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oX:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/picacomic/fregata/a/k;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oU:Lcom/picacomic/fregata/adapters/GameScreenShotRecyclerViewAdapter;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 210
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_GAME_ID"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->gameId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0055

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oS:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oS:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oT:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->oT:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 668
    :cond_1
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public z(Z)V
    .locals 2

    const v0, 0x7f0a0002

    if-eqz p1, :cond_0

    .line 540
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/GameDetailFragment;->mT:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/GameDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :goto_0
    return-void
.end method
