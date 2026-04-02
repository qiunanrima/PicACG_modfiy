.class Lcom/picacomic/fregata/fragments/LoginFragment$3$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment$3;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 201
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 202
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    const v2, 0x7f0f0181

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/fragments/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iput-boolean v1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pZ:Z

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^[0-9a-z_](\\.?[0-9a-z_]){1,29}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pZ:Z

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    const v2, 0x7f0f0182

    invoke-virtual {v0, v2}, Lcom/picacomic/fregata/fragments/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;->qd:Lcom/picacomic/fregata/fragments/LoginFragment$3;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iput-boolean v1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pZ:Z

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
