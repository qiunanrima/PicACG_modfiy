.class Lcom/picacomic/fregata/fragments/ChatroomFragment$42;
.super Ljava/lang/Object;
.source "ChatroomFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ChatroomFragment;->cd()V
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
.field final synthetic lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ChatroomFragment;)V
    .locals 0

    .line 2447
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

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

    .line 2491
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "dismiss progress"

    .line 2492
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 2493
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->bC()V

    .line 2494
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 2495
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

    .line 2450
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_5

    .line 2451
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2453
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    .line 2455
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2456
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    if-nez p1, :cond_0

    .line 2457
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    .line 2458
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->gson:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object v0, v0, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/e;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2460
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lm:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2461
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setName(Ljava/lang/String;)V

    .line 2463
    :cond_1
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lo:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 2464
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setCharacter(Ljava/lang/String;)V

    .line 2466
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ln:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 2467
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->ln:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setTitle(Ljava/lang/String;)V

    .line 2469
    :cond_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lr:I

    if-lez p1, :cond_4

    .line 2470
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ChatroomFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    iget p2, p2, Lcom/picacomic/fregata/fragments/ChatroomFragment;->lr:I

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/objects/UserProfileObject;->setLevel(I)V

    .line 2473
    :cond_4
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->bI()V

    goto :goto_0

    .line 2479
    :cond_5
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 2480
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2482
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    const-string p1, "dismiss progress"

    .line 2485
    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 2486
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ChatroomFragment$42;->lY:Lcom/picacomic/fregata/fragments/ChatroomFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ChatroomFragment;->bC()V

    return-void
.end method
