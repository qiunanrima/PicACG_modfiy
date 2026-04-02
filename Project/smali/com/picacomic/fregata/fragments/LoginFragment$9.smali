.class Lcom/picacomic/fregata/fragments/LoginFragment$9;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LoginFragment;->b(Ljava/lang/String;ILjava/lang/String;)V
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
        "Lcom/picacomic/fregata/objects/responses/PasswordResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qc:Lcom/picacomic/fregata/fragments/LoginFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LoginFragment;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

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
            "Lcom/picacomic/fregata/objects/responses/PasswordResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 557
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 558
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    .line 559
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bC()V

    .line 560
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 561
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
            "Lcom/picacomic/fregata/objects/responses/PasswordResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/PasswordResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 523
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 525
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/PasswordResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/PasswordResponse;->getPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->qb:Ljava/lang/String;

    .line 526
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/LoginFragment;->qb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LoginFragment;->editText_password:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 532
    :try_start_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, "text"

    .line 534
    iget-object v1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/LoginFragment;->qb:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 535
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 536
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u65b0\u5bc6\u78bc\u5df2\u8907\u88fd"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 537
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u767b\u5165\u5f8c\u8acb\u5230\u300c\u8a2d\u5b9a\u300d\u4fee\u6539\u5bc6\u78bc"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 539
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 545
    :cond_0
    :try_start_1
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bI()V

    .line 552
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LoginFragment$9;->qc:Lcom/picacomic/fregata/fragments/LoginFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LoginFragment;->bC()V

    return-void
.end method
