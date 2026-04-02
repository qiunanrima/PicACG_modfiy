.class Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;
.super Ljava/lang/Object;
.source "ComicDownloadFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->bN()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDownloadFragment;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 483
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->bC()V

    .line 485
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 437
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_7

    .line 439
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 441
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getTotal()I

    move-result v2

    iput v2, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->episodeTotal:I

    const/4 p1, 0x0

    .line 442
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 443
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v2, v2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    .line 444
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/picacomic/fregata/utils/b;->ay(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 446
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 447
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 448
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    goto :goto_1

    .line 450
    :cond_0
    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 451
    invoke-virtual {v2, v5}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    goto :goto_2

    .line 453
    :cond_1
    invoke-virtual {v2, v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    goto :goto_2

    .line 449
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    .line 456
    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    .line 457
    iget-object v3, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object v3, v3, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 459
    :cond_4
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getTotal()I

    move-result p1

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p2, p2, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 460
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nk:Z

    .line 466
    :cond_5
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_6

    .line 467
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 468
    :cond_6
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iget p2, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nm:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nm:I

    goto :goto_3

    .line 471
    :cond_7
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {v1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    :goto_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    iput-boolean v0, p1, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->nu:Z

    .line 478
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDownloadFragment$5;->nw:Lcom/picacomic/fregata/fragments/ComicDownloadFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDownloadFragment;->bC()V

    return-void
.end method
