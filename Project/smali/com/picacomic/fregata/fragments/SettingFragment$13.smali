.class Lcom/picacomic/fregata/fragments/SettingFragment$13;
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

    .line 265
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const v2, 0x7f0b0036

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0902e7

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090227

    .line 276
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 280
    new-instance v3, Lcom/picacomic/fregata/fragments/SettingFragment$13$1;

    invoke-direct {v3, p0, v0}, Lcom/picacomic/fregata/fragments/SettingFragment$13$1;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment$13;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 300
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    add-int/lit16 v0, v0, -0x3e8

    if-gez v0, :cond_0

    .line 301
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    iget v0, v0, Lcom/picacomic/fregata/fragments/SettingFragment;->hM:I

    add-int/lit16 v0, v0, -0x3e8

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 306
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SettingFragment$13;->rE:Lcom/picacomic/fregata/fragments/SettingFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ca

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f01ab

    .line 307
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0176

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$13$3;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment$13;)V

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f009e

    new-instance v1, Lcom/picacomic/fregata/fragments/SettingFragment$13$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/SettingFragment$13$2;-><init>(Lcom/picacomic/fregata/fragments/SettingFragment$13;)V

    .line 317
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
