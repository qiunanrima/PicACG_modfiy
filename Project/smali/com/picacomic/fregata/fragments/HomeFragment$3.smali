.class Lcom/picacomic/fregata/fragments/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/HomeFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic py:Lcom/picacomic/fregata/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/HomeFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$3;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 257
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$3;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/HomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$3;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$3;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f010024

    const v1, 0x7f010025

    const v2, 0x7f010026

    const v3, 0x7f010027

    .line 259
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const v0, 0x7f0900ab

    .line 260
    new-instance v1, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    sget-object v0, Lcom/picacomic/fregata/fragments/AnnouncementListFragment;->TAG:Ljava/lang/String;

    .line 261
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
