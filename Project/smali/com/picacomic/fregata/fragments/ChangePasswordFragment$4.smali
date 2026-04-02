.class Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChangePasswordFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kL:Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_passwordConfirm:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$4;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kL:Z

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
