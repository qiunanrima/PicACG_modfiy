.class public Lcom/picacomic/fregata/fragments/ProfilePopupFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProfilePopupFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProfilePopupFragment"


# instance fields
.field imageView_avatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090171
    .end annotation
.end field

.field imageView_character:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090172
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

.field linearLayout_adminFunction:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b9
    .end annotation
.end field

.field oo:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileDirtyResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field qZ:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;"
        }
    .end annotation
.end field

.field ra:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;"
        }
    .end annotation
.end field

.field textView_adminFunction:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cf
    .end annotation
.end field

.field textView_block:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ce
    .end annotation
.end field

.field textView_level:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d0
    .end annotation
.end field

.field textView_levelTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d1
    .end annotation
.end field

.field textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d2
    .end annotation
.end field

.field textView_removeComment:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d3
    .end annotation
.end field

.field textView_slogan:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d4
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d5
    .end annotation
.end field

.field textView_woo:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d6
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static ah(Ljava/lang/String;)Lcom/picacomic/fregata/fragments/ProfilePopupFragment;
    .locals 3

    .line 123
    new-instance v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;-><init>()V

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "USER_ID"

    .line 125
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static c(Lcom/picacomic/fregata/objects/UserProfileObject;)Lcom/picacomic/fregata/fragments/ProfilePopupFragment;
    .locals 3

    .line 131
    new-instance v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;-><init>()V

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "USER_PROFILE_OBJECT"

    .line 133
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bI()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 294
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "@picacomic.com"

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_adminFunction:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_avatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_character:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 333
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_character:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_character:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_level:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_level:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_name:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_name:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/UserProfileObject;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/picacomic/fregata/utils/g;->E(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_slogan:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getSlogan()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 352
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_slogan:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getSlogan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 357
    :cond_8
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 358
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0064

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    :cond_9
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->dismiss()V

    :cond_a
    :goto_1
    return-void
.end method

.method public cd()V
    .locals 3

    .line 542
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 544
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->q(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jX:Lretrofit2/Call;

    .line 546
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jX:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dC()V
    .locals 6

    .line 386
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$14;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$14;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    const v1, 0x7f0800e3

    const v2, 0x7f0f0043

    const v3, 0x7f0f0041

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dD()V
    .locals 4

    .line 397
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 400
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    goto :goto_0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 406
    :goto_0
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/picacomic/fregata/objects/requests/UserIdBody;

    invoke-direct {v3, v1}, Lcom/picacomic/fregata/objects/requests/UserIdBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/picacomic/fregata/b/a;->b(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UserIdBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->ra:Lretrofit2/Call;

    .line 408
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->ra:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dE()V
    .locals 6

    .line 441
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$3;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    const v1, 0x7f0800e3

    const v2, 0x7f0f007f

    const v3, 0x7f0f007d

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dF()V
    .locals 4

    .line 452
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 455
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 461
    :goto_0
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/picacomic/fregata/objects/requests/UserIdBody;

    invoke-direct {v3, v1}, Lcom/picacomic/fregata/objects/requests/UserIdBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UserIdBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->qZ:Lretrofit2/Call;

    .line 463
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->qZ:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dG()V
    .locals 3

    .line 497
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 500
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 506
    :goto_0
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/picacomic/fregata/b/a;->p(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->oo:Lretrofit2/Call;

    .line 508
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->oo:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_PROFILE_OBJECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 267
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 269
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 273
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 274
    new-instance v0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$13;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$13;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0064

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 156
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 158
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_adminFunction:Landroid/widget/TextView;

    new-instance p3, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_block:Landroid/widget/TextView;

    new-instance p3, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$7;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$7;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_woo:Landroid/widget/TextView;

    new-instance p3, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$8;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$8;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_removeComment:Landroid/widget/TextView;

    new-instance p3, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$9;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$9;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->imageView_avatar:Landroid/widget/ImageView;

    new-instance p3, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$10;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_title:Landroid/widget/TextView;

    new-instance p3, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$11;

    invoke-direct {p3, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$11;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance p2, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$12;-><init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V

    .line 223
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_levelTitle:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->textView_level:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->bI()V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->userId:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->cd()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 376
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 377
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->dismiss()V

    .line 380
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 365
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 366
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jX:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jX:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->ra:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->ra:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->qZ:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->qZ:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_2
    return-void
.end method
