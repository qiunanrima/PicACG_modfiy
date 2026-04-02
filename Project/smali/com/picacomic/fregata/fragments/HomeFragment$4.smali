.class Lcom/picacomic/fregata/fragments/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/HomeFragment;->ca()V
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

    .line 276
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$4;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$4;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->pp:Lcom/picacomic/fregata/utils/views/PagerIndicator;

    invoke-virtual {v0, p1}, Lcom/picacomic/fregata/utils/views/PagerIndicator;->setCurrentIndex(I)Z

    .line 285
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/HomeFragment$4;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/HomeFragment;->textView_bannerTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment$4;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/BannerObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/HomeFragment$4;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/HomeFragment;->ps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/BannerObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/BannerObject;->getShortDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/HomeFragment$4;->py:Lcom/picacomic/fregata/fragments/HomeFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/HomeFragment;->dm()V

    return-void
.end method
