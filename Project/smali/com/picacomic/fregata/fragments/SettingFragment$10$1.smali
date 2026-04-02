.class Lcom/picacomic/fregata/fragments/SettingFragment$10$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SettingFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SettingFragment$10;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iput p2, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->rz:I

    .line 207
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment;->textView_scrollDirection:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment;->ry:[Ljava/lang/String;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->rz:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$10$1;->rG:Lcom/picacomic/fregata/fragments/SettingFragment$10;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment$10;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->rz:I

    invoke-virtual {p2, v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->ab(I)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;Z)Z

    return-void
.end method
