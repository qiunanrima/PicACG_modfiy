.class Lcom/picacomic/fregata/fragments/SettingFragment$11$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment$11;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$11;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iput p2, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->rB:I

    .line 225
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$11;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_imageQuality:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$11;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->rA:[Ljava/lang/String;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$11;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->rB:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$11;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$11$1;->rH:Lcom/picacomic/fregata/fragments/SettingFragment$11;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$11;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->rB:I

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->c(Landroid/content/Context;I)Z

    return-void
.end method
