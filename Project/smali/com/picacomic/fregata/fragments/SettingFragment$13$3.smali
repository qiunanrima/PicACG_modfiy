.class Lcom/picacomic/fregata/fragments/SettingFragment$13$3;
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

    .line 309
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 312
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    invoke-static {p2, v0}, Lcom/picacomic/fregata/utils/e;->b(Landroid/content/Context;I)Z

    .line 313
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_autoPagingInterval:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object v3, v3, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v3, v3, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;->rK:Lcom/picacomic/fregata/fragments/SettingFragment$13;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    const v2, 0x7f0f01a6

    invoke-virtual {v1, v2}, Lcom/picacomic/fregata/fragments/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
