.class Lcom/picacomic/fregata/activities/LoginActivity$1;
.super Landroid/os/CountDownTimer;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iz:Lcom/picacomic/fregata/activities/LoginActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/LoginActivity;JJ)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/picacomic/fregata/activities/LoginActivity$1;->iz:Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity$1;->iz:Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity$1;->iz:Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity$1;->iz:Lcom/picacomic/fregata/activities/LoginActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/LoginActivity;->iv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity$1;->iz:Lcom/picacomic/fregata/activities/LoginActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/LoginActivity;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/LoginActivity$1;->iz:Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ab

    new-instance v2, Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-direct {v2}, Lcom/picacomic/fregata/fragments/LoginFragment;-><init>()V

    sget-object v3, Lcom/picacomic/fregata/fragments/LoginFragment;->TAG:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
