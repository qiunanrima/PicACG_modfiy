.class Lcom/picacomic/fregata/fragments/ProfileFragment$9;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfileFragment;->cd()V
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
        "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qW:Lcom/picacomic/fregata/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfileFragment;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

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
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 479
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 480
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->bC()V

    .line 482
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 484
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 451
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 452
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 454
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 456
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    sget-object p1, Lcom/picacomic/fregata/fragments/ProfileFragment;->TAG:Ljava/lang/String;

    const-string p2, "ProfileFragment Null Error"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->bI()V

    const-string p1, "dismiss progress"

    .line 473
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfileFragment$9;->qW:Lcom/picacomic/fregata/fragments/ProfileFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfileFragment;->bC()V

    return-void
.end method
