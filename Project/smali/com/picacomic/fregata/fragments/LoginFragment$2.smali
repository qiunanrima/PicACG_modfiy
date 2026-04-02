.class Lcom/picacomic/fregata/fragments/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$2;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const p1, 0x7f0900ab

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$2;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010024

    const v2, 0x7f010025

    const v3, 0x7f010026

    const v4, 0x7f010027

    .line 155
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/RegisterFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/RegisterFragment;->TAG:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/picacomic/fregata/fragments/RegisterFragment;->TAG:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$2;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot Run Fragment Animation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$2;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/RegisterFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/RegisterFragment;->TAG:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->TAG:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
