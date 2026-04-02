.class Lcom/picacomic/fregata/fragments/LockDialogFragment$3;
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

    .line 111
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$3;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LockDialogFragment$3;->pS:Lcom/picacomic/fregata/fragments/LockDialogFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LockDialogFragment;->pP:[Landroid/widget/EditText;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
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
