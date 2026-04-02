.class Lcom/picacomic/fregata/fragments/LoginFragment$4$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qe:Lcom/picacomic/fregata/fragments/LoginFragment$4;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment$4;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$4$1;->qe:Lcom/picacomic/fregata/fragments/LoginFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$4$1;->qe:Lcom/picacomic/fregata/fragments/LoginFragment$4;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment$4;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->E(Z)V

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
