.class public Lcom/picacomic/fregata/activities/LoginActivity;
.super Lcom/picacomic/fregata/activities/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field countDownTimer:Landroid/os/CountDownTimer;

.field frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

.field iu:Landroid/widget/ImageView;

.field iv:Landroid/widget/ImageView;

.field iw:Landroid/view/animation/Animation;

.field ix:Landroid/view/animation/Animation;

.field iy:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/picacomic/fregata/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 41
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001f

    .line 42
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/LoginActivity;->setContentView(I)V

    const v0, 0x7f090139

    .line 43
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iu:Landroid/widget/ImageView;

    const v0, 0x7f09013a

    .line 44
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iv:Landroid/widget/ImageView;

    const v0, 0x7f0900fa

    .line 45
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    .line 47
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 48
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const v0, 0x7f01001a

    .line 51
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iw:Landroid/view/animation/Animation;

    const v0, 0x7f01001b

    .line 52
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iy:Landroid/view/animation/Animation;

    const v0, 0x7f01001c

    .line 53
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->ix:Landroid/view/animation/Animation;

    if-nez p1, :cond_1

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iu:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iy:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->iw:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->ix:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Start Animation Error"

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 87
    :goto_0
    new-instance p1, Lcom/picacomic/fregata/activities/LoginActivity$1;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/picacomic/fregata/activities/LoginActivity$1;-><init>(Lcom/picacomic/fregata/activities/LoginActivity;JJ)V

    .line 122
    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/LoginActivity$1;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onDestroy()V

    return-void
.end method
