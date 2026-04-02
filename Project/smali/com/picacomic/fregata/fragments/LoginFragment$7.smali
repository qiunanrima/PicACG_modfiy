.class Lcom/picacomic/fregata/fragments/LoginFragment$7;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->dr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
        "Lcom/picacomic/fregata/objects/responses/SignInResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/SignInResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 450
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 451
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    .line 452
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bC()V

    .line 453
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 454
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/SignInResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/SignInResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 410
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 412
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 414
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 415
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/SignInResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/SignInResponse;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->dq()V

    goto :goto_1

    .line 422
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/picacomic/fregata/fragments/LoginFragment$7$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/LoginFragment$7$1;-><init>(Lcom/picacomic/fregata/fragments/LoginFragment$7;)V

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/picacomic/fregata/a/g;)V

    .line 439
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    .line 445
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$7;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bC()V

    return-void
.end method
