.class Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment$4;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment$4;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;->rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;->rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;->rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 301
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;->rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;->rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 303
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;->rs:Lcom/picacomic/fregata/fragments/RegisterFragment$4;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->dr()V

    return-void
.end method
