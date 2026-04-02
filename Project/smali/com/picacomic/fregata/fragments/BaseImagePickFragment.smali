.class public Lcom/picacomic/fregata/fragments/BaseImagePickFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "BaseImagePickFragment.java"


# instance fields
.field private ks:Landroid/net/Uri;

.field kt:Landroid/net/Uri;

.field ku:Landroid/net/Uri;

.field kv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kv:I

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public cf()V
    .locals 4

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ks:Landroid/net/Uri;

    .line 44
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    .line 45
    iput-object v0, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ku:Landroid/net/Uri;

    .line 46
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 47
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0058

    .line 51
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0176

    new-instance v2, Lcom/picacomic/fregata/fragments/BaseImagePickFragment$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment$1;-><init>(Lcom/picacomic/fregata/fragments/BaseImagePickFragment;)V

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/BaseActivity;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/BaseActivity;->requestPermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cg()V
    .locals 2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public ch()V
    .locals 4

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Pic.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "output"

    .line 93
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ks:Landroid/net/Uri;

    const/16 v1, 0x6f

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/picacomic/fregata/fragments/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    const/4 v1, -0x1

    const/16 v2, 0xde

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p2, v1, :cond_3

    const-string p1, "CROP_IMAGE_RESULT_URI"

    .line 138
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    sget-object p2, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CROP_PHOTO uriString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->K(Ljava/lang/String;)V

    .line 141
    sget-object p2, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cropImageUriString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ku:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->ks:Landroid/net/Uri;

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    .line 106
    sget-object p1, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TAKE_PICTURE imageResultUri = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/picacomic/fregata/activities/ImageCropActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "KEY_ACTION_TYPE"

    .line 108
    iget p3, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kv:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_IMAGE_URI_STRING"

    .line 109
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, p1, v2}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    .line 122
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    .line 123
    sget-object p1, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SELECT_PHOTO imageResultUri = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/picacomic/fregata/activities/ImageCropActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "KEY_ACTION_TYPE"

    .line 125
    iget p3, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kv:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_IMAGE_URI_STRING"

    .line 126
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->kt:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1, v2}, Lcom/picacomic/fregata/fragments/BaseImagePickFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method
