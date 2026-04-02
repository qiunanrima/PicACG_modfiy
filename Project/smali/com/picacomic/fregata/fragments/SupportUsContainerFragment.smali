.class public Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "SupportUsContainerFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SupportUsContainerFragment"


# instance fields
.field rO:Lcom/picacomic/fregata/adapters/SupportUsFragmentPagerAdapter;

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
        value = 0x7f090321
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 90
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0202

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 93
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800ff

    const v2, 0x7f0f0087

    const v3, 0x7f0f0086

    invoke-static {v0, v1, v2, v3}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;III)V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 4

    .line 60
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 62
    new-instance v0, Lcom/picacomic/fregata/adapters/SupportUsFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/adapters/SupportUsFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->rO:Lcom/picacomic/fregata/adapters/SupportUsFragmentPagerAdapter;

    .line 63
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->rO:Lcom/picacomic/fregata/adapters/SupportUsFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 71
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01e6

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 73
    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 75
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 76
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01e4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 77
    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 79
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01e3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 81
    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 83
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006b

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/SupportUsContainerFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
