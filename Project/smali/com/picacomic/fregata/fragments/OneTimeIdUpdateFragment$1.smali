.class Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;
.super Ljava/lang/Object;
.source "OneTimeIdUpdateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    if-ge p2, p4, :cond_0

    .line 98
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    const p4, 0x7f0f0181

    invoke-virtual {p2, p4}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    iput-boolean p3, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qo:Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "^[0-9a-z_](\\.?[0-9a-z_]){1,29}$"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qo:Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->editText_email:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    const p4, 0x7f0f0182

    invoke-virtual {p2, p4}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$1;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    iput-boolean p3, p1, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->qo:Z

    :goto_0
    return-void
.end method
