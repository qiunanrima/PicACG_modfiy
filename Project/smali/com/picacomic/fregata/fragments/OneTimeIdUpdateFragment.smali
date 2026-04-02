.class public Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "OneTimeIdUpdateFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OneTimeIdUpdateFragment"


# instance fields
.field button_update:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090079
    .end annotation
.end field

.field editText_email:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ce
    .end annotation
.end field

.field editText_username:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900cf
    .end annotation
.end field

.field jW:Lcom/picacomic/fregata/objects/UserProfileObject;

.field jX:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field qn:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;"
        }
    .end annotation
.end field

.field qo:Z

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

    .line 60
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 3

    .line 126
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 128
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01fc

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 133
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->cd()V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;-><init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->button_update:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$2;-><init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public cd()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 161
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->am(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->jX:Lretrofit2/Call;

    .line 167
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->jX:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$3;-><init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dt()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_username:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 77
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->C(Ljava/lang/String;)V

    const-string v0, "Show Progress"

    .line 208
    invoke-static {v0}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/objects/requests/UpdatePicaIdBody;

    invoke-direct {v2, p1, p2}, Lcom/picacomic/fregata/objects/requests/UpdatePicaIdBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UpdatePicaIdBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qn:Lretrofit2/Call;

    .line 214
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qn:Lretrofit2/Call;

    new-instance p2, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;-><init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005e

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->jX:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->jX:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qn:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qn:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 260
    :cond_1
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
