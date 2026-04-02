.class Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;
.super Ljava/lang/Object;
.source "OneTimeIdUpdateFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->m(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

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
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 244
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->bC()V

    .line 246
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 248
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u66f4\u65b0\u6210\u529f\uff01"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 224
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/picacomic/fregata/activities/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 230
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->bI()V

    const-string p1, "dismiss progress"

    .line 237
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment$4;->qp:Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/OneTimeIdUpdateFragment;->bC()V

    return-void
.end method
