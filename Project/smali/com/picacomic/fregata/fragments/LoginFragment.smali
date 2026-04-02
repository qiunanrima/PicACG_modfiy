.class public Lcom/picacomic/fregata/fragments/LoginFragment;
.super Lcom/picacomic/fregata/fragments/BaseFragment;
.source "LoginFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LoginFragment"


# instance fields
.field button_forgotPassword:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007a
    .end annotation
.end field

.field button_login:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007b
    .end annotation
.end field

.field button_register:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007c
    .end annotation
.end field

.field button_resendActivation:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09007d
    .end annotation
.end field

.field editText_email:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d4
    .end annotation
.end field

.field editText_password:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d5
    .end annotation
.end field

.field imageView_logo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090169
    .end annotation
.end field

.field linearLayout_loginForm:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b2
    .end annotation
.end field

.field pT:Landroid/widget/EditText;

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

.field pV:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field pW:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/PasswordResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field pX:Landroid/view/animation/Animation;

.field pY:Landroid/view/animation/Animation;

.field pZ:Z

.field qa:Ljava/lang/String;

.field qb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pZ:Z

    return-void
.end method


# virtual methods
.method public E(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/g;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pZ:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    const v0, 0x7f0f005f

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 310
    iput-boolean p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pZ:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 355
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 356
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0b003c

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a3

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0900cc

    .line 359
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p3, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Answer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 369
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f1000ca

    invoke-direct {p3, v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f016a

    .line 370
    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 371
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 372
    invoke-virtual {p3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/picacomic/fregata/fragments/LoginFragment$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/picacomic/fregata/fragments/LoginFragment$6;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;Ljava/lang/String;I)V

    const p1, 0x7f0f0176

    .line 373
    invoke-virtual {p3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/picacomic/fregata/fragments/LoginFragment$5;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$5;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    const p3, 0x7f0f009e

    .line 383
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public af(Ljava/lang/String;)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->C(Ljava/lang/String;)V

    .line 462
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/objects/requests/ForgotPasswordBody;

    invoke-direct {v1, p1}, Lcom/picacomic/fregata/objects/requests/ForgotPasswordBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->a(Lcom/picacomic/fregata/objects/requests/ForgotPasswordBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pV:Lretrofit2/Call;

    .line 464
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pV:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/LoginFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/picacomic/fregata/fragments/LoginFragment$8;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->C(Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/objects/requests/ResetPasswordBody;

    invoke-direct {v1, p1, p2, p3}, Lcom/picacomic/fregata/objects/requests/ResetPasswordBody;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->a(Lcom/picacomic/fregata/objects/requests/ResetPasswordBody;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pW:Lretrofit2/Call;

    .line 520
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pW:Lretrofit2/Call;

    new-instance p2, Lcom/picacomic/fregata/fragments/LoginFragment$9;

    invoke-direct {p2, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$9;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public bH()V
    .locals 2

    .line 316
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bH()V

    .line 317
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->linearLayout_loginForm:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->imageView_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 320
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->imageView_logo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pY:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_email:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/e;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->dq()V

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    :goto_1
    return-void
.end method

.method public bI()V
    .locals 3

    .line 340
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->bI()V

    .line 341
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/picacomic/fregata/fragments/LoginFragment;->TAG:Ljava/lang/String;

    const-string v1, "When will you run"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->linearLayout_loginForm:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->linearLayout_loginForm:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pX:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Start Animation Error"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public ca()V
    .locals 2

    .line 134
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->ca()V

    .line 137
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_login:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/LoginFragment$1;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$1;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_register:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/LoginFragment$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$2;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_forgotPassword:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/LoginFragment$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$3;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_resendActivation:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/fragments/LoginFragment$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$4;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dq()V
    .locals 3

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public dr()V
    .locals 4

    .line 399
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->C(Ljava/lang/String;)V

    .line 401
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    new-instance v1, Lcom/picacomic/fregata/objects/requests/SignInBody;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_email:Landroid/widget/EditText;

    .line 403
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    .line 404
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/picacomic/fregata/objects/requests/SignInBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-interface {v0, v1}, Lcom/picacomic/fregata/b/a;->a(Lcom/picacomic/fregata/objects/requests/SignInBody;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pU:Lretrofit2/Call;

    .line 407
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pU:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/fragments/LoginFragment$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$7;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->init()V

    .line 127
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pX:Landroid/view/animation/Animation;

    .line 128
    invoke-virtual {p0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pY:Landroid/view/animation/Animation;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005c

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pU:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pU:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pV:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pV:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pW:Lretrofit2/Call;

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment;->pW:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 610
    :cond_2
    invoke-super {p0}, Lcom/picacomic/fregata/fragments/BaseFragment;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/picacomic/fregata/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
