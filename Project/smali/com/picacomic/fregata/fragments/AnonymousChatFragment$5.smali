.class Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;
.super Ljava/lang/Object;
.source "AnonymousChatFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->cd()V
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
.field final synthetic kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/AnonymousChatFragment;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

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

    .line 517
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 518
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->bC()V

    .line 520
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 521
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
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/UserProfileResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 486
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 487
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 489
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 490
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->getUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kc:Ljava/lang/String;

    .line 491
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jY:Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->kc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/adapters/AnonymousChatRecyclerViewAdapter;->setUserId(Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 496
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    if-nez p1, :cond_1

    .line 497
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->gson:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 499
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->bI()V

    goto :goto_0

    .line 505
    :cond_2
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 508
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    const-string p1, "dismiss progress"

    .line 511
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/AnonymousChatFragment$5;->kg:Lcom/picacomic/fregata/fragments/AnonymousChatFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/AnonymousChatFragment;->bC()V

    return-void
.end method
