.class Lcom/picacomic/fregata/fragments/ChangePinFragment$1;
.super Ljava/lang/Object;
.source "ChangePinFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChangePinFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChangePinFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pin:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pin:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    const v1, 0x7f0f0075

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/fragments/ChangePinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->kK:Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->editText_pin:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePinFragment$1;->kQ:Lcom/picacomic/fregata/fragments/ChangePinFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ChangePinFragment;->kK:Z

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
