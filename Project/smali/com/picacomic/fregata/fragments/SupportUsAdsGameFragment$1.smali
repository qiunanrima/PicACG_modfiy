.class Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment$1;
.super Ljava/lang/Object;
.source "SupportUsAdsGameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rM:Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment$1;->rM:Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 58
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment$1;->rM:Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/SupportUsAdsGameFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f010024

    const v1, 0x7f010025

    const v2, 0x7f010026

    const v3, 0x7f010027

    .line 59
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/GameFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/GameFragment;-><init>()V

    sget-object v1, Lcom/picacomic/fregata/fragments/GameFragment;->TAG:Ljava/lang/String;

    const v2, 0x7f0900ab

    .line 60
    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/GameFragment;->TAG:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
