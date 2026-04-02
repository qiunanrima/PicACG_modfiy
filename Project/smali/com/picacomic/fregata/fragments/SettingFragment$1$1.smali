.class Lcom/picacomic/fregata/fragments/SettingFragment$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment$1;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iput p2, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->rx:I

    .line 181
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_screenOrientation:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->rw:[Ljava/lang/String;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->rx:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$1$1;->rF:Lcom/picacomic/fregata/fragments/SettingFragment$1;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$1;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->rx:I

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->ab(I)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->e(Landroid/content/Context;Z)Z

    return-void
.end method
