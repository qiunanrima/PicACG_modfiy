.class Lcom/picacomic/fregata/fragments/RegisterFragment$5;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment;->dr()V
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
.field final synthetic rp:Lcom/picacomic/fregata/fragments/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

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

    .line 416
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->bI()V

    .line 418
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->bC()V

    .line 419
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 420
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

    .line 374
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 376
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 378
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/RegisterFragment;->editText_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/e;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 379
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/SignInResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/SignInResponse;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->dq()V

    goto :goto_1

    .line 385
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 388
    :cond_2
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/picacomic/fregata/fragments/RegisterFragment$5$1;

    invoke-direct {v2, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$5$1;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment$5;)V

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/picacomic/fregata/a/g;)V

    .line 405
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->bI()V

    .line 411
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$5;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->bC()V

    return-void
.end method
