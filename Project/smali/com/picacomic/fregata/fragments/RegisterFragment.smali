.class public Lcom/picacomic/fregata/fragments/RegisterFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "RegisterFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RegisterFragment"


# instance fields
.field birthday:Ljava/lang/String;

.field button_register:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090083
    .end annotation
.end field

.field buttons_gender:[Landroid/support/v7/widget/AppCompatButton;
    .annotation build Lbutterknife/BindViews;
        value = {
            0x7f090082,
            0x7f090081,
            0x7f090080
        }
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

.field editText_email:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900da
    .end annotation
.end field

.field editText_password:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900db
    .end annotation
.end field

.field editText_passwordConfirm:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900dc
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

.field editText_username:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e0
    .end annotation
.end field

.field frameLayout_backgroundWhite:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090111
    .end annotation
.end field

.field genders:[Ljava/lang/String;
    .annotation build Lbutterknife/BindArray;
        value = 0x7f030008
    .end annotation
.end field

.field iE:Landroid/view/animation/Animation;

.field pU:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/SignInResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field rg:Ljava/lang/String;

.field private rh:I

.field private ri:I

.field private rj:I

.field private rk:I

.field private rl:I

.field private rm:I

.field private rn:I

.field ro:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;"
        }
    .end annotation
.end field

.field textView_birthday:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902dc
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rh:I

    return p0
.end method

.method static synthetic a(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rk:I

    return p1
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ri:I

    return p0
.end method

.method static synthetic b(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rl:I

    return p1
.end method

.method static synthetic c(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rk:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rk:I

    return v0
.end method

.method static synthetic c(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rm:I

    return p1
.end method

.method static synthetic d(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rj:I

    return p0
.end method

.method static synthetic d(Lcom/picacomic/fregata/fragments/RegisterFragment;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rn:I

    return p1
.end method

.method static synthetic e(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rk:I

    return p0
.end method

.method static synthetic f(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rl:I

    return p0
.end method

.method static synthetic g(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rm:I

    return p0
.end method

.method static synthetic h(Lcom/picacomic/fregata/fragments/RegisterFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rn:I

    return p0
.end method


# virtual methods
.method public aa(I)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setEnabled(Z)V

    .line 225
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->genders:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatButton;->setEnabled(Z)V

    .line 228
    sget-object v0, Lcom/picacomic/fregata/c/a;->uN:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rg:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bH()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 212
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->iE:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->aa(I)V

    return-void
.end method

.method public bI()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    return-void
.end method

.method public ca()V
    .locals 3

    .line 143
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 145
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->button_register:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/RegisterFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$1;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->textView_birthday:Landroid/widget/TextView;

    new-instance v1, Lcom/picacomic/fregata/fragments/RegisterFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$2;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/picacomic/fregata/fragments/RegisterFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/picacomic/fregata/fragments/RegisterFragment$3;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dI()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\u55f6\\s*\u5494(.*)"

    .line 239
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_9

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    goto/16 :goto_1

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->cannotStartWithPica(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 250
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->passwordLength(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->passwordNotMatch(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->birthday:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->birthday:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 258
    :cond_6
    iget v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rk:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->ageNotEnough(Landroid/content/Context;)V

    goto :goto_2

    .line 261
    :cond_7
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->dJ()V

    goto :goto_2

    .line 257
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->birthday(Landroid/content/Context;)V

    goto :goto_2

    .line 243
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->usernameLength(Landroid/content/Context;)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void
.end method

.method public dJ()V
    .locals 14

    .line 273
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->C(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 276
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    new-instance v13, Lcom/picacomic/fregata/objects/requests/RegisterBody;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    .line 277
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_email:Landroid/widget/EditText;

    .line 278
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    .line 279
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->birthday:Ljava/lang/String;

    iget-object v6, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rg:Ljava/lang/String;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_1:Landroid/widget/EditText;

    .line 282
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_2:Landroid/widget/EditText;

    .line 283
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_3:Landroid/widget/EditText;

    .line 284
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_1:Landroid/widget/EditText;

    .line 285
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_2:Landroid/widget/EditText;

    .line 286
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_3:Landroid/widget/EditText;

    .line 287
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/picacomic/fregata/objects/requests/RegisterBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-interface {v0, v13}, Lcom/picacomic/fregata/b/a;->a(Lcom/picacomic/fregata/objects/requests/RegisterBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ro:Lretrofit2/Call;

    .line 291
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ro:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$4;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public dq()V
    .locals 3

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 428
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public dr()V
    .locals 4

    .line 363
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->C(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/objects/requests/SignInBody;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_email:Landroid/widget/EditText;

    .line 367
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    .line 368
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/picacomic/fregata/objects/requests/SignInBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->a(Lcom/picacomic/fregata/objects/requests/SignInBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->pU:Lretrofit2/Call;

    .line 371
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->pU:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/RegisterFragment$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$5;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rh:I

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ri:I

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rj:I

    .line 134
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->iE:Landroid/view/animation/Animation;

    .line 135
    iget v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rh:I

    iput v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rl:I

    .line 136
    iget v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ri:I

    iput v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rm:I

    .line 137
    iget v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rj:I

    iput v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->rn:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0068

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 433
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    .line 434
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ro:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->ro:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->pU:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment;->pU:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_1
    return-void
.end method
