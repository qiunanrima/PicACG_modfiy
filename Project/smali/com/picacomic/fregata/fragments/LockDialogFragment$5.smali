.class Lcom/picacomic/fregata/fragments/LockDialogFragment$5;
.super Ljava/lang/Object;
.source "LockDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LockDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LockDialogFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string p1, ""

    const/4 v0, 0x0

    move-object v1, p1

    const/4 p1, 0x0

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v2, v2, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LockDialogFragment;->dismiss()V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 175
    :goto_1
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$5;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_4
    :goto_2
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
