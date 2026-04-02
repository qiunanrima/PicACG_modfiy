.class Lcom/picacomic/fregata/fragments/SettingFragment$13$2;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment$13;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$2;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 320
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$2;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$2;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->O(Landroid/content/Context;)I

    move-result v0

    iput v0, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    .line 321
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
