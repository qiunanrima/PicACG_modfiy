.class Lcom/picacomic/fregata/fragments/SettingFragment$12$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment$12;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 245
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    if-eq p1, p2, :cond_0

    .line 246
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iput p2, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    .line 247
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_themeColor:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->rC:[Ljava/lang/String;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->h(Landroid/content/Context;I)Z

    .line 250
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;->rI:Lcom/picacomic/fregata/fragments/SettingFragment$12;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method
