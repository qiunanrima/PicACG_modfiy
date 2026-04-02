.class Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;
.super Ljava/lang/Object;
.source "ProfilePopupFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->dD()V
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
.field final synthetic rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 430
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 433
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->bI()V

    .line 434
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0203

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

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

    .line 411
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0204

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0203

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 419
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$2;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->bI()V

    return-void
.end method
