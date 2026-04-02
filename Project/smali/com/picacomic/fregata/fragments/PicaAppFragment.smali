.class public Lcom/picacomic/fregata/fragments/PicaAppFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "PicaAppFragment.java"

# interfaces
.implements Lcom/picacomic/fregata/a/j;


# static fields
.field public static final TAG:Ljava/lang/String; = "PicaAppFragment"


# instance fields
.field linearLayoutWeb:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901be
    .end annotation
.end field

.field mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field qw:Ljava/lang/String;

.field qx:Ljava/lang/String;

.field qy:Ljava/lang/String;

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/PicaAppFragment;
    .locals 3

    .line 67
    new-instance v0, Lcom/picacomic/fregata/fragments/PicaAppFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_PICA_APP_NAME"

    .line 69
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KEY_PICA_APP_URL"

    .line 70
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 6

    .line 283
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/fragments/ChatroomContainerFragment;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/picacomic/fregata/fragments/CustomPicaAppContainerFragment;

    if-eqz p1, :cond_1

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800ed

    const v2, 0x7f0f004c

    const v3, 0x7f0f004b

    new-instance v4, Lcom/picacomic/fregata/fragments/PicaAppFragment$2;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment$2;-><init>(Lcom/picacomic/fregata/fragments/PicaAppFragment;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bH()V
    .locals 4

    .line 118
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 120
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 160
    invoke-static {p0}, Lcom/just/agentweb/AgentWeb;->a(Landroid/support/v4/app/Fragment;)Lcom/just/agentweb/AgentWeb$a;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->linearLayoutWeb:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/AgentWeb$a;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$c;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$c;->K()Lcom/just/agentweb/AgentWeb$b;

    move-result-object v0

    sget-object v1, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->eq:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    .line 163
    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$b;->a(Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)Lcom/just/agentweb/AgentWeb$b;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/fragments/PicaAppFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment$1;-><init>(Lcom/picacomic/fregata/fragments/PicaAppFragment;)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$b;->a(Landroid/webkit/WebViewClient;)Lcom/just/agentweb/AgentWeb$b;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$b;->J()Lcom/just/agentweb/AgentWeb$e;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$e;->L()Lcom/just/agentweb/AgentWeb$e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->qx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pb6XkQ94iBBny1WUAxY0dY5fksexw0dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$e;->a(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 211
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->A()Lcom/just/agentweb/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/r;->n()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->A()Lcom/just/agentweb/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/r;->n()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 240
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public backButton()V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public ca()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    return-void
.end method

.method public fullScreen()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 101
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/picacomic/fregata/MyApplication;->by()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->an(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->qy:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/picacomic/fregata/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_PICA_APP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->qw:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_PICA_APP_URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->qx:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->qx:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->qx:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0060

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/PicaAppFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->x()Lcom/just/agentweb/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/aq;->onDestroy()V

    .line 311
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->x()Lcom/just/agentweb/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/aq;->onPause()V

    .line 299
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/PicaAppFragment;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->x()Lcom/just/agentweb/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/aq;->onResume()V

    .line 306
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onResume()V

    return-void
.end method

.method public rotation()V
    .locals 0

    return-void
.end method
