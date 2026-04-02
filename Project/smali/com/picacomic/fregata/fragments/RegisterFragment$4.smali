.class Lcom/picacomic/fregata/fragments/RegisterFragment$4;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/RegisterFragment;->dJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic rp:Lcom/picacomic/fregata/fragments/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/RegisterFragment;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

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
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->bC()V

    .line 356
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/RegisterResponse;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 297
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800ff

    const v2, 0x7f0f007a

    const v3, 0x7f0f0079

    new-instance v4, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;

    invoke-direct {v4, p0}, Lcom/picacomic/fregata/fragments/RegisterFragment$4$1;-><init>(Lcom/picacomic/fregata/fragments/RegisterFragment$4;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->showCustomAlertDialog(Landroid/content/Context;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 319
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/RegisterFragment$4;->rp:Lcom/picacomic/fregata/fragments/RegisterFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/RegisterFragment;->bC()V

    return-void
.end method
