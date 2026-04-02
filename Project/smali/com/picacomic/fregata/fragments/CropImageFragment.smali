.class public Lcom/picacomic/fregata/fragments/CropImageFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "CropImageFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CropImageFragment"


# instance fields
.field imageButton_done:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012d
    .end annotation
.end field

.field imageButton_rotateLeft:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012e
    .end annotation
.end field

.field imageButton_rotateRight:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012f
    .end annotation
.end field

.field ks:Landroid/net/Uri;

.field mCropView:Lcom/isseiaoki/simplecropview/CropImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900af
    .end annotation
.end field

.field oD:Ljava/lang/String;

.field oE:Landroid/net/Uri;

.field oF:Lcom/picacomic/fregata/a/f;

.field oG:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/picacomic/fregata/fragments/CropImageFragment;
    .locals 3

    .line 73
    new-instance v0, Lcom/picacomic/fregata/fragments/CropImageFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/CropImageFragment;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ImageUriString"

    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CROP_TYPE"

    .line 76
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/CropImageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bI()V
    .locals 0

    .line 226
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 132
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_rotateLeft:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/CropImageFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CropImageFragment$2;-><init>(Lcom/picacomic/fregata/fragments/CropImageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_rotateRight:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/CropImageFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CropImageFragment$3;-><init>(Lcom/picacomic/fregata/fragments/CropImageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->imageButton_done:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/fragments/CropImageFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/CropImageFragment$4;-><init>(Lcom/picacomic/fregata/fragments/CropImageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 103
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 104
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->mCropView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->ks:Landroid/net/Uri;

    new-instance v2, Lcom/picacomic/fregata/fragments/CropImageFragment$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/CropImageFragment$1;-><init>(Lcom/picacomic/fregata/fragments/CropImageFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->a(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/b/c;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/activities/ImageCropActivity;

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/activities/ImageCropActivity;

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oF:Lcom/picacomic/fregata/a/f;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ImageUriString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oD:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oD:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->ks:Landroid/net/Uri;

    .line 87
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/CropImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CROP_TYPE"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oG:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0052

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/CropImageFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/CropImageFragment;->oF:Lcom/picacomic/fregata/a/f;

    .line 247
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
