.class public Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "OneTimeUpdateQAFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "OneTimeUpdateQAFragment"


# instance fields
.field button_update:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090099
    .end annotation
.end field

.field editText_answer_1:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d7
    .end annotation
.end field

.field editText_answer_2:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d8
    .end annotation
.end field

.field editText_answer_3:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d9
    .end annotation
.end field

.field editText_question_1:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900dd
    .end annotation
.end field

.field editText_question_2:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900de
    .end annotation
.end field

.field editText_question_3:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900df
    .end annotation
.end field

.field qr:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
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
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 121
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->C(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/picacomic/fregata/objects/requests/UpdateQandABody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v10}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Lcom/picacomic/fregata/objects/requests/UpdateQandABody;)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->qr:Lretrofit2/Call;

    .line 127
    iget-object v1, v0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->qr:Lretrofit2/Call;

    new-instance v2, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment$1;-><init>(Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bH()V
    .locals 3

    .line 91
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 93
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/picacomic/fregata/activities/MainActivity;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/activities/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/activities/MainActivity;->t(I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f01fc

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->a(Landroid/support/v7/widget/Toolbar;IZ)V

    return-void
.end method

.method public bI()V
    .locals 3

    .line 104
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 106
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    .line 107
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    .line 108
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    .line 109
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    .line 110
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    .line 111
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800e3

    const v2, 0x7f0f005d

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;II)V

    :cond_6
    return-void
.end method

.method public ca()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 86
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->button_update:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->button_update:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    .line 178
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    .line 179
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    .line 180
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    .line 181
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    .line 182
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_1:Landroid/widget/EditText;

    .line 185
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_2:Landroid/widget/EditText;

    .line 186
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_question_3:Landroid/widget/EditText;

    .line 187
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_1:Landroid/widget/EditText;

    .line 188
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_2:Landroid/widget/EditText;

    .line 189
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->editText_answer_3:Landroid/widget/EditText;

    .line 190
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 184
    invoke-virtual/range {v0 .. v6}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005f

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/OneTimeUpdateQAFragment;->a(Landroid/view/View;)V

    return-object p1
.end method
