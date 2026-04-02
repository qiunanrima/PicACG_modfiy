.class Lcom/picacomic/fregata/fragments/SettingFragment$3;
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

    .line 387
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 391
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 392
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 393
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->a(Landroid/content/Context;I)Z

    .line 394
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 395
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/picacomic/fregata/activities/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 397
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$3;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
