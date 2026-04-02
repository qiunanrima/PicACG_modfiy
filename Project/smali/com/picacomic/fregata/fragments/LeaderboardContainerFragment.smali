.class public Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "LeaderboardContainerFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LeaderboardContainerFragment"


# instance fields
.field pC:Lcom/picacomic/fregata/adapters/LeaderboardFragmentPagerAdapter;

.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09023e
    .end annotation
.end field

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field

.field viewPager_tags:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031f
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 79
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01fa

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 81
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 59
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->pC:Lcom/picacomic/fregata/adapters/LeaderboardFragmentPagerAdapter;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/picacomic/fregata/adapters/LeaderboardFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/adapters/LeaderboardFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->pC:Lcom/picacomic/fregata/adapters/LeaderboardFragmentPagerAdapter;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->pC:Lcom/picacomic/fregata/adapters/LeaderboardFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 66
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0f014e

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 68
    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 70
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0f014d

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 72
    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public init()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0058

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/LeaderboardContainerFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
