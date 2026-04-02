.class Lcom/picacomic/fregata/fragments/ProfileFragment$2;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfileFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qW:Lcom/picacomic/fregata/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$2;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 175
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$2;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$2;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010024

    const v1, 0x7f010025

    const v2, 0x7f010026

    const v3, 0x7f010027

    .line 177
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900ab

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$2;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 178
    invoke-static {v1}, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->b(Lcom/picacomic/fregata/objects/UserProfileObject;)Lcom/picacomic/fregata/fragments/ProfileEditFragment;

    move-result-object v1

    sget-object v2, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/ProfileEditFragment;->TAG:Ljava/lang/String;

    .line 179
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
