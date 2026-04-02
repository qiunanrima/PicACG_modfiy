.class Lcom/picacomic/fregata/fragments/SettingFragment$7;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rE:Lcom/picacomic/fregata/fragments/SettingFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$7;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 449
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 450
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$7;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 451
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 452
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$7;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
