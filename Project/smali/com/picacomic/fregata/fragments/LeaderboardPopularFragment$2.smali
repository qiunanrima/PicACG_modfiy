.class Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;
.super Ljava/lang/Object;
.source "LeaderboardPopularFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->dp()V
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
        "Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

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
            "Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->bC()V

    .line 295
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 297
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 258
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 259
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;->getComics()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 262
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/LeaderboardResponse;->getComics()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 279
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->bC()V

    .line 286
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment$2;->pN:Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardPopularFragment;->bI()V

    return-void
.end method
