.class public Lcom/picacomic/fregata/activities/PopupActivity;
.super Lcom/picacomic/fregata/activities/BaseActivity;
.source "PopupActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PopupActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/picacomic/fregata/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    .line 22
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/PopupActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/PopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_KEY_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/PopupActivity;->finish()V

    :cond_0
    if-nez p1, :cond_3

    const-string p1, "TYPE_KEY_COMMENT"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const v1, 0x7f0900ab

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/PopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_KEY_COMIC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/PopupActivity;->finish()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/PopupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v2, 0x0

    .line 40
    invoke-static {v2, p1}, Lcom/picacomic/fregata/fragments/CommentFragment;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/CommentFragment;

    move-result-object p1

    sget-object v2, Lcom/picacomic/fregata/fragments/CommentFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    const-string p1, "TYPE_KEY_SETTING"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/PopupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/SettingFragment;->TAG:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    :goto_0
    return-void
.end method
