.class public Lcom/picacomic/fregata/fragments/ChangePinFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "ChangePinFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChangePinFragment"


# instance fields
.field button_cancel:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090036
    .end annotation
.end field

.field button_change:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090035
    .end annotation
.end field

.field editText_pin:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c0
    .end annotation
.end field

.field editText_pinConfirm:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c1
    .end annotation
.end field

.field kK:Z

.field kL:Z

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

    .line 52
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()V
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 149
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01be

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    .line 151
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/BaseActivity;->bD()V

    :cond_1
    return-void
.end method

.method public bI()V
    .locals 0

    .line 163
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 76
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pin:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;-><init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pinConfirm:Landroid/widget/EditText;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePinFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment$2;-><init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->button_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePinFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment$3;-><init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->button_change:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/ChangePinFragment$4;-><init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->kK:Z

    .line 69
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment;->kL:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0046

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
