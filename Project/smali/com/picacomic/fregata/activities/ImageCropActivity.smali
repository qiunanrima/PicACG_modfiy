.class public Lcom/picacomic/fregata/activities/ImageCropActivity;
.super Lcom/picacomic/fregata/activities/BaseActivity;
.source "ImageCropActivity.java"

# interfaces
.implements Lcom/picacomic/fregata/a/f;


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageCropActivity"


# instance fields
.field ir:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/PutAvatarResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field is:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/picacomic/fregata/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;)V
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CROP_IMAGE_RESULT_URI"

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    iget v0, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->type:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 85
    iput-object v1, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->is:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->finish()V

    goto :goto_0

    .line 78
    :pswitch_0
    iput-object v1, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->is:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->finish()V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ImageCropActivity;->c(Landroid/net/Uri;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/net/Uri;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 94
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 100
    :try_start_0
    new-instance v1, Lcom/picacomic/fregata/objects/requests/AvatarBody;

    const/16 v2, 0xc8

    invoke-static {p0, p1, v2}, Lcom/picacomic/fregata/utils/g;->c(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->f(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/picacomic/fregata/objects/requests/AvatarBody;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object p1

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/AvatarBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->ir:Lretrofit2/Call;

    .line 104
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->ir:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/activities/ImageCropActivity$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/activities/ImageCropActivity$1;-><init>(Lcom/picacomic/fregata/activities/ImageCropActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 47
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ImageCropActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "KEY_IMAGE_URI_STRING"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->is:Ljava/lang/String;

    const-string v0, "KEY_ACTION_TYPE"

    const/4 v1, 0x2

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->type:I

    .line 61
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900ab

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->is:Ljava/lang/String;

    iget v2, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->type:I

    .line 62
    invoke-static {v1, v2}, Lcom/picacomic/fregata/fragments/CropImageFragment;->a(Ljava/lang/String;I)Lcom/picacomic/fregata/fragments/CropImageFragment;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/CropImageFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ImageCropActivity;->setResult(I)V

    .line 66
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ImageCropActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->ir:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ImageCropActivity;->ir:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onDestroy()V

    return-void
.end method
