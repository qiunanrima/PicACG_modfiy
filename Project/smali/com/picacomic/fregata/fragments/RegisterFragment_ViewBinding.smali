.class public Lcom/picacomic/fregata/fragments/RegisterFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private rv:Lcom/picacomic/fregata/fragments/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment_ViewBinding;->rv:Lcom/picacomic/fregata/fragments/RegisterFragment;

    const-string v0, "field \'frameLayout_backgroundWhite\'"

    .line 27
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090111

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    const-string v0, "field \'editText_username\'"

    .line 28
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900e0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    const-string v0, "field \'editText_email\'"

    .line 29
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_email:Landroid/widget/EditText;

    const-string v0, "field \'editText_password\'"

    .line 30
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900db

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    const-string v0, "field \'editText_passwordConfirm\'"

    .line 31
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    const-string v0, "field \'editText_question_1\'"

    .line 32
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_1:Landroid/widget/EditText;

    const-string v0, "field \'editText_question_2\'"

    .line 33
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_2:Landroid/widget/EditText;

    const-string v0, "field \'editText_question_3\'"

    .line 34
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_3:Landroid/widget/EditText;

    const-string v0, "field \'editText_answer_1\'"

    .line 35
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_1:Landroid/widget/EditText;

    const-string v0, "field \'editText_answer_2\'"

    .line 36
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_2:Landroid/widget/EditText;

    const-string v0, "field \'editText_answer_3\'"

    .line 37
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_3:Landroid/widget/EditText;

    const-string v0, "field \'textView_birthday\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->textView_birthday:Landroid/widget/TextView;

    const-string v0, "field \'button_register\'"

    .line 39
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090083

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->button_register:Landroid/widget/Button;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Landroid/support/v7/widget/AppCompatButton;

    const-string v1, "field \'buttons_gender\'"

    const-class v2, Landroid/support/v7/widget/AppCompatButton;

    const v3, 0x7f090082

    .line 41
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_gender\'"

    const-class v2, Landroid/support/v7/widget/AppCompatButton;

    const v3, 0x7f090081

    .line 42
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "field \'buttons_gender\'"

    const-class v2, Landroid/support/v7/widget/AppCompatButton;

    const v3, 0x7f090080

    .line 43
    invoke-static {p2, v3, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    invoke-static {v0}, Lbutterknife/internal/Utils;->arrayOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/AppCompatButton;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030008

    .line 47
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/RegisterFragment;->genders:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment_ViewBinding;->rv:Lcom/picacomic/fregata/fragments/RegisterFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment_ViewBinding;->rv:Lcom/picacomic/fregata/fragments/RegisterFragment;

    .line 57
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->frameLayout_backgroundWhite:Landroid/widget/FrameLayout;

    .line 58
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_username:Landroid/widget/EditText;

    .line 59
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_email:Landroid/widget/EditText;

    .line 60
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    .line 61
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    .line 62
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_1:Landroid/widget/EditText;

    .line 63
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_2:Landroid/widget/EditText;

    .line 64
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_question_3:Landroid/widget/EditText;

    .line 65
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_1:Landroid/widget/EditText;

    .line 66
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_2:Landroid/widget/EditText;

    .line 67
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_answer_3:Landroid/widget/EditText;

    .line 68
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->textView_birthday:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->button_register:Landroid/widget/Button;

    .line 70
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->buttons_gender:[Landroid/support/v7/widget/AppCompatButton;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
