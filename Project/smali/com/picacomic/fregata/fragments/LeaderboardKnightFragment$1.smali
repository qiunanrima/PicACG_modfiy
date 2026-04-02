.class Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;
.super Ljava/lang/Object;
.source "LeaderboardKnightFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->do()V
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
        "Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

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
            "Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->bC()V

    .line 151
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    .line 153
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->bI()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 115
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;->getUsers()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/LeaderboardKnightResponse;->getUsers()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 135
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->bC()V

    .line 142
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment$1;->pG:Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/LeaderboardKnightFragment;->bI()V

    return-void
.end method
