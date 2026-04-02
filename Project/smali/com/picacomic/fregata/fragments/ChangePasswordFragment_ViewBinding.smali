.class public Lcom/picacomic/fregata/fragments/ChangePasswordFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChangePasswordFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private kP:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment_ViewBinding;->kP:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    const-string v0, "field \'toolbar\'"

    .line 24
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f09030d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v0, "field \'editText_password\'"

    .line 25
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    const-string v0, "field \'editText_passwordConfirm\'"

    .line 26
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0900bf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    const-string v0, "field \'checkBox_showPassword\'"

    .line 27
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f0900a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->checkBox_showPassword:Landroid/widget/CheckBox;

    const-string v0, "field \'button_changePassword\'"

    .line 28
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090034

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->button_changePassword:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment_ViewBinding;->kP:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment_ViewBinding;->kP:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    .line 38
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 39
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    .line 40
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    .line 41
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->checkBox_showPassword:Landroid/widget/CheckBox;

    .line 42
    iput-object v1, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->button_changePassword:Landroid/widget/Button;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
