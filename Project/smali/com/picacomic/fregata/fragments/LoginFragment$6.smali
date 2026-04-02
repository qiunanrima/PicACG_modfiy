.class Lcom/picacomic/fregata/fragments/LoginFragment$6;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mo:Ljava/lang/String;

.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;

.field final synthetic qf:I


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;Ljava/lang/String;I)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->mo:Ljava/lang/String;

    iput p3, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 377
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->mo:Ljava/lang/String;

    iget v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qf:I

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$6;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/picacomic/fregata/fragments/LoginFragment;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
