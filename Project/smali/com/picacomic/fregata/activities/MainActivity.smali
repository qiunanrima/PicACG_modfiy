.class public Lcom/picacomic/fregata/activities/MainActivity;
.super Lcom/picacomic/fregata/activities/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09002b
    .end annotation
.end field

.field button_controlBlock:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012b
    .end annotation
.end field

.field button_controlExp:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012c
    .end annotation
.end field

.field button_home:Landroid/support/v7/widget/AppCompatImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;
    .annotation build Lbutterknife/BindViews;
        value = {
            0x7f090090,
            0x7f09008e,
            0x7f09008f,
            0x7f090091,
            0x7f090092
        }
    .end annotation
.end field

.field iA:Landroid/view/animation/Animation;

.field iB:Landroid/view/animation/Animation;

.field iC:Landroid/view/animation/Animation;

.field iD:Landroid/view/animation/Animation;

.field iE:Landroid/view/animation/Animation;

.field iF:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/InitialResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field iG:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;"
        }
    .end annotation
.end field

.field iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

.field iI:Landroid/widget/RelativeLayout$LayoutParams;

.field private iJ:I

.field private iK:I

.field iL:J

.field public iM:Z

.field public iN:Z

.field linearLayout_tabbar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bd
    .end annotation
.end field

.field public popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/picacomic/fregata/activities/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iL:J

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iM:Z

    .line 115
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iN:Z

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/activities/MainActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iJ:I

    return p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/activities/MainActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iJ:I

    return p1
.end method

.method static synthetic b(Lcom/picacomic/fregata/activities/MainActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iK:I

    return p0
.end method

.method static synthetic b(Lcom/picacomic/fregata/activities/MainActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iK:I

    return p1
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/picacomic/fregata/utils/views/BannerWebview;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/utils/views/BannerWebview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->show(Ljava/lang/String;)V

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/utils/views/PopupWebview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->show(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 716
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 718
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;

    invoke-direct {v2, p1, p2}, Lcom/picacomic/fregata/objects/requests/AdjustExpBody;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/AdjustExpBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iG:Lretrofit2/Call;

    .line 720
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iG:Lretrofit2/Call;

    new-instance p2, Lcom/picacomic/fregata/activities/MainActivity$7;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/activities/MainActivity$7;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bF()V
    .locals 2

    const/4 v0, 0x0

    .line 458
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_home:Landroid/support/v7/widget/AppCompatImageButton;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bH()V
    .locals 1

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/MainActivity;->u(I)V

    .line 483
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bX()V

    .line 484
    invoke-static {p0}, Lcom/picacomic/fregata/utils/g;->av(Landroid/content/Context;)V

    return-void
.end method

.method public bI()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    if-eqz v0, :cond_2

    .line 515
    sget-object v0, Lcom/picacomic/fregata/activities/MainActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->notification:Lcom/picacomic/fregata/objects/NotificationObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->notification:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->notification:Lcom/picacomic/fregata/objects/NotificationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/NotificationObject;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 527
    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/e;->o(Landroid/content/Context;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/e;->o(Landroid/content/Context;Z)Z

    .line 533
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 534
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/InitialResponse;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/e;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 540
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/LatestApplicationObject;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/g;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/InitialResponse;->latestApplication:Lcom/picacomic/fregata/objects/LatestApplicationObject;

    invoke-static {p0, v0}, Lcom/picacomic/fregata/utils/g;->D(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showUpdateApkAlertDialog(Landroid/content/Context;Lcom/picacomic/fregata/objects/LatestApplicationObject;Z)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iH:Lcom/picacomic/fregata/objects/responses/InitialResponse;

    iget-boolean v0, v0, Lcom/picacomic/fregata/objects/responses/InitialResponse;->isIdUpdated:Z

    if-nez v0, :cond_2

    .line 547
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 548
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ab

    new-instance v2, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;

    invoke-direct {v2}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;-><init>()V

    sget-object v3, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->TAG:Ljava/lang/String;

    .line 549
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public bK()V
    .locals 4

    const v0, 0x7f010021

    .line 188
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iA:Landroid/view/animation/Animation;

    .line 189
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iA:Landroid/view/animation/Animation;

    new-instance v2, Lcom/picacomic/fregata/activities/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/activities/MainActivity$1;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f010020

    .line 206
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/activities/MainActivity;->iB:Landroid/view/animation/Animation;

    .line 207
    iget-object v2, p0, Lcom/picacomic/fregata/activities/MainActivity;->iB:Landroid/view/animation/Animation;

    new-instance v3, Lcom/picacomic/fregata/activities/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/picacomic/fregata/activities/MainActivity$3;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 224
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iC:Landroid/view/animation/Animation;

    .line 225
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iC:Landroid/view/animation/Animation;

    new-instance v2, Lcom/picacomic/fregata/activities/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/activities/MainActivity$4;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 242
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iD:Landroid/view/animation/Animation;

    .line 243
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iD:Landroid/view/animation/Animation;

    new-instance v1, Lcom/picacomic/fregata/activities/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/MainActivity$5;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public bV()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/BannerWebview;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->bannerWebview:Lcom/picacomic/fregata/utils/views/BannerWebview;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/views/BannerWebview;->hide()V

    :cond_0
    return-void
.end method

.method public bW()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/utils/views/PopupWebview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/PopupWebview;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->popupWebview:Lcom/picacomic/fregata/utils/views/PopupWebview;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/views/PopupWebview;->show()V

    return-void
.end method

.method public bX()V
    .locals 2

    .line 673
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 675
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->ak(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iF:Lretrofit2/Call;

    .line 677
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iF:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/activities/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/MainActivity$6;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bY()V
    .locals 2

    .line 754
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iI:Landroid/widget/RelativeLayout$LayoutParams;

    .line 755
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlBlock:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 757
    iput-boolean v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iM:Z

    .line 758
    iput-boolean v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iN:Z

    .line 760
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlBlock:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/activities/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/MainActivity$8;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/activities/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/MainActivity$9;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "layout_inflater"

    .line 867
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x1020002

    .line 868
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0b003a

    const/4 v3, 0x0

    .line 869
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a8

    .line 871
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900cd

    .line 872
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1000ca

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 877
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 878
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/activities/MainActivity$2;

    invoke-direct {v0, p0, v2, p2}, Lcom/picacomic/fregata/activities/MainActivity$2;-><init>(Lcom/picacomic/fregata/activities/MainActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    const p2, 0x7f0f0176

    .line 879
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/activities/MainActivity$10;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/activities/MainActivity$10;-><init>(Lcom/picacomic/fregata/activities/MainActivity;)V

    const v0, 0x7f0f009e

    .line 889
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 896
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public init()V
    .locals 0

    .line 313
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bK()V

    return-void
.end method

.method public l(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 847
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    const v0, 0x7f0800e5

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 p1, 0x1

    .line 848
    iput-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iM:Z

    goto :goto_0

    .line 850
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlExp:Landroid/widget/ImageButton;

    const v0, 0x7f0800e6

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 p1, 0x0

    .line 851
    iput-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iM:Z

    :goto_0
    return-void
.end method

.method public m(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 857
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlBlock:Landroid/widget/ImageButton;

    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 p1, 0x1

    .line 858
    iput-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iN:Z

    goto :goto_0

    .line 860
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->button_controlBlock:Landroid/widget/ImageButton;

    const v0, 0x7f0800d5

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 p1, 0x0

    .line 861
    iput-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iN:Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 912
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/MainActivity;->u(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 902
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 125
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/MainActivity;->setContentView(I)V

    .line 126
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const/4 p1, 0x0

    .line 128
    invoke-static {p0, p1}, Lcom/picacomic/fregata/utils/e;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 129
    invoke-static {p0, p1}, Lcom/picacomic/fregata/utils/e;->l(Landroid/content/Context;Ljava/lang/String;)Z

    .line 137
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->init()V

    .line 138
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bF()V

    .line 139
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bH()V

    .line 140
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bD()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 568
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onRestart()V

    .line 569
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bK()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 562
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onResume()V

    .line 563
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bK()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iF:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iF:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iG:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iG:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iC:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iC:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iD:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iD:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iB:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iB:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iA:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 600
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iA:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 603
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iE:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    .line 604
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iE:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 607
    :cond_6
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onStop()V

    return-void
.end method

.method public t(I)V
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->bK()V

    if-nez p1, :cond_1

    .line 347
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iB:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 361
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 362
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->linearLayout_tabbar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->iA:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public u(I)V
    .locals 4

    .line 611
    iget-object v0, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 621
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatImageButton;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/activities/MainActivity;->buttons_tabbar:[Landroid/support/v7/widget/AppCompatImageButton;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatImageButton;->setEnabled(Z)V

    const v0, 0x7f0900ab

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 656
    :pswitch_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 657
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/SettingFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/SettingFragment;->TAG:Ljava/lang/String;

    .line 658
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 649
    :pswitch_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 650
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/ProfileFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/ProfileFragment;->TAG:Ljava/lang/String;

    .line 651
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 652
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 643
    :pswitch_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 644
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/GameFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/GameFragment;->TAG:Ljava/lang/String;

    .line 645
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 646
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 637
    :pswitch_3
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 638
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/CategoryFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/CategoryFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/CategoryFragment;->TAG:Ljava/lang/String;

    .line 639
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 640
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 631
    :pswitch_4
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 632
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/HomeFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/HomeFragment;->TAG:Ljava/lang/String;

    .line 633
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 826
    iget-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iM:Z

    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->l(Z)V

    goto :goto_0

    .line 830
    :cond_0
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/MainActivity;->l(Z)V

    .line 832
    :goto_0
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->m(Z)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 835
    iget-boolean p1, p0, Lcom/picacomic/fregata/activities/MainActivity;->iN:Z

    if-eqz p1, :cond_2

    .line 836
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->m(Z)V

    goto :goto_1

    .line 839
    :cond_2
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/MainActivity;->m(Z)V

    .line 841
    :goto_1
    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->l(Z)V

    :cond_3
    :goto_2
    return-void
.end method
