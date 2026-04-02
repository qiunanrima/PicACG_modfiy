.class Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 89
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kK:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-boolean p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->kL:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment$1;->kN:Lcom/picacomic/fregata/fragments/ChangePasswordFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/picacomic/fregata/fragments/ChangePasswordFragment;->L(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
