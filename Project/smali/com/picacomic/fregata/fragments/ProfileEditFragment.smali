.class public Lcom/picacomic/fregata/fragments/ProfileEditFragment;
.super Lcom/picacomic/fregata/fragments/BaseImagePickFragment;
.source "ProfileEditFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProfileEditFragment"


# instance fields
.field button_update:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007f
    .end annotation
.end field

.field editText_slogan:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d6
    .end annotation
.end field

.field imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016e
    .end annotation
.end field

.field jW:Lcom/picacomic/fregata/objects/UserProfileObject;

.field qO:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;"
        }
    .end annotation
.end field

.field textView_birth:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c8
    .end annotation
.end field

.field textView_email:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c9
    .end annotation
.end field

.field textView_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;-><init>()V

    return-void
.end method

.method public static b(Lcom/picacomic/fregata/objects/UserProfileObject;)Lcom/picacomic/fregata/fragments/ProfileEditFragment;
    .locals 3

    .line 98
    new-instance v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "USER_PROFILE_OBJECT"

    .line 100
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public K(Ljava/lang/String;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->K(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public ag(Ljava/lang/String;)V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->C(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;

    invoke-direct {v2, p1}, Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UpdateProfileBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->qO:Lretrofit2/Call;

    .line 185
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->qO:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment$3;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ProfileEditFragment;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bH()V
    .locals 4

    .line 145
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->bH()V

    .line 146
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01ff

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 148
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getAvatar()Lcom/picacomic/fregata/objects/ThumbnailObject;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->b(Lcom/picacomic/fregata/objects/ThumbnailObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/UserProfileObject;->getBirthday()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_birth:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getBirthday()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->textView_email:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/UserProfileObject;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->editText_slogan:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getSlogan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public bI()V
    .locals 0

    .line 165
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ca()V

    .line 121
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->imageView_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileEditFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ProfileEditFragment;)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->button_update:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ProfileEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->init()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 83
    iput p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->kv:I

    .line 85
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_PROFILE_OBJECT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/UserProfileObject;

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0063

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
