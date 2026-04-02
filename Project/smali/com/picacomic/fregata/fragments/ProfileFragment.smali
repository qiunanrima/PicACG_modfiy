.class public Lcom/picacomic/fregata/fragments/ProfileFragment;
.super Lcom/picacomic/fregata/fragments/BaseImagePickFragment;
.source "ProfileFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProfileFragment"


# instance fields
.field button_edit:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007e
    .end annotation
.end field

.field expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f0
    .end annotation
.end field

.field gridSize:I

.field imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016e
    .end annotation
.end field

.field imageView_avatarBlur:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field imageView_character:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field imageView_verified:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090173
    .end annotation
.end field

.field jW:Lcom/picacomic/fregata/objects/UserProfileObject;

.field jX:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field qR:Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

.field qS:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/PunchInResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field qT:Landroid/os/CountDownTimer;

.field qU:F

.field qV:Lcom/squareup/picasso/Target;

.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09023e
    .end annotation
.end field

.field textView_honor:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ca
    .end annotation
.end field

.field textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cb
    .end annotation
.end field

.field textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field

.field textView_punchIn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d7
    .end annotation
.end field

.field textView_slogan:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d8
    .end annotation
.end field

.field viewPager_tags:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090320
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;-><init>()V

    const/high16 v0, 0x43340000    # 180.0f

    .line 114
    iput v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qU:F

    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->gridSize:I

    .line 137
    new-instance v0, Lcom/picacomic/fregata/fragments/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qV:Lcom/squareup/picasso/Target;

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;)V
    .locals 3

    .line 371
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->K(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 374
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatarBlur:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/picacomic/fregata/utils/g;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x5

    invoke-static {p1, v1, v2}, Lcom/picacomic/fregata/utils/g;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->cd()V

    :cond_0
    return-void
.end method

.method public Z(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    mul-int p1, p1, p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x19

    return p1
.end method

.method public bH()V
    .locals 2

    .line 223
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->bH()V

    .line 227
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->expCircleView:Lcom/picacomic/fregata/utils/views/ExpCircleView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/ExpCircleView;->setGridSize(I)V

    .line 228
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->cd()V

    return-void
.end method

.method public bI()V
    .locals 8

    .line 261
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->bI()V

    .line 265
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    const v1, 0x7f0f00e4

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 269
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 270
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 293
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qV:Lcom/squareup/picasso/Target;

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 295
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 300
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->A(Landroid/content/Context;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->levelUp(Landroid/content/Context;)V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v4

    invoke-static {v0, v4}, Lcom/picacomic/fregata/utils/e;->a(Landroid/content/Context;I)Z

    .line 313
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_level:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getExp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/picacomic/fregata/fragments/ProfileFragment;->Z(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_name:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_honor:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_slogan:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getSlogan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_verified:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    :goto_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getExp()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v0, v0, v4

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/picacomic/fregata/fragments/ProfileFragment;->Z(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qU:F

    .line 325
    sget-object v0, Lcom/picacomic/fregata/fragments/ProfileFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Angle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qU:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " next = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v5}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/picacomic/fregata/fragments/ProfileFragment;->Z(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qU:F

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->j(F)V

    .line 330
    new-instance v0, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/picacomic/fregata/objects/UserBasicObject;

    iget-object v7, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-direct {v5, v7}, Lcom/picacomic/fregata/objects/UserBasicObject;-><init>(Lcom/picacomic/fregata/objects/UserProfileObject;)V

    invoke-direct {v0, v4, v5}, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/picacomic/fregata/objects/UserBasicObject;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qR:Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

    .line 331
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qR:Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 332
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 333
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 334
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 335
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 337
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v4, 0x7f0f011e

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 339
    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 341
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->isPunched()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 358
    :cond_5
    new-instance v0, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/picacomic/fregata/objects/UserBasicObject;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qR:Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

    .line 359
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qR:Lcom/picacomic/fregata/adapters/ProfileFragmentPagerAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 360
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 361
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 362
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 363
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    :goto_2
    return-void
.end method

.method public ca()V
    .locals 2

    .line 169
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ca()V

    .line 171
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->button_edit:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_name:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_slogan:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$6;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public cd()V
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 442
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 444
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->am(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jX:Lretrofit2/Call;

    .line 448
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jX:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$9;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dA()V
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->textView_punchIn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->punchedIn(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public dB()V
    .locals 2

    .line 400
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 401
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->an(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qS:Lretrofit2/Call;

    .line 407
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qS:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileFragment$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileFragment$8;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 160
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->init()V

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x65

    if-ge v0, v1, :cond_0

    .line 163
    sget-object v1, Lcom/picacomic/fregata/fragments/ProfileFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEVEL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " EXP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->Z(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 8

    .line 237
    new-instance v7, Lcom/picacomic/fregata/fragments/ProfileFragment$7;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xa

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/picacomic/fregata/fragments/ProfileFragment$7;-><init>(Lcom/picacomic/fregata/fragments/ProfileFragment;JJF)V

    iput-object v7, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qT:Landroid/os/CountDownTimer;

    .line 255
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qT:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 124
    iput p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->kv:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0061

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qT:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qT:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jX:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->jX:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qS:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment;->qS:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 389
    :cond_2
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->onDetach()V

    return-void
.end method
