.class Lcom/picacomic/fregata/fragments/LoginFragment$8;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->af(Ljava/lang/String;)V
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
        "Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic mo:Ljava/lang/String;

.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iput-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->mo:Ljava/lang/String;

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
            "Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 505
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    .line 507
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bC()V

    .line 508
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 467
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 471
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x3

    .line 472
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    .line 487
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->getQuestion1()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 483
    :pswitch_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->getQuestion3()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    .line 479
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ForgotPasswordResponse;->getQuestion2()Ljava/lang/String;

    move-result-object p1

    .line 489
    :goto_0
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->mo:Ljava/lang/String;

    invoke-virtual {p2, v1, v0, p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 493
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    .line 500
    :goto_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$8;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bC()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
