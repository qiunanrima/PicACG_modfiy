.class Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;
.super Ljava/lang/Object;
.source "ProfilePopupFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->cd()V
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
.field final synthetic rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ProfilePopupFragment;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

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

    .line 580
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 581
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 583
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->bI()V

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

    .line 549
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 552
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/UserProfileResponse;->getUser()Lcom/picacomic/fregata/objects/UserProfileObject;

    move-result-object p2

    iput-object p2, p1, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->jW:Lcom/picacomic/fregata/objects/UserProfileObject;

    goto :goto_0

    .line 569
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 572
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ProfilePopupFragment$6;->rb:Lcom/picacomic/fregata/fragments/ProfilePopupFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ProfilePopupFragment;->bI()V

    return-void
.end method
