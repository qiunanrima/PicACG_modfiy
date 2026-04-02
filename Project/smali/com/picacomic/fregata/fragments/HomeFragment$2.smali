.class Lcom/picacomic/fregata/fragments/HomeFragment$2;
.super Landroid/os/CountDownTimer;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/HomeFragment;->dm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic py:Lcom/picacomic/fregata/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/HomeFragment;JJ)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    if-eqz v0, :cond_1

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    invoke-virtual {v0}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->getCurrentIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 608
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->viewPager_banner:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$2;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/HomeFragment;->dm()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
