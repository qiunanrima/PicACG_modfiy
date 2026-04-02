.class public Lcom/picacomic/fregata/fragments/ChangePasswordFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ChangePasswordFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChangePasswordFragment"


# instance fields
.field button_changePassword:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090034
    .end annotation
.end field

.field checkBox_showPassword:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900a0
    .end annotation
.end field

.field editText_password:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900be
    .end annotation
.end field

.field editText_passwordConfirm:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field kK:Z

.field kL:Z

.field kM:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;"
        }
    .end annotation
.end field

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

    .line 64
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public L(Ljava/lang/String;)V
    .locals 4

    .line 187
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/e;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/ChangePasswordBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kM:Lretrofit2/Call;

    .line 191
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kM:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$5;-><init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bH()V
    .locals 3

    .line 163
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 165
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0201

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 167
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 89
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->button_changePassword:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->checkBox_showPassword:Landroid/widget/CheckBox;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kK:Z

    .line 81
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kL:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0045

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kM:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kM:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method
