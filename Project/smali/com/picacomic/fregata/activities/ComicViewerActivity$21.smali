.class Lcom/picacomic/fregata/activities/ComicViewerActivity$21;
.super Ljava/lang/Object;
.source "ComicViewerActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picacomic/fregata/activities/ComicViewerActivity;->bM()V
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
        "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;


# direct methods
.method constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1477
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 1478
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1479
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bC()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 1428
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 1429
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picacomic/fregata/utils/f;->aA(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1433
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p1, p1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getLimit()I

    move-result p1

    sput p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    .line 1435
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getTotal()I

    move-result v1

    iput v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    .line 1445
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object v1, v1, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1446
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    sget v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    .line 1449
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comic Paging Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comic Paging Page Total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpingPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodeOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodeTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodePagingPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episodePagingPageTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v2, v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p1, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;

    iget-object p2, p2, Lcom/picacomic/fregata/objects/responses/GeneralResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;->getPages()Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPageData;->getDocs()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget v1, v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    invoke-interface {p1, p2, v1, v0, v0}, Lcom/picacomic/fregata/a/c;->a(Ljava/util/ArrayList;IZZ)V

    .line 1460
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iget-object p2, p2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->o(I)V

    .line 1461
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bI()V

    goto :goto_0

    .line 1465
    :cond_0
    :try_start_0
    new-instance p1, Lcom/picacomic/fregata/b/c;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/picacomic/fregata/b/c;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1466
    invoke-virtual {p1}, Lcom/picacomic/fregata/b/c;->dN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1468
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    iput-boolean v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 1472
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;->ij:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    invoke-virtual {p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bC()V

    return-void
.end method
