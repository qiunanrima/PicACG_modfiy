.class public Lcom/picacomic/fregata/fragments/LoginFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LoginFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private qi:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment_ViewBinding;->qi:Lcom/picacomic/fregata/fragments/LoginFragment;

    const-string v0, "field \'linearLayout_loginForm\'"

    .line 24
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->linearLayout_loginForm:Landroid/widget/LinearLayout;

    const-string v0, "field \'imageView_logo\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090169

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->imageView_logo:Landroid/widget/ImageView;

    const-string v0, "field \'button_register\'"

    .line 26
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09007c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->button_register:Landroid/widget/Button;

    const-string v0, "field \'button_login\'"

    .line 27
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09007b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->button_login:Landroid/widget/Button;

    const-string v0, "field \'editText_email\'"

    .line 28
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_email:Landroid/widget/EditText;

    const-string v0, "field \'editText_password\'"

    .line 29
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    const-string v0, "field \'button_forgotPassword\'"

    .line 30
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09007a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->button_forgotPassword:Landroid/widget/Button;

    const-string v0, "field \'button_resendActivation\'"

    .line 31
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09007d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->button_resendActivation:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment_ViewBinding;->qi:Lcom/picacomic/fregata/fragments/LoginFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/LoginFragment_ViewBinding;->qi:Lcom/picacomic/fregata/fragments/LoginFragment;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->linearLayout_loginForm:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->imageView_logo:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_register:Landroid/widget/Button;

    .line 44
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_login:Landroid/widget/Button;

    .line 45
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_email:Landroid/widget/EditText;

    .line 46
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    .line 47
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_forgotPassword:Landroid/widget/Button;

    .line 48
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->button_resendActivation:Landroid/widget/Button;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
