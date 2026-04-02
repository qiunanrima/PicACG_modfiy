.class Lcom/picacomic/fregata/fragments/LoginFragment$3;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const v2, 0x7f0b003c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    const v2, 0x7f0900cc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    .line 187
    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->pT:Landroid/widget/EditText;

    new-instance v2, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$3$1;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment$3;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$3;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v2}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1000ca

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f016a

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/LoginFragment$3$3;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$3$3;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment$3;)V

    const v1, 0x7f0f0176

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/picacomic/fregata/fragments/LoginFragment$3$2;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$3$2;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment$3;)V

    const v1, 0x7f0f009e

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
