.class public Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TitleEditPopupFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TitleEditPopupFragment"


# instance fields
.field button_cancel:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090097
    .end annotation
.end field

.field button_confirm:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090098
    .end annotation
.end field

.field editText_newTitle:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e6
    .end annotation
.end field

.field lg:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;"
        }
    .end annotation
.end field

.field public rY:Ljava/lang/String;

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f9
    .end annotation
.end field

.field textView_userId:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fa
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;
    .locals 3

    .line 87
    new-instance v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;

    invoke-direct {v0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "USER_ID"

    .line 89
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "USER_TITLE"

    .line 90
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public aj(Ljava/lang/String;)V
    .locals 4

    .line 223
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->userId:Ljava/lang/String;

    new-instance v3, Lcom/picacomic/fregata/objects/requests/UpdateUserTitleBody;

    invoke-direct {v3, p1}, Lcom/picacomic/fregata/objects/requests/UpdateUserTitleBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UpdateUserTitleBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->lg:Lretrofit2/Call;

    .line 227
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->lg:Lretrofit2/Call;

    new-instance v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$4;-><init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bF()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->button_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$2;-><init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->button_confirm:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$3;-><init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bI()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->userId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_userId:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_userId:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->rY:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->rY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->userId:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_TITLE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->rY:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 121
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 125
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    new-instance v0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment$1;-><init>(Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006f

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 111
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->bF()V

    .line 112
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->bI()V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 214
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 215
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->dismiss()V

    .line 218
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 208
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->lg:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/TitleEditPopupFragment;->lg:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_0
    return-void
.end method
