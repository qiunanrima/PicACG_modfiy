.class Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;
.super Ljava/lang/Object;
.source "ComicDetailFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/fragments/ComicDetailFragment;->A(Z)V
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
.field final synthetic nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

.field final synthetic nr:Z


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/fragments/ComicDetailFragment;Z)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iput-boolean p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nr:Z

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

    .line 933
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 934
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    .line 935
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p2}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 936
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
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

    .line 867
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    .line 873
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

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

    if-lez p1, :cond_7

    .line 875
    iget-boolean p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nr:Z

    if-eqz p1, :cond_0

    .line 876
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 878
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getTotal()I

    move-result v1

    iput v1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->episodeTotal:I

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 880
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 881
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v3, v3, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v3, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    .line 882
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v4, v4, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v4, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/picacomic/fregata/utils/b;->ay(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    move-result-object v4

    const/4 v5, 0x4

    if-eqz v4, :cond_4

    .line 884
    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v6

    if-eq v6, v0, :cond_3

    .line 885
    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 886
    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    goto :goto_1

    .line 888
    :cond_1
    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getStatus()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 889
    invoke-virtual {v3, v7}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    goto :goto_2

    .line 891
    :cond_2
    invoke-virtual {v3, p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    goto :goto_2

    .line 887
    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 895
    iget-object v6, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-static {v6}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->b(Lcom/picacomic/fregata/fragments/ComicDetailFragment;)Lcom/picacomic/fregata/objects/ComicListObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/ComicListObject;->getComicId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 897
    invoke-virtual {v6}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeOrder()I

    move-result v6

    invoke-virtual {v4}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getEpisodeOrder()I

    move-result v4

    if-ne v6, v4, :cond_5

    .line 898
    invoke-virtual {v3, v5}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setStatus(I)V

    const/4 v2, 0x1

    .line 903
    :cond_5
    invoke-virtual {v3, p1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->setSelected(Z)V

    .line 904
    iget-object v4, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v4, v4, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 907
    :cond_6
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getTotal()I

    move-result p2

    iget-object v1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object v1, v1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->ig:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 908
    iget-object p2, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iput-boolean p1, p2, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nk:Z

    .line 909
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_moreEpisode:Landroid/widget/Button;

    if-eqz p1, :cond_7

    .line 910
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->button_moreEpisode:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 916
    :cond_7
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->recyclerView_episode:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_8

    .line 917
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget-object p1, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nd:Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/EpisodeRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 919
    :cond_8
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    iget p2, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nm:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->nm:I

    goto :goto_3

    .line 922
    :cond_9
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {v0}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 923
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 925
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 928
    :goto_3
    iget-object p1, p0, Lcom/picacomic/fregata/fragments/ComicDetailFragment$10;->nq:Lcom/picacomic/fregata/fragments/ComicDetailFragment;

    invoke-virtual {p1}, Lcom/picacomic/fregata/fragments/ComicDetailFragment;->bC()V

    return-void
.end method
