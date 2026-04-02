.class Lcom/picacomic/fregata/activities/ComicViewerActivity$22;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->bN()V
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
.field final synthetic ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V
    .locals 0

    .line 1501
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

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

    .line 1537
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1538
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bC()V

    .line 1539
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;)V

    .line 1540
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
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1504
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 1510
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

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

    if-lez p1, :cond_2

    .line 1512
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getTotal()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    .line 1513
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getPage()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    .line 1514
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getPages()I

    move-result v0

    iput v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hJ:I

    const/4 p1, 0x0

    .line 1516
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v0, v0, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;->getEps()Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hA:Lcom/picacomic/fregata/adapters/c;

    invoke-virtual {p1}, Lcom/picacomic/fregata/adapters/c;->notifyDataSetChanged()V

    .line 1520
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v0, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1526
    :cond_1
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1527
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1529
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1532
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bC()V

    return-void
.end method
