.class Lcom/picacomic/fregata/fragments/SettingFragment$17;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 361
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$17;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 365
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$17;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 366
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$17;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->b(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$17;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->toggleButton_performanceEnhancement:Landroid/widget/ToggleButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 369
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$17;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->b(Landroid/content/Context;Z)Z

    :goto_0
    return-void
.end method
