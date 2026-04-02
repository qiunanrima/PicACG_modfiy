.class Lcom/picacomic/fregata/fragments/SettingFragment$12;
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

    .line 233
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 237
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 239
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1000ca

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0f01c2

    .line 240
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f03000d

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v1, v1, Lcom/picacomic/fregata/fragments/SettingFragment;->rD:I

    new-instance v2, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$12$1;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment$12;)V

    .line 241
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$12;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->versionNotSupport(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
