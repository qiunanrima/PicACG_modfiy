.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->cM()V
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
        "Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

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
            "Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1134
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1135
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    .line 1136
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1110
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 1111
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;->getComics()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;->getComics()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1112
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 1113
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    goto :goto_0

    .line 1114
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1117
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nf:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/ComicRandomListResponse;->getComics()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1118
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ne:Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;

    if-eqz p1, :cond_2

    .line 1119
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ne:Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/ComicRecommendationRecyclerViewAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1124
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$15;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1125
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
