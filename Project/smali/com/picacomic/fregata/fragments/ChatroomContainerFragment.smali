.class public Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ChatroomContainerFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChatroomContainerFragment"


# instance fields
.field arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ChatroomListObject;",
            ">;"
        }
    .end annotation
.end field

.field gson:Lcom/google/gson/Gson;

.field jR:Z

.field kS:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ChatroomListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field kT:Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;

.field viewPager_tags:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 225
    sget-object p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->TAG:Ljava/lang/String;

    const-string v0, "TESTING BACK"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bH()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 125
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->chatroomRules(Landroid/content/Context;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->cm()V

    return-void
.end method

.method public bI()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 136
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kT:Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public ca()V
    .locals 3

    .line 99
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 101
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kT:Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kT:Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->viewPager_tags:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kT:Lcom/picacomic/fregata/adapters/ChatroomFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_1
    return-void
.end method

.method public cm()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->jR:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->jR:Z

    .line 150
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->C(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->at(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kS:Lretrofit2/Call;

    .line 156
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kS:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 73
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 75
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->gson:Lcom/google/gson/Gson;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;)V

    .line 87
    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->arrayList:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0048

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kS:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;->kS:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 218
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
